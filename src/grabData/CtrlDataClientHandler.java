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

    // 监测点id
    private String did;

    public CtrlDataClientHandler(String did) {
        this.did = did;
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        // record ctx in DeviceManager
        System.out.println(did + "-connected");
        DeviceManager.getCtxMap().put(this.did + "-6", ctx);

        ByteBuf sendMsg = ctx.alloc().buffer();

        sendMsg.writeBytes(createMsg(0x01, 0x01, 0x00, 0x23));
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);

        sendMsg.writeBytes(createMsg(0x01, 0x04, 0x00, 0x3A));
        sc = (SocketChannel) ctx.channel();
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
        // 数据累积
        if (recMsg.readableBytes() < 9) { // TODO: 2019/3/14 change the number "9" in order to receive all msg
            return;
        }
        dataResolve(recMsg);
        recMsg.clear();
        // sleep 1s
        Thread.sleep(1000);

        ByteBuf sendMsg = ctx.alloc().buffer();

        sendMsg.writeBytes(createMsg(0x01, 0x01, 0x00, 0x23));
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);

        sendMsg.writeBytes(createMsg(0x01, 0x04, 0x00, 0x3A));
        sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }

    // readLength单位是2字节
    public byte[] createMsg(int slaveId, int functionCode, int address, int readLength) {
        byte[] msg = new byte[6];

        msg[0] = ((byte) slaveId);
        msg[1] = ((byte) functionCode);
        msg[2] = ((byte) (0x00 >> 8));
        msg[3] = ((byte) (address & 0xFF));
        msg[4] = ((byte) (0x00 >> 8));
        msg[5] = ((byte) (readLength & 0xFF));

        byte[] sbuf = CRC16M.getSendBuf(CRC16M.getBufHexStr(msg));

        return sbuf;
    }

    public void dataResolve(ByteBuf buf) {
        byte[] StatusBytes = new byte[5];
        buf.getBytes(3, StatusBytes, 0, StatusBytes.length); // TODO: 2019/3/14
        System.out.println(did + "-线圈状态：" + ByteBufUtil.hexDump(StatusBytes));

        byte[] parmBytes = new byte[5];
        //  float temp = 0;
        //  buf.skipBytes(11); //跳过前9个字节，与数据无关
        //  for (int i = addr / 2; i < (len + addr) / 2; i++) {
        //      temp = Float.intBitsToFloat((int) buf.readUnsignedInt());
        //      map.put(name[count], temp * factor[count]);
        //      count++;
        //  }


        CtrlSave.ctrlSave(did, StatusBytes);
        CtrlSave.setCtrlMap(did, StatusBytes, parmBytes); // save ctrl online data
    }

    /**
     * 客户端 失去连接
     */
    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        // remove ctrl data
        CtrlSave.getEventCtrlMap().remove(this.did);
        // remove ctx in DeviceManager
        DeviceManager.getCtxMap().remove(this.did + "-6");
    }
}
