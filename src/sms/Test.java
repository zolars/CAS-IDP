package sms;

import java.util.List;

public class Test {
    public static void main(String[] args) {

        List<String> comlist = Sms.getComPort();

        for(int i = 0; i < comlist.size(); i++){
            System.out.println("正在通过端口"+comlist.get(i)+"发送短信");
            String comstr = comlist.get(i);
            Sms.sendSms("18511587339", "test18511587339", comstr);
        }

//		new Thread(new Runnable() {
//
//			@Override
//			public void run() {
//				Sms.sendSms("13311220311", str1, "COM6");
//			}
//		}).start();
//		new Thread(new Runnable() {
//
//			@Override
//			public void run() {
//				Sms.sendSms("13311220311", str2, "COM6");
//			}
//		}).start();
    }
}
