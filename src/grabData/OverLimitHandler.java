package grabData;

import Util.HBSessionDaoImpl;
import com.alibaba.fastjson.JSON;
import deviceJobManager.DeviceManager;
import hibernatePOJO.EventPower;
import hibernatePOJO.EventsType;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

import java.util.Arrays;
import java.util.List;

public class OverLimitHandler extends ChannelInboundHandlerAdapter {
    private boolean newResponse = true;
    private short resLength = 0;
    private ByteBuf tempBuf;
    private String did = "";

    public OverLimitHandler(String did) {
        this.did = did;
    }

    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        tempBuf = ctx.alloc().buffer();
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        System.out.println("读取越限事件");
        ByteBuf buf = (ByteBuf) msg;
        if (newResponse) {
            resLength = buf.getShort(2);
            newResponse = false;
        }
        tempBuf.writeBytes(buf);
        buf.release();
        if (tempBuf.readableBytes() >= resLength) {
            newResponse = true;
            //MD5校验
            byte[] resContent = new byte[resLength - 16];
            byte[] resChkSum = new byte[16];
            tempBuf.readBytes(resContent); //读取response的消息体
            tempBuf.readBytes(resChkSum); //读取response的校验和
            byte[] contentCheckCode = OverLimitUtil.mergeByteArray(resContent, OverLimitUtil.getCheckCode().getBytes());
            if (Arrays.equals(OverLimitUtil.md5(contentCheckCode), resChkSum)) {
                String res = new String(resContent, 10, resContent.length - 10, "UTF-8");
                //数据存入数据库
                OverLimitResponse tr = JSON.parseObject(res, OverLimitResponse.class); //反序列化
                List<EventPower> events = tr.getResult();
                if (events.size() > 0) {
                    HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
                    for (EventPower e : events) {
                        dataResolve(hbsessionDao, e);

                        if (e.getDid() != null) {
                            hbsessionDao.insert(e);
                        }
                    }
                    hbsessionDao = null;
                }
            }
            tempBuf.clear();
        }
        ctx.flush();
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

        // record ctx in DeviceManager
        DeviceManager.getCtxMap().put(this.did + "-3", ctx);
        //把channel存入map,用于发送OverLimitRequest
        DataOnline.getOverLimitChannelMap().put(this.did, ctx.channel());
    }

    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        //remove channel,ctx
        DataOnline.getOverLimitChannelMap().remove(this.did);
        DeviceManager.getCtxMap().remove(this.did + "-3");
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.close();
    }

    public void dataResolve(HBSessionDaoImpl hbsessionDao, EventPower e) {
        EventsType et = (EventsType) hbsessionDao.getFirst("FROM EventsType where subtype='" + e.getSubtype() + "' and code ='0002'");

        if (et != null) {
            Integer cid = et.getCid();
            e.setCid(cid);
            e.setDid(did);
        }
    }
}
