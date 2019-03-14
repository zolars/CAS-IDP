package grabData;

import deviceJobManager.DeviceManager;
import hibernatePOJO.TemperatureMonitor;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.SocketChannel;

import java.util.HashMap;
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
        // record ctx in DeviceManager
        DeviceManager.getCtxMap().put(this.did+"-5",ctx);

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(1, 3, 1, 2));
        SocketChannel sc = (SocketChannel) ctx.channel();
        if (sc.isWritable()) {
            sc.writeAndFlush(sendMsg);
        }
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

        TemperatureSave.tempSave(did, map);

        // 发送报文间隔1秒
        Thread.sleep(1000);

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(1, 3, 1, 2));
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);
    }

    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        //remove temperature data,ctx in map
        TemperatureSave.getTempDataMap().remove(this.did);
        DeviceManager.getCtxMap().remove(this.did+"-5");
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
        System.out.println(temperature+"------"+humidity);
        map.put("humidity",humidity);
    }
}
