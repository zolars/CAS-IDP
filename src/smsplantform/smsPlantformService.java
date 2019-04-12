package smsplantform;

import Util.HBSessionDaoImpl;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.Devices;

import java.io.*;
import java.net.Socket;


public class smsPlantformService extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String execute(String bwt, String sbname, String sbip, String time, String level, String status, String gjpro, String gjexp,
                          String zbj, String content, String ext1, String ext2, String ext3) throws Exception {
        Socket socket = null;
        try {

            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
            Devices dv = (Devices) hbsessionDao.getFirst("FROM Devices WHERE type ='SMS'");

            String sockertip = dv.getiPaddress();
            String socketpoertss = dv.getPort();
            Integer socketpoert = Integer.parseInt(socketpoertss);

            // socket建立
            // socket = new Socket("36.0.20.10", 9773);
            socket = new Socket(sockertip, socketpoert);
            PrintWriter writer = new PrintWriter(new OutputStreamWriter(socket.getOutputStream(), "GBK"));
            BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream(), "GBK"));
            //String dataToSend = "ECMP_DCP|1002|XXXXAP4530##192.168.1.1##1258359994000##5##OPEN##UPS##ups1##inputVoltage##ups1的输入电压异常，当前值99##Ext1##Ext2##Ext3\n";
            //String dataToSend = "ECMP_DCP|1002|spcnapp021210##10.100.62.184##1516847200##5##OPEN##DTJDBC##esb##JDBCCurrConnCnt## JDBC Connection Pool Active Connections Current Count.Was 1.00num but should be lower than 1.00num. ##Ext1##Ext2##Ext3\n";

            String dataToSend = bwt + "|" + sbname + "##" + sbip + "##" + time + "##" + level + "##" + status + "##" + gjpro + "##" + gjexp + "##" + zbj + "##" + content + "##" + ext1 + "##" + ext2 + "##" + ext3 + "\n";

            // System.out.println(dataToSend);
            writer.print(dataToSend);
            writer.flush();
            result = in.readLine();
            writer.close();
            in.close();
            socket.close();

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "error";
        } finally {
            socket.close();
        }
        return "success";
    }

}
