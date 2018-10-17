package grabData;

import hibernatePOJO.*;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
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

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(1, 3, 1, 2));
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

        TemperatureSave.tempSave(did, map);

        // return;

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(1, 3, 1, 2));
        System.out.println("TempSend:" + ByteBufUtil.hexDump(sendMsg));//打印发送数据
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
        buf.skipBytes(9);//跳过前9个字节，与数据无关

        String data = ByteBufUtil.hexDump(buf);

        float temperatureInt = Integer.parseInt(data.substring(0,4), 16);
        float humidityInt = Integer.parseInt(data.substring(4,8), 16);

        float temperature = temperatureInt / 10;
        float humidity = humidityInt / 10;

        map.put("temperature", temperature);
        map.put("humidity",humidity);
        System.out.println("temperature: " + temperature + " humidity: " + humidity);
    }
}
