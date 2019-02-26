package grabData;

import Util.CRC16M;
import deviceJobManager.DeviceManager;
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
    private String did;


    public CtrlDataClientHandler(String did) {
        this.did = did;
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        //record ctx in DeviceManager
        System.out.println(did+"-connected");
        DeviceManager.getCtxMap().put(this.did+"-6",ctx);

        ByteBuf sendMsg = ctx.alloc().buffer();

        sendMsg.writeBytes(createMsg(1, 1, 0, 34));
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);
    }


    @Override
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        recMsg = ctx.alloc().buffer();
    }

    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        recMsg.release();
        recMsg = null;
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        ByteBuf buf = (ByteBuf) msg;
        recMsg.writeBytes(buf);
        buf.release();
        //数据累积
        if (recMsg.readableBytes() < 9) {
            return;
        }
        dataResolve(recMsg);
        recMsg.clear();
        // sleep 1s
        Thread.sleep(1000);

        ByteBuf sendMsg = ctx.alloc().buffer();

        sendMsg.writeBytes(createMsg(1, 1, 0, 34));
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
        byte[] msg = new byte[6];

        msg[0] = ((byte) 0x01);
        msg[1] = ((byte) 0x01);
        msg[2] = ((byte) (0x00 >> 8));
        msg[3] = ((byte) (0x00 & 0xFF));
        msg[4] = ((byte) (0x00 >> 8));
        msg[5] = ((byte) (0x23 & 0xFF));

        byte[] sbuf = CRC16M.getSendBuf(CRC16M.getBufHexStr(msg));

        return sbuf;
    }

    public void dataResolve(ByteBuf buf) {
//        buf.skipBytes(3); //跳过前9个字节，与数据无关
//        String data = ByteBufUtil.hexDump(buf);
//
//        CtrlSave.ctrlSave(did, data);
        byte[] bytes=new byte[5];
        buf.getBytes(3,bytes,0,bytes.length);
        System.out.println(did+"-线圈状态："+ByteBufUtil.hexDump(bytes));
        CtrlSave.ctrlSave2(did,bytes);

        CtrlSave.setCtrlMap(did,bytes); //save ctrl online data
    }

    /**
     * 客户端 失去连接
     */
    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception
    {
        //remove ctrl data
        CtrlSave.getEventCtrlMap().remove(this.did);
        //remove ctx in DeviceManager
        DeviceManager.getCtxMap().remove(this.did+"-6");
    }
}
