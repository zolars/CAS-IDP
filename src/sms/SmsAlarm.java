package sms;

import java.util.List;

public class SmsAlarm {

    private static String phone;
    private static String msg;

    public static void SmsAlarm() {
    }

    public static void excuteSmsAlarm(String phone, String msg) {

        List<String> comlist = Sms.getComPort();

        for(int i = 0; i < comlist.size(); i++){
            System.out.println("正在通过端口"+comlist.get(i)+"发送短信");
            String comstr = comlist.get(i);
            Sms.sendSms(phone, msg, comstr);
            // Sms.sendSms("18511587339", "test18511587339", comstr);
        }
    }
}
