package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.ChannelOutboundHandlerAdapter;
import io.netty.channel.ChannelPromise;
import io.netty.channel.socket.SocketChannel;

import java.util.HashMap;
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
   /* @Override
    public void connect(ChannelHandlerContext ctx) throws Exception {
    }*/

/*
    @Override
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        //super.handlerAdded(ctx);
        recMsg=ctx.alloc().buffer();
    }

    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
//        super.handlerRemoved(ctx);
        recMsg.release();
        recMsg=null;
    }*/
    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
       // System.out.println("有新客户端连接接入。。。"+ctx.channel().remoteAddress());
        System.out.println("Threshold建立连接");

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<DictionaryThreshold> dicThreshold = hbsessionDao.search(
                "FROM DictionaryThreshold");

        for (int i=0;i< 10;i++){
            System.out.println("i" + i);
            slaveId[i]= 1;
            fCode[i] =dicThreshold.get(i).getFunctioncode();
            addr[i] = dicThreshold.get(i).getAddr();
            len[i] = 4;
        }
        System.out.println(dicThreshold.size());

        String address = ctx.channel().remoteAddress().toString().replace("/", "");
        System.out.println("ip+端口为：" + address + "开始建立通讯");

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(slaveId[part],fCode[part],addr[part],len[part]));
        // System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel)ctx.channel();

        System.out.println("socket channel is writeable: " + sc.isWritable());
        System.out.println("socket channel is isOpen: " + sc.isOpen());

        sc.write(sendMsg);
//        sc.writeAndFlush(sendMsg);

        System.out.println("socket channel is isShutdown: " + sc.isShutdown());
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {

        System.out.println("Threshold建立连接");

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<DictionaryThreshold> dicThreshold = hbsessionDao.search(
                "FROM DictionaryThreshold");

        for (int i=0;i< 10;i++){
            System.out.println("i" + i);
            slaveId[i]= 1;
            fCode[i] =dicThreshold.get(i).getFunctioncode();
            addr[i] = dicThreshold.get(i).getAddr();
            len[i] = 4;
        }
        System.out.println(dicThreshold.size());
        byte[] bytes=new byte[12];
        String address = ctx.channel().remoteAddress().toString().replace("/", "");
        System.out.println("ip+端口为：" + address + "开始建立通讯");

        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(1, fCode[part], addr[part], len[part]));
        // System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel)ctx.channel();

        System.out.println("socket channel is writeable: " + sc.isWritable());
        System.out.println("socket channel is isOpen: " + sc.isOpen());

        sc.writeAndFlush(sendMsg);

        System.out.println("socket channel is isShutdown: " + sc.isShutdown());

      /*  ByteBuf buf = (ByteBuf) msg;
        recMsg.writeBytes(buf);
        buf.release();
        //数据累积
        if(recMsg.readableBytes()<2*len[part]+9){
            return;
        }
        dataResolve(recMsg, addr[part], len[part]);
        recMsg.clear();
        if (part < 21) {
            part++;
        }
        else {
            part = 0;
            count = 0;
            //取到一次完整的实时数据，暂存起来
            //DataOnline.tempSave(did,map);
        }
        System.out.println("开始请求：part:" + part + "start:" + addr[part] + "length" + len[part]);
        ByteBuf sendMsg2 = ctx.alloc().buffer(12);
        sendMsg.writeBytes(createMsg(slaveId[part],fCode[part],addr[part],len[part]));
        System.out.println("send:" + ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);*/
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }
    //readLength单位是2字节
    public byte[] createMsg(int slaveId,int functionCode,int address,int readLength){
       /* byte[] msg = new byte[12];
        msg[0] = 11;
        msg[1] = ((byte)slaveId);
        msg[2] = ((byte)functionCode);
        msg[3] = new Byte("80");
        msg[4] = (byte)0x00; //new Byte("00");//;
        msg[5] = (byte)0x00; //new Byte("00");//(byte)0x00;
        msg[6] = (byte)0x02; //new Byte("02");//(byte)0x02;
        msg[7] = (byte)0x04; //new Byte("04");//(byte)0x04;  //写入数据长度为4字节

        msg[8] = (byte) 0x3a; //new Byte("3A");//(byte)0x40;  //写入数据的第1个字节
        msg[9] =  (byte) 0x8e; //new Byte("8E");//(byte)0x2A;  //写入数据的第2个字节
        msg[10] = (byte) 0x38; //new Byte("38");//(byte)0x3D;  //写入数据的第3个字节
        msg[11] = (byte) 0x86; //new Byte("86");// (byte)0x71;  //写入数据的第4个字节*/


        byte[] msg = new byte[17];
        msg[0] = 0;
        msg[1] = 0;
        msg[2] = 0;
        msg[3] = 0;
        msg[4] = 0;
        msg[5] = 11;
        msg[6] = ((byte)slaveId);
        msg[7] = ((byte)functionCode);
        msg[8] = new Byte("80");
        msg[9] = (byte)0x00; //new Byte("00");//;
        msg[10] = (byte)0x00; //new Byte("00");//(byte)0x00;
        msg[11] = (byte)0x02; //new Byte("02");//(byte)0x02;
        msg[12] = (byte)0x04; //new Byte("04");//(byte)0x04;  //写入数据长度为4字节

        msg[13] = (byte) 0x3a; //new Byte("3A");//(byte)0x40;  //写入数据的第1个字节
        msg[14] =  (byte) 0x8e; //new Byte("8E");//(byte)0x2A;  //写入数据的第2个字节
        msg[15] = (byte) 0x38; //new Byte("38");//(byte)0x3D;  //写入数据的第3个字节
        msg[16] = (byte) 0x86; //new Byte("86");// (byte)0x71;  //写入数据的第4个字节

        return msg;
    }

    public static byte[] BYTES = {
            (byte) 0x00, (byte) 0x01, (byte) 0x02, (byte) 0x03, (byte) 0x04,
            (byte) 0x05, (byte) 0x06, (byte) 0x07, (byte) 0x08, (byte) 0x09,
            (byte) 0x0a, (byte) 0x0b, (byte) 0x0c, (byte) 0x0d, (byte) 0x0e, (byte) 0x0f,
            (byte) 0x10, (byte) 0x11, (byte) 0x12, (byte) 0x13, (byte) 0x14,
            (byte) 0x15, (byte) 0x16, (byte) 0x17, (byte) 0x18, (byte) 0x19,
            (byte) 0x1a, (byte) 0x1b, (byte) 0x1c, (byte) 0x1d, (byte) 0x1e, (byte) 0x1f,
            (byte) 0x20, (byte) 0x21, (byte) 0x22, (byte) 0x23, (byte) 0x24,
            (byte) 0x25, (byte) 0x26, (byte) 0x27, (byte) 0x28, (byte) 0x29,
            (byte) 0x2a, (byte) 0x2b, (byte) 0x2c, (byte) 0x2d, (byte) 0x2e, (byte) 0x2f,
            (byte) 0x30, (byte) 0x31, (byte) 0x32, (byte) 0x33, (byte) 0x34,
            (byte) 0x35, (byte) 0x36, (byte) 0x37, (byte) 0x38, (byte) 0x39,
            (byte) 0x3a, (byte) 0x3b, (byte) 0x3c, (byte) 0x3d, (byte) 0x3e, (byte) 0x3f,
            (byte) 0x40, (byte) 0x41, (byte) 0x42, (byte) 0x43, (byte) 0x44,
            (byte) 0x45, (byte) 0x46, (byte) 0x47, (byte) 0x48, (byte) 0x49,
            (byte) 0x4a, (byte) 0x4b, (byte) 0x4c, (byte) 0x4d, (byte) 0x4e, (byte) 0x4f,
            (byte) 0x50, (byte) 0x51, (byte) 0x52, (byte) 0x53, (byte) 0x54,
            (byte) 0x55, (byte) 0x56, (byte) 0x57, (byte) 0x58, (byte) 0x59,
            (byte) 0x5a, (byte) 0x5b, (byte) 0x5c, (byte) 0x5d, (byte) 0x5e, (byte) 0x5f,
            (byte) 0x60, (byte) 0x61, (byte) 0x62, (byte) 0x63, (byte) 0x64,
            (byte) 0x65, (byte) 0x66, (byte) 0x67, (byte) 0x68, (byte) 0x69,
            (byte) 0x6a, (byte) 0x6b, (byte) 0x6c, (byte) 0x6d, (byte) 0x6e, (byte) 0x6f,
            (byte) 0x70, (byte) 0x71, (byte) 0x72, (byte) 0x73, (byte) 0x74,
            (byte) 0x75, (byte) 0x76, (byte) 0x77, (byte) 0x78, (byte) 0x79,
            (byte) 0x7a, (byte) 0x7b, (byte) 0x7c, (byte) 0x7d, (byte) 0x7e, (byte) 0x7f,
            (byte) 0x80, (byte) 0x81, (byte) 0x82, (byte) 0x83, (byte) 0x84,
            (byte) 0x85, (byte) 0x86, (byte) 0x87, (byte) 0x88, (byte) 0x89,
            (byte) 0x8a, (byte) 0x8b, (byte) 0x8c, (byte) 0x8d, (byte) 0x8e, (byte) 0x8f,
            (byte) 0x90, (byte) 0x91, (byte) 0x92, (byte) 0x93, (byte) 0x94,
            (byte) 0x95, (byte) 0x96, (byte) 0x97, (byte) 0x98, (byte) 0x99,
            (byte) 0x9a, (byte) 0x9b, (byte) 0x9c, (byte) 0x9d, (byte) 0x9e, (byte) 0x9f,
            (byte) 0xa0, (byte) 0xa1, (byte) 0xa2, (byte) 0xa3, (byte) 0xa4,
            (byte) 0xa5, (byte) 0xa6, (byte) 0xa7, (byte) 0xa8, (byte) 0xa9,
            (byte) 0xaa, (byte) 0xab, (byte) 0xac, (byte) 0xad, (byte) 0xae, (byte) 0xaf,
            (byte) 0xb0, (byte) 0xb1, (byte) 0xb2, (byte) 0xb3, (byte) 0xb4,
            (byte) 0xb5, (byte) 0xb6, (byte) 0xb7, (byte) 0xb8, (byte) 0xb9,
            (byte) 0xba, (byte) 0xbb, (byte) 0xbc, (byte) 0xbd, (byte) 0xbe, (byte) 0xbf,
            (byte) 0xc0, (byte) 0xc1, (byte) 0xc2, (byte) 0xc3, (byte) 0xc4,
            (byte) 0xc5, (byte) 0xc6, (byte) 0xc7, (byte) 0xc8, (byte) 0xc9,
            (byte) 0xca, (byte) 0xcb, (byte) 0xcc, (byte) 0xcd, (byte) 0xce, (byte) 0xcf,
            (byte) 0xd0, (byte) 0xd1, (byte) 0xd2, (byte) 0xd3, (byte) 0xd4,
            (byte) 0xd5, (byte) 0xd6, (byte) 0xd7, (byte) 0xd8, (byte) 0xd9,
            (byte) 0xda, (byte) 0xdb, (byte) 0xdc, (byte) 0xdd, (byte) 0xde, (byte) 0xdf,
            (byte) 0xe0, (byte) 0xe1, (byte) 0xe2, (byte) 0xe3, (byte) 0xe4,
            (byte) 0xe5, (byte) 0xe6, (byte) 0xe7, (byte) 0xe8, (byte) 0xe9,
            (byte) 0xea, (byte) 0xeb, (byte) 0xec, (byte) 0xed, (byte) 0xee, (byte) 0xef,
            (byte) 0xf0, (byte) 0xf1, (byte) 0xf2, (byte) 0xf3, (byte) 0xf4,
            (byte) 0xf5, (byte) 0xf6, (byte) 0xf7, (byte) 0xf8, (byte) 0xf9,
            (byte) 0xfa, (byte) 0xfb, (byte) 0xfc, (byte) 0xfd, (byte) 0xfe, (byte) 0xff,
    };
}
