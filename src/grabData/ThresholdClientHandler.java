package grabData;

import Util.HBSessionDaoImpl;
import Util.ToHex;
// import com.sun.tools.javac.util.Convert;
import hibernatePOJO.*;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.SocketChannel;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;
import java.util.Map;

class ThresholdClientHandler extends ChannelInboundHandlerAdapter {
    private Map<String,Float> map=null;
    private List<DictionaryThreshold> dicThreshold=null;
    private ByteBuf recMsg=null;

    private int slaveId;
    private int fCode;
    private int addr1;
    private int addr2;
    private int len;
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

        for (int i=0;i< dicThreshold.size();i++){
            slaveId= 1;
            fCode =dicThreshold.get(i).getFunctioncode();
            addr1 = dicThreshold.get(i).getAddr1();
            addr2 = dicThreshold.get(i).getAddr2();
            len = 4;

            String thsholdname = dicThreshold.get(i).getDescription();

            DevicesThreshold dt = (DevicesThreshold)hbsessionDao.getFirst(
                    "FROM DevicesThreshold where classify='" + thsholdname + "' and level = 1");

            if(dt != null){
                String valuestr = "";

                if(dt.getFloorval() != null){
                    double dfval = dt.getFloorval();
                    Float ffval = (float)dfval;
                    valuestr = Integer.toHexString(Float.floatToIntBits(ffval));

                } else if(dt.getCellval() != null){
                    double dcval = dt.getCellval();
                    Float fcval = (float)dcval;
                    valuestr = Integer.toHexString(Float.floatToIntBits(fcval));
                }

                if(!valuestr.equals("")){
                    String val1 = valuestr.substring(0,1);
                    String val2 = valuestr.substring(2,3);
                    String val3 = valuestr.substring(4,5);
                    String val4 = valuestr.substring(6,7);
                    byte[] value= ToHex.toBytes(valuestr);

                    ByteBuf sendMsg = ctx.alloc().buffer();
                    sendMsg.writeBytes(createMsg(1, fCode, addr1, addr2, value[0], value[1], value[2], value[3]));
                    SocketChannel sc = (SocketChannel)ctx.channel();

                    sc.writeAndFlush(sendMsg);
                }
            }
        }
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
/*
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<DictionaryThreshold> dicThreshold = hbsessionDao.search(
                "FROM DictionaryThreshold");

        String address = ctx.channel().remoteAddress().toString().replace("/", "");
        System.out.println("ip+端口为：" + address + "开始建立通讯");

        for (int i=0;i< dicThreshold.size();i++){
            slaveId[i]= 1;
            fCode[i] =dicThreshold.get(i).getFunctioncode();
            addr[i] = dicThreshold.get(i).getAddr();
            len[i] = 4;

            String thsholdname = dicThreshold.get(i).getDescription();

            DevicesThreshold dt = (DevicesThreshold)hbsessionDao.getFirst(
                    "FROM DevicesThreshold where classify='" + thsholdname + "' and level = 1" + "'");

            if(dt != null){

                double dfval =dt.getFloorval();
                double dcval = dt.getCellval();

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
        }*/
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }
    //readLength单位是2字节
    public byte[] createMsg(int slaveId,int functionCode, int addr1, int addr2, byte value1, byte value2, byte value3, byte value4){

        byte b1 = ((byte)(addr1 & 0xFF));
        byte b2 = ((byte)(addr2 & 0xFF));

       // System.out.println(b1);
      //  System.out.println(b2);

        byte[] msg = new byte[17];
        msg[0] = 0;
        msg[1] = 0;
        msg[2] = 0;
        msg[3] = 0;
        msg[4] = 0;
        msg[5] = (byte)0x0b;
        msg[6] = ((byte)slaveId);
        msg[7] = ((byte)functionCode);

        //msg[8] =  new Byte("80");//(byte)0x80; ////b1; //
       // msg[9] =  (byte)0x00;     //b2;

        msg[8] = ((byte)(32768 >> 8));
        msg[9] = ((byte)(32768 & 0xFF));

        System.out.println("kkk"+32768);
        System.out.println(32768 >> 8);
        System.out.println(32768 & 0xFF);
        System.out.println("eee"+32768);

        msg[10] = (byte)0x00;
        msg[11] = (byte)0x02;
        msg[12] = (byte)0x04; //写入数据长度为4字节
      /*  msg[13] = (byte) value1; //写入数据的第1个字节
        msg[14] =  (byte) value2; //写入数据的第2个字节
        msg[15] = (byte) value3; //写入数据的第3个字节
        msg[16] = (byte) value4; //写入数据的第4个字节*/

        msg[13] = (byte) 0x3f; //写入数据的第1个字节
        msg[14] =  (byte) 0x9e; //写入数据的第2个字节
        msg[15] = (byte) 0x04; //写入数据的第3个字节
        msg[16] = (byte) 0x18; //写入数据的第4个字节

        return msg;
    }

}
