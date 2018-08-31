package Util;

import java.security.MessageDigest;

public class test
{
    public static void main(String[] args){
        try{
            String password = "123456";
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] bytes = md.digest(password.getBytes("utf-8"));
            String passwd = ToHex.toHex(bytes);
            System.out.println("" + passwd);

          /*  String password2 = "good";
            MessageDigest md2 = MessageDigest.getInstance("MD5");
            byte[] bytes2 = md2.digest(password2.getBytes("utf-8"));
            String passwd2 = ToHex.toHex(bytes2);
            System.out.println("" + passwd2);*/
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
