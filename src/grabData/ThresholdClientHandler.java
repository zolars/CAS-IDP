package grabData;

import Util.HBSessionDaoImpl;
import deviceJobManager.DeviceManager;
import hibernatePOJO.Devices;
import hibernatePOJO.DevicesThreshold;
import hibernatePOJO.DictionaryThreshold;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.SocketChannel;

import java.util.List;
import java.util.Map;

class ThresholdClientHandler extends ChannelInboundHandlerAdapter {
    private Map<String, Float> map = null;
    private List<DictionaryThreshold> dicThreshold = null;
    private ByteBuf recMsg = null;

    private int slaveId;
    private int fCode;
    private int addr1;
    private int addr2;
    private int[] addr = new int[22];
    private int[] len = new int [22];
    private int length;
    private String[] name = new String[643];
    private Integer[] factor = new Integer[643];

    private int part = 0;
    private int count = 0;

    //监测点id
    private String did = "";

    public ThresholdClientHandler(String did) {
        this.did = did;
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {

        /*2019-03-04*//*
        for(Devices d:DeviceManager.getFirstConnection().keySet()){
            if(d.getDid().toString()==this.did){
                DeviceManager.getFirstConnection().put(d,true);
            }
        }
        *//*2019-03-04*/

        //record ctx in DeviceManager
//        DeviceManager.getCtxMap().put(this.did+"-4",ctx);

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<DictionaryThreshold> dicThreshold = hbsessionDao.search(
                "FROM DictionaryThreshold");

        //String address = ctx.channel().remoteAddress().toString().replace("/", "");

        for (int i = 0; i < dicThreshold.size(); i++) {
            slaveId = 1;
            fCode = dicThreshold.get(i).getFunctioncode();
            addr1 = dicThreshold.get(i).getAddr1();
            addr2 = dicThreshold.get(i).getAddr2();
            length = 4;

            String thsholdname = dicThreshold.get(i).getDescription();

            DevicesThreshold dt = (DevicesThreshold) hbsessionDao.getFirst(
                    "FROM DevicesThreshold where name='" + thsholdname + "' and level = 1");

            if (dt != null) {
                Float value = null;

                if (dt.getFloorval() != null) {
                    double dfval = dt.getFloorval();
                    value = (float) dfval;
                } else if (dt.getCellval() != null) {
                    double dcval = dt.getCellval();
                    value = (float) dcval;
                }

                if (!value.equals(null)) {
                    int addr = addr1 * 100 + addr2;
                    ByteBuf sendMsg = ctx.alloc().buffer();
                    sendMsg.writeBytes(createMsg(addr, value));
                    SocketChannel sc = (SocketChannel) ctx.channel();
                    sc.writeAndFlush(sendMsg);
                }
            }
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
        dataResolve(recMsg, addr[part], len[part]);
        recMsg.clear();
    }

    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        //remove ctx in DeviceManager
//        DeviceManager.getCtxMap().remove(this.did+"-4");
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }

    public static byte[] hexStrToByteArray(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return new byte[0];
        }
        byte[] byteArray = new byte[str.length() / 2];
        for (int i = 0; i < byteArray.length; i++) {
            String subStr = str.substring(2 * i, 2 * i + 2);
            byteArray[i] = ((byte) Integer.parseInt(subStr, 16));
        }
        return byteArray;
    }

    private static byte[] createMsg(int addr, float value) {

        byte[] msg = new byte[17];
      /*  byte[] msg = new byte[29];*/
        msg[0] = 0;
        msg[1] = 0;
        msg[2] = 0;
        msg[3] = 0;
        msg[4] = 0;
      /*  msg[5] = 11;
        msg[6] = ff;
        msg[7] = 10;*/

        msg[5] = (byte) 0x11;
        msg[6] = (byte) 0xff;
        msg[7] = (byte) 0x10;
       /* msg[5] = (byte) 0x0b;
        msg[6] = (byte) 0x01;
        msg[7] = (byte) 0x10;*/

        //地址重复写8000的错误
       /* byte[] addrByte = hexStrToByteArray(Integer.toString(addr));
        msg[8] = (byte) addrByte[0];
        msg[9] = (byte) addrByte[1];*/

        msg[8] = ((byte)(addr >> 8));
        msg[9] = ((byte)(addr & 0xFF));

      /*  msg[8] = (byte) 0x80;
        msg[9] = (byte) 0x04;*/

        msg[10] = (byte) 0x00;
        msg[11] = (byte) 0x02;
        msg[12] = (byte) 0x04; // 写入数据长度为4字节

        String hexValueStr = Integer.toHexString(Float.floatToIntBits(value));
        byte[] hexValueByte = hexStrToByteArray(hexValueStr);
        msg[13] = (byte) hexValueByte[0]; // 写入数据的第1个字节
        msg[14] = (byte) hexValueByte[1]; // 写入数据的第2个字节
        msg[15] = (byte) hexValueByte[2]; // 写入数据的第3个字节
        msg[16] = (byte) hexValueByte[3]; // 写入数据的第4个字节

        return msg;
    }

    public void dataResolve(ByteBuf buf, int addr, int len) {
        float temp = 0;
        buf.skipBytes(8); //跳过前8个字节，与数据无关
        for (int i = addr / 2; i < (len + addr) / 2; i++) {
            temp = Float.intBitsToFloat((int) buf.readUnsignedInt());
            map.put(name[count], temp * factor[count]);
            count++;
        }
    }

}
