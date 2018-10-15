package sms;

import java.util.List;

public class Test {
    public static void main(String[] args) {

        /*String s="3E1E9E9F";
        Float value = Float.intBitsToFloat(Integer.valueOf(s.trim(), 16));
        System.out.println(value);

        Float f=0.15490197f;
        System.out.println(Integer.toHexString(Float.floatToIntBits(f)));

        System.out.println("99999999");
*/

        List<String> comlist = Sms.getComPort();

        for (int i = 0; i < comlist.size(); i++) {
            System.out.println("正在通过端口" + comlist.get(i) + "发送短信");
            String comstr = comlist.get(i);
            Sms.sendSms("18511587339", "test18511587339", comstr);
        }

    }
}
