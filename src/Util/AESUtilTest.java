package Util;

import org.apache.commons.lang3.ObjectUtils;

public class AESUtilTest {

    private static String key = "12345678";

    public static void main(String[] args) throws Exception{
        String msg = "root";
        System.out.println("加密前："+msg);
        byte[] encryptBytes = AESUtil.encrypt(msg.getBytes(),key.getBytes());

        byte[] s = new byte[8];
        s[0] = (byte)23;
        s[1] = (byte)38;
        s[2] = (byte)64;
        s[3] = (byte)-35;
        s[4] = (byte)80;
        s[5] = (byte)-128;
        s[6] = (byte)118;
        s[7] = (byte)37;

        System.out.println("加密后："+new String(encryptBytes));
        byte[] deMsgBytes = AESUtil.decrypt(s,key.getBytes());
        System.out.println("解密后："+new String(deMsgBytes));
    }
}
