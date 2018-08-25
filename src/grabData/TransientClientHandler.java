package grabData;

import Util.HBSessionDaoImpl;
import com.alibaba.fastjson.JSON;
import hibernatePOJO.EventTransient;
import io.netty.buffer.ByteBuf;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;

public class TransientClientHandler extends ChannelInboundHandlerAdapter {
    private static Charset charset=Charset.forName("UTF-8");
    private boolean newResponse=true;
    private short resLength=0;
    private ByteBuf tempBuf;
    private int mpid=0;

    public TransientClientHandler(int mpid) {
        this.mpid=mpid;
    }

    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
//        super.handlerAdded(ctx);
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
            byte[] contentCheckCode=TransientUtil.mergeByteArray(resContent,TransientUtil.checkCode.getBytes());
            if(Arrays.equals(TransientUtil.md5(contentCheckCode),resChkSum)){
                //System.out.println("校验通过");
                String res=new String(resContent,10,resContent.length-10,"UTF-8");
                //System.out.println("响应消息体: "+res);
                //数据存入数据库
                TransientResponse tr=JSON.parseObject(res, TransientResponse.class);//反序列化
                List<EventTransient> events=tr.getResult();
                if(null!=events){
                    HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
                    for(EventTransient e:events){
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
//        System.out.println("建立连接");
        //把channel存入map,用于发送transientRequest
        DataOnline.getTransientChannelMap().put(this.mpid,ctx.channel());
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
//        super.exceptionCaught(ctx, cause);
        cause.printStackTrace();
        ctx.close();
    }
}
