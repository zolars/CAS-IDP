package grabData;

import Util.HBSessionDaoImpl;
import Util.ToHex;
import com.sun.tools.javac.util.Convert;
import hibernatePOJO.*;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.SocketChannel;

import java.util.List;
import java.util.Map;

class ThresholdClientHandler extends ChannelInboundHandlerAdapter {
    private Map<String,Float> map=null;
    private List<DictionaryThreshold> dicThreshold=null;
    private ByteBuf recMsg=null;

    private int[] slaveId= new int[22];
    private int[] fCode=new int[22];
    private int[] addr=new int[22];
    private int[] len=new int [22];
    private String[] name = new String[643];
    private Integer[] factor= new Integer[643];

    private int part=0;
    private int count=0;

    //监测点id
    private String did = "";

    public ThresholdClientHandler(String did) {
        this.did=did;
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<DictionaryThreshold> dicThreshold = hbsessionDao.search(
                "FROM DictionaryThreshold");

        String address = ctx.channel().remoteAddress().toString().replace("/", "");
        System.out.println("ip+端口为：" + address + "开始建立通讯");

        for (int i=0;i< 10;i++){
            slaveId[i]= 1;
            fCode[i] =dicThreshold.get(i).getFunctioncode();
            addr[i] = dicThreshold.get(i).getAddr();
            len[i] = 4;

            String thsholdname = dicThreshold.get(i).getDescription();
            System.out.println("FROM DevicesThreshold where classify='" + thsholdname + "' and level = 1");

            List<DevicesThreshold> dt = hbsessionDao.search(
                    "FROM DevicesThreshold where classify='" + thsholdname + "' and level = 1");


            if(dt.get(0) != null){
                double dfval = 0;
                double dcval = 0;
                if(dt.get(0).getFloorval() != null)
                    dfval = dt.get(0).getFloorval();
                if(dt.get(0).getCellval() != null)
                    dcval = dt.get(0).getCellval();

                Float ffval = (float)dfval;
                Float fcval = (float)dcval;

                String valuestr = "";

                if(ffval != 0)
                    valuestr = Integer.toHexString(Float.floatToIntBits(ffval));
                else if(fcval != 0)
                    valuestr = Integer.toHexString(Float.floatToIntBits(fcval));
                else break;

                String val1 = valuestr.substring(0,1);
                String val2 = valuestr.substring(2,3);
                String val3 = valuestr.substring(4,5);
                String val4 = valuestr.substring(6,7);
                System.out.println(val4 + val3 + val2 + val1);

                byte[] value= ToHex.toBytes(valuestr);

                ByteBuf sendMsg = ctx.alloc().buffer();
                sendMsg.writeBytes(createMsg(1, fCode[part], addr[part], value[1], value[2], value[3], value[4]));
                SocketChannel sc = (SocketChannel)ctx.channel();

                sc.writeAndFlush(sendMsg);
            }
        }
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<DictionaryThreshold> dicThreshold = hbsessionDao.search(
                "FROM DictionaryThreshold");

        String address = ctx.channel().remoteAddress().toString().replace("/", "");
        System.out.println("ip+端口为：" + address + "开始建立通讯");

        for (int i=0;i< 10;i++){
            slaveId[i]= 1;
            fCode[i] =dicThreshold.get(i).getFunctioncode();
            addr[i] = dicThreshold.get(i).getAddr();
            len[i] = 4;

            String thsholdname = dicThreshold.get(i).getDescription();

            List<DevicesThreshold> dt = hbsessionDao.search(
                    "FROM DevicesThreshold where classify='" + thsholdname + "' and level = 1" + "'");


            if(dt.get(0) != null){

                double dfval =dt.get(0).getFloorval();
                double dcval = dt.get(0).getCellval();

                Float ffval = (float)dfval;
                Float fcval = (float)dcval;

                String valuestr = "";

                if(ffval != 0)
                    valuestr = Integer.toHexString(Float.floatToIntBits(ffval));
                else if(fcval != 0)
                    valuestr = Integer.toHexString(Float.floatToIntBits(fcval));
                else break;

                String val1 = valuestr.substring(0,1);
                String val2 = valuestr.substring(2,3);
                String val3 = valuestr.substring(4,5);
                String val4 = valuestr.substring(6,7);
                System.out.println(val4 + val3 + val2 + val1);

                byte[] value= ToHex.toBytes(valuestr);

                ByteBuf sendMsg = ctx.alloc().buffer();
                sendMsg.writeBytes(createMsg(1, fCode[part], addr[part], value[1], value[2], value[3], value[4]));
                SocketChannel sc = (SocketChannel)ctx.channel();

                sc.writeAndFlush(sendMsg);

            }
        }
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }
    //readLength单位是2字节
    public byte[] createMsg(int slaveId,int functionCode,int address, byte value1, byte value2, byte value3, byte value4){

        byte[] msg = new byte[17];
        msg[0] = 0;
        msg[1] = 0;
        msg[2] = 0;
        msg[3] = 0;
        msg[4] = 0;
        msg[5] = (byte)0x0b;
        msg[6] = ((byte)slaveId);
        msg[7] = ((byte)functionCode);
        msg[8] = new Byte("80");
        msg[9] = (byte)0x00;
        msg[10] = (byte)0x00;
        msg[11] = (byte)0x02;
        msg[12] = (byte)0x04; //写入数据长度为4字节

        msg[13] = (byte) value1; //写入数据的第1个字节
        msg[14] =  (byte) value2; //写入数据的第2个字节
        msg[15] = (byte) value3; //写入数据的第3个字节
        msg[16] = (byte) value4; //写入数据的第4个字节

 /*       msg[13] = (byte) 0x3a; //写入数据的第1个字节
        msg[14] =  (byte) 0x8e; //写入数据的第2个字节
        msg[15] = (byte) 0x38; //写入数据的第3个字节
        msg[16] = (byte) 0x86; //写入数据的第4个字节*/

        return msg;
    }

}
