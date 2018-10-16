package sms;

import java.util.List;

public class SmsAlarm {

    public static void excuteSmsAlarm(String phone, String msg) {

        List<String> comlist = Sms.getComPort();

        for (int i = 0; i < comlist.size(); i++) {
            System.out.println("正在通过端口" + comlist.get(i) + "向手机号为" + phone + "的用户发送短信，短信内容为：" + msg);
            String comstr = comlist.get(i);
            Sms.sendSms(phone, msg, comstr);
        }
    }
}
