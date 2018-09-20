package grabData;

import hibernatePOJO.*;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.SocketChannel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

class TempDataClientHandler extends ChannelInboundHandlerAdapter {
    private Map<String, Float> map = null;

    private ByteBuf recMsg = null;

    //监测点id
    private String did = "";

    public TempDataClientHandler(String did) {
        this.did = did;
        this.map = new HashMap<String, Float>();
        TemperatureSave.getTempDataMap().put(did, new TemperatureMonitor()); //把实时数据map的引用存起来
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        System.out.println("Temp建立连接");

        String address = ctx.channel().remoteAddress().toString().replace("/", "");
        // System.out.println("ip+端口为：" + address + "开始建立通讯");

        ByteBuf sendMsg = ctx.alloc().buffer(8);

        sendMsg.writeBytes(createMsg());
        // System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));//打印发送数据
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
        ByteBuf buf = (ByteBuf) msg;
        recMsg.writeBytes(buf);
        buf.release();
        //数据累积
        if (recMsg.readableBytes() < 9) {
            return;
        }
        dataResolve(recMsg);
        recMsg.clear();

        TemperatureSave.tempSave(did, map);

        ByteBuf sendMsg = ctx.alloc().buffer(8);

        sendMsg.writeBytes(createMsg());
        // System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }

    //readLength单位是2字节
    public byte[] createMsg() {
        byte[] msg = "10300001000295CB".getBytes();
        return msg;
    }

    public static int byteArrayToInt(byte[] b) {
        return   b[3] & 0xFF |
                (b[2] & 0xFF) << 8 |
                (b[1] & 0xFF) << 16 |
                (b[0] & 0xFF) << 24;
    }


    public void dataResolve(ByteBuf buf) {
        byte[] temperatureByte = {buf.getByte(3), buf.getByte(4)};
        byte[] humidityByte = {buf.getByte(5), buf.getByte(6)};
        float temperature = (float) byteArrayToInt(temperatureByte) / 10;
        float humidity = (float) byteArrayToInt(humidityByte) / 10;
        map.put("temperature", temperature);
        map.put("humidity",humidity);
    }
}
