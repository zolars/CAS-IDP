package grabData;

import hibernatePOJO.Dictionary;
import hibernatePOJO.DictionaryPlus;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.SocketChannel;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

class DataOnlineClientHandler extends ChannelInboundHandlerAdapter {
    private Map<String,Float> map=new HashMap<String, Float>();
    public List<Dictionary> dic=null;
    public List<DictionaryPlus> dicPlus=null;
    private ByteBuf recMsg=null;

    private int []slaveId= new int[22];
    private static int []fCode=new int[22];
    private static int []addr=new int[22];
    private static int []len=new int [22];
    private static String [] name = new String[643];
    private static Integer [] factor= new Integer[643];

    private static int part=0;
    private static int count=0;
    private static int cishu=0;

    private static boolean aaa = true;

    private static DataOutput dataoutput = new DataOutput();


    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
       // System.out.println("正在连接");
        dicPlus=DataOnline.dicPlus;
        dic=DataOnline.dic;

        for (int i=0;i<dic.size();i++){
            name[i]=dic.get(i).getItem();
            factor[i]=dic.get(i).getCoefficient();
        }
        for (int i=0;i<dicPlus.size();i++){
            slaveId[i]=dicPlus.get(i).getSlaveid();
            fCode[i]=dicPlus.get(i).getFunctioncode();
            addr[i]=dicPlus.get(i).getStart();
            len[i]=dicPlus.get(i).getLength();
        }
       // System.out.println(dicPlus.size());
        byte[] bytes=new byte[12];
        String address = ctx.channel().remoteAddress().toString().replace("/", "");
       // System.out.println("ip+端口为：" + address + "开始建立通讯");


        ByteBuf sendMsg = ctx.alloc().buffer();
        sendMsg.writeBytes(createMsg(slaveId[part],fCode[part],addr[part],len[part]));
       // System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));//打印发送数据
        SocketChannel sc = (SocketChannel)ctx.channel();
        final ChannelFuture f=sc.writeAndFlush(sendMsg);
        f.addListener(new ChannelFutureListener() {
            @Override
            public void operationComplete(ChannelFuture future) throws Exception {
//                System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));
            }
        });
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

            if (recMsg.readableBytes()>=len[part]*2+9) {
//                System.out.println("可读字节数@@@@@@@："+recMsg.readableBytes());
//                return;
              //  System.out.println("已接收：part:" + part + "start:" + addr[part] + "length" + len[part]);
              //  System.out.println("接收长度" + recMsg.capacity());
              //  System.out.println("rec:" + ByteBufUtil.hexDump(recMsg));//打印接收数据
                dataResolve(recMsg, addr[part], len[part]);
                recMsg.clear();
              //  System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"+DataOnline.getData());
                if (part < 21) {
                    part++;
                } else {
                    part = 0;
                    count = 0;
                //    System.out.println(++cishu + "every 10 times:"); //每取10次实时数据存数据库一次
                    /*DataOutput.setDataset(map);
                    DataOutput.setdata();
                    if(cishu % 12 == 0) {
                        DataOutput.savedata();//DataOnline.time);
                    }*/
                    dataoutput.setDataset(map);
                    dataoutput.setdata();

                    if(cishu % 12 == 0)
                        dataoutput.savedata();

                    //sleep(1000);
                }

                //System.out.println("开始请求：part:" + part + "start:" + addr[part] + "length" + len[part]);
                ByteBuf sendMsg = ctx.alloc().buffer(12);
                sendMsg.writeBytes(createMsg(slaveId[part], fCode[part], addr[part], len[part]));
                //System.out.println("send:" + ByteBufUtil.hexDump(sendMsg));//打印发送数据
                SocketChannel sc = (SocketChannel) ctx.channel();
                final ChannelFuture f = sc.writeAndFlush(sendMsg);
                f.addListener(new ChannelFutureListener() {
                    @Override
                    public void operationComplete(ChannelFuture future) throws Exception {
//                System.out.println("send:"+ByteBufUtil.hexDump(sendMsg));
                    }
                });
            }


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

        //System.out.println("可读字节数："+buf.readableBytes());
       // System.out.printf("map size:"+map.size());
       // System.out.println(addr+"______"+len);

        float temp=0;
        buf.skipBytes(9);//跳过前9个字节，与数据无关
        for(int i=addr/2;i<(len+addr)/2;i++) {
            temp=Float.intBitsToFloat((int)buf.readUnsignedInt());
            map.put(name[count],temp*factor[count]);
            count++;
        }
        //System.out.println("map:"+map.toString());
        DataOnline.setData(map);
        System.out.println("##################################################");
        System.out.println(DataOnline.getData());
    }

   /* public static void saveDataToMysql(Long time){

        try {
            Thread.sleep(time);
            DataOutput.savedata();
            System.out.println("##################################################" + DataOutput.dataset);
            aaa = false;
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }*/


}
