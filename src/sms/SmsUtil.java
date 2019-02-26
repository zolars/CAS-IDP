package sms;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import java.io.UnsupportedEncodingException;


public class SmsUtil {
    private static int maxSmslength=70; //70 bytes
    private static char symbol1 = 13; //\r
    private static String command2="AT+WKMOD=\"cmd\""+String.valueOf(symbol1);
    private static String command3="AT+S"+String.valueOf(symbol1);
    private static SmsClientHandler sch=null;
    private static ChannelHandlerContext ctx=null;

    //短信的内容限制为70 bytes，加锁，因为每次只能发送一条，其他的要等待
    public static synchronized void sendSms(String phone,String msg){
        try {
            while(msg.getBytes("GB2312").length>maxSmslength){
                String current=msg.substring(0,maxSmslength/2);
                send(phone,current);
                msg=msg.substring(maxSmslength/2);
                try {
                    Thread.sleep(10000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            if(msg!=null && msg.length()>0){
                send(phone,msg);
            }
        }
        catch (UnsupportedEncodingException e){
            e.printStackTrace();
        }
    }

    public static synchronized boolean send(String phone,String msg){
        String command5_head="AT+SMSEND=\"" + phone + "\",3,\"";
        String command5_tail="\""+String.valueOf(symbol1);

        ByteBuf bf=ctx.alloc().buffer();
        bf.writeBytes(command5_head.getBytes());
        try {
            bf.writeBytes(msg.getBytes("GB2312"));  //message encoded in GB2312
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        bf.writeBytes(command5_tail.getBytes());
        ctx.writeAndFlush(bf);
        return true;

    }

    // set duanxinmao when IDP starting
    public static  boolean set(int index){
        ByteBuf bf=ctx.alloc().buffer();
        switch (index){
            case 2:
                bf.writeBytes(command2.getBytes());
                ctx.writeAndFlush(bf);
                break;
            case 3:
                bf.writeBytes(command3.getBytes());
                ctx.writeAndFlush(bf);
                break;
            default:
                ;
        }
        return true;

    }

    public static void init(SmsClientHandler sch,ChannelHandlerContext ctx) {
        SmsUtil.sch=sch;
        SmsUtil.ctx = ctx;
    }

    public static SmsClientHandler getSch() {
        return sch;
    }
}
