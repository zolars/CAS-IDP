package grabData;

import hibernatePOJO.DictionaryCtrl;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.SocketChannel;

import java.util.List;


class CtrlDataClientHandler extends ChannelInboundHandlerAdapter {
    private List<DictionaryCtrl> dic = null;

    private ByteBuf recMsg = null;

    //监测点id
    private String did = "";

    public CtrlDataClientHandler(String did) {
        this.did = did;
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        System.out.println("Ctrl建立连接");
        dic = CtrlSave.getDic();

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(1, 1, 4, 32));
        System.out.println("send:" + ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);
    }


    @Override
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        // super.handlerAdded(ctx);
        recMsg = ctx.alloc().buffer();
    }

    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        // super.handlerRemoved(ctx);
        recMsg.release();
        recMsg = null;
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        // System.out.println("Recv:" + ByteBufUtil.hexDump(recMsg));

        ByteBuf buf = (ByteBuf) msg;
        recMsg.writeBytes(buf);
        buf.release();
        //数据累积
        if (recMsg.readableBytes() < 9) {
            return;
        }
        dataResolve(recMsg);
        recMsg.clear();

        // TODO: 2018/9/23 0023
        // CtrlSave.ctrlSave(did, /* String */ );

        // return;

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(1, 1, 4, 32));
        // System.out.println("send:" + ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }

    //readLength单位是2字节
    public byte[] createMsg(int slaveId, int functionCode, int address, int readLength) {
        byte[] msg = new byte[12];
        msg[0] = 0;
        msg[1] = 0;
        msg[2] = 0;
        msg[3] = 0;
        msg[4] = 0;
        msg[5] = 6;
        msg[6] = ((byte) slaveId);
        msg[7] = ((byte) functionCode);
        msg[8] = ((byte) (address >> 8));
        msg[9] = ((byte) (address & 0xFF));
        msg[10] = ((byte) (readLength >> 8));
        msg[11] = ((byte) (readLength & 0xFF));
        return msg;
    }

    public void dataResolve(ByteBuf buf) {
        int count = 4;

        System.out.println("buf" + ByteBufUtil.hexDump(buf));


        buf.skipBytes(9);//跳过前9个字节，与数据无关
        String data = ByteBufUtil.hexDump(buf);

        System.out.println("data: " + data);

        for (int i = 0; i < data.length(); i += 2) {
            String binary = Integer.toBinaryString(
                    Integer.valueOf(data.substring(i, i + 2), 16)
            );

            System.out.println("Binary: "+binary);

            for (int j = 0; j < binary.length(); j++) {
                if (binary.length() - j >= 0) {
                    if(binary.charAt(binary.length() - j) == '1'){
                        CtrlSave.ctrlSave(did, count + j);
                        System.out.println(count + j);
                    }

                }
            }
            count += 8;
        }

    }
}
