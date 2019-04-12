package sms;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

public class SmsClientHandler extends ChannelInboundHandlerAdapter {
    private ByteBuf rec = Unpooled.buffer();

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        //System.out.println("active");
        SmsUtil.init(this, ctx);
        SmsUtil.set(2);
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        super.channelRead(ctx, msg);
//        //data buffering
//        ByteBuf bf = (ByteBuf) msg;
//        this.rec.writeBytes(bf);
//
//        bf.release();
//        String recStr = new String(rec.array());
//
//        int index1 = recStr.indexOf("\r\n");
//        int index2 = recStr.indexOf("\r\n", index1 + 2);
//        if (index1 == -1 || index2 == -1) {
//            return;
//        }
//
//        if (this.status == 2) { //set duanxinmao
//            if (recStr.indexOf("OK")!=-1){
//                //System.out.println("command2:OK");
//                //sms.SmsUtil.set(3);
//                this.status=3;
//                Thread.sleep(10000);
//                this.status=5;
//            }
//            else{
//                System.out.println("command2:error");
//            }
//
//
//        }
//        else if(this.status==3){
//            if (recStr.indexOf("OK")!=-1){
//                //System.out.println("command3:OK");
//                this.status=5;
//            }
//            else{
//                System.out.println("command3:error");
//            }
//        }
//        else {
//        }
    }
}

