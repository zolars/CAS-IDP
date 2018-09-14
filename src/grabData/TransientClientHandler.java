package grabData;

import Util.HBSessionDaoImpl;
import com.alibaba.fastjson.JSON;
import hibernatePOJO.CaptureSetting;
import hibernatePOJO.EventPower;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;

public class TransientClientHandler extends ChannelInboundHandlerAdapter {
    private static Charset charset=Charset.forName("UTF-8");
    private boolean newResponse=true;
    private short resLength=0;
    private ByteBuf tempBuf;
    private String did="1";

    public TransientClientHandler(String did) {
       // this.did=did;

        HBSessionDaoImpl hbSessionDao=new HBSessionDaoImpl();
        List<CaptureSetting> list=hbSessionDao.search("FROM CaptureSetting");
        this.did = list.get(0).getDid();

    }

    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        //super.handlerAdded(ctx);
        tempBuf=ctx.alloc().buffer();
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        ByteBuf buf=(ByteBuf)msg;
        if(newResponse){
            resLength=buf.getShort(2);
            newResponse=false;
            //System.out.println("响应长度: "+resLength);
        }
        tempBuf.writeBytes(buf);
        buf.release();
        if(tempBuf.readableBytes()>=resLength){
            newResponse=true;
            //MD5校验
            byte[] resContent=new byte[resLength-16];
            byte[] resChkSum=new byte[16];
            tempBuf.readBytes(resContent);//读取response的消息体
            tempBuf.readBytes(resChkSum);//读取response的校验和
            byte[] contentCheckCode=TransientUtil.mergeByteArray(resContent,TransientUtil.getCheckCode().getBytes());
            if(Arrays.equals(TransientUtil.md5(contentCheckCode),resChkSum)){
                //System.out.println("校验通过");
                String res=new String(resContent,10,resContent.length-10,"UTF-8");
                //System.out.println("响应消息体: "+res);
                //数据存入数据库
                TransientResponse tr=JSON.parseObject(res, TransientResponse.class);//反序列化
                List<EventPower> events=tr.getResult();
                if(null!=events){
                    HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
                    for(EventPower e:events){
                        dataResolve(e);
                        hbsessionDao.insert(e);
                    }
                    hbsessionDao=null;
                }
            }
            tempBuf.clear();
        }

    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        //System.out.println("建立连接");
        //把channel存入map,用于发送transientRequest
        DataOnline.getTransientChannelMap().put(this.did,ctx.channel());
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        //super.exceptionCaught(ctx, cause);
        cause.printStackTrace();
        ctx.close();
    }
    public void dataResolve(EventPower e){
        switch (e.getSubtype()){
            case 0:e.setDiscription("未知类型");break;
            case 1:e.setDiscription("Ua 暂降");break;
            case 2:e.setDiscription("Ub 暂降");break;
            case 3:e.setDiscription("Uc 暂降");break;
            case 4:e.setDiscription("Ua 暂升");break;
            case 5:e.setDiscription("Ub 暂升");break;
            case 6:e.setDiscription("Uc 暂升");break;
            case 7:e.setDiscription("Ua 短时中断");break;
            case 8:e.setDiscription("Ub 短时中断");break;
            case 9:e.setDiscription("Uc 短时中断");break;
            case 10:e.setDiscription("Ua Ub 暂降");break;
            case 11:e.setDiscription("Ub Uc 暂降");break;
            case 12:e.setDiscription("Uc Ua 暂降");break;
            case 13:e.setDiscription("Ua Ub Uc 暂降");break;
            case 14:e.setDiscription("Ua Ub 暂升");break;
            case 15:e.setDiscription("Ub Uc 暂升");break;
            case 16:e.setDiscription("Uc Ua 暂升");break;
            case 17:e.setDiscription("Ua Ub Uc 暂升");break;
            case 18:e.setDiscription("Ua Ub 短时中断");break;
            case 19:e.setDiscription("Ub Uc 短时中断");break;
            case 20:e.setDiscription("Uc Ua 短时中断");break;
            case 21:e.setDiscription("Ua Ub Uc 短时中断");break;
            default: break;
        }
    }
}
