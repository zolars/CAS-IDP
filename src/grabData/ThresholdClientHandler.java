package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
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
    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        System.out.println("Threshold建立连接");

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<DictionaryThreshold> dicThreshold = hbsessionDao.search(
                "FROM DictionaryThreshold");

        for (int i=0;i<dicThreshold.size();i++){
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
        sendMsg.writeBytes(createMsg(slaveId[part],fCode[part],addr[part],len[part]));
       // System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel)ctx.channel();
        sc.writeAndFlush(sendMsg);
    }


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
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        ByteBuf buf = (ByteBuf) msg;
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
        ByteBuf sendMsg = ctx.alloc().buffer(12);
        sendMsg.writeBytes(createMsg(slaveId[part],fCode[part],addr[part],len[part]));
        System.out.println("send:" + ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel) ctx.channel();
        sc.writeAndFlush(sendMsg);
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }
    //readLength单位是2字节
    public byte[] createMsg(int slaveId,int functionCode,int address,int readLength){
        byte[] msg = new byte[12];
        msg[0] = 0;
        msg[1] = 0;
        msg[2] = 0;
        msg[3] = 0;
        msg[4] = 0;
        msg[5] = 6;
        msg[6] = ((byte)slaveId);
        msg[7] = ((byte)functionCode);
        msg[8] = ((byte)(address >> 8));
        msg[9] = ((byte)(address & 0xFF));
        msg[10] = ((byte)(readLength >> 8));
        msg[11] = ((byte)(readLength & 0xFF));
        return msg;
    }
    public void dataResolve(ByteBuf buf,int addr,int len){
        float temp=0;
        buf.skipBytes(9);//跳过前9个字节，与数据无关
        for(int i=addr/2;i<(len+addr)/2;i++) {
            temp=Float.intBitsToFloat((int)buf.readUnsignedInt());
            map.put(name[count],temp*factor[count]);
            count++;
        }
    }
}
