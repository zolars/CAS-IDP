package sms;

import gnu.io.CommPortIdentifier;

import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

/**
 * 短信息发送
 */
public class Sms {

    private CommonSms commonsms;
    private static char symbol1 = 13; //\r

    private void SendSms(Port myport) {
        if (!myport.isIsused()) {
            System.out.println(myport.getCOMname() + "通讯端口未正常打开!");
            return;
        }

        String Command2 = "AT+WKMOD=\"cmd\"" + String.valueOf(symbol1);

        String Command3 = "AT+S" + String.valueOf(symbol1);

        String Command5 = "AT+SMSEND=\"" + commonsms.getRecver() + "\",3,\"" + commonsms.getSmstext() + "\"" + String.valueOf(symbol1);

        try {
            String Return2 = myport.sendAT(Command2);

            if (Return2.indexOf("OK", 0) != -1) {
                System.out.println("AT+WKMOD=cmd 成功");
                String Return3 = myport.sendAT(Command3);

                if (Return3.indexOf("OK", 0) != -1) {
                    System.out.println("AT+S 成功");
                    //Thread.sleep(2000);  //设备重启时间，暂定为3s
                    String Return5 = myport.sendAT(Command5);

                    if (Return5.indexOf("OK", 0) != -1) {
                        System.out.println("发送短信 成功" + Return5);
                    } else {
                        System.out.println("发送短信 失败" + Return5);
                    }
                } else {
                    System.out.println("AT+S 失败;");
                }
            } else {
                System.out.println("AT+WKMOD=cmd 失败;");
            }

        } catch (RemoteException e) {
            e.printStackTrace();
        }// catch (InterruptedException e) {
        //    e.printStackTrace();
        //}
    }

    /**
     * 号码，内容，发送短信息
     *
     * @param phone
     * @param countstring
     * @throws Exception
     */
    private static void send(String phone, String countstring, String com) {
        Sms s = new Sms();
        CommonSms cs = new CommonSms();
        cs.setRecver(phone);
        cs.setSmstext(countstring);
        s.setCommonsms(cs);
        Port myort = new Port(com);
        s.SendSms(myort);
        myort.close();
    }

    //短信的字符限制为70，加锁，因为每次只能发送一条，其他的要等待
    public static synchronized void sendSms(String phone, String str, String com) {
        if (str.length() > 70) {
            String done = str.substring(0, 70);
            Sms.send(phone, done, com);
            String todo = str.substring(70, str.length());
            Sms.sendSms(phone, todo, com);
        } else {
            Sms.send(phone, str, com);
        }
    }

    private void setCommonsms(CommonSms commonsms) {
        this.commonsms = commonsms;
    }

    //获取计算机所有可用端口
    public static List<String> getComPort() {

        Enumeration enumeration = CommPortIdentifier.getPortIdentifiers();
        CommPortIdentifier portId;
        List<String> list = new ArrayList<String>();
        while (enumeration.hasMoreElements()) {
            portId = (CommPortIdentifier) enumeration.nextElement();
            if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {
                list.add(portId.getName());
            }
        }
        return list;
    }
}