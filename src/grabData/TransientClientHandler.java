package grabData;

import com.alibaba.fastjson.JSON;
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
    private static Channel channel=null;
    private Charset charset=Charset.forName("UTF-8");
    private boolean newResponse=true;
    private short resLength=0;
    private ByteBuf tempBuf;
    @Override
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
            System.out.println("响应长度: "+resLength);
        }
        tempBuf.writeBytes(buf);
        buf.release();
        if(tempBuf.readableBytes()>=resLength){
            newResponse=true;
            //System.out.println("response hex:"+ByteBufUtil.hexDump(tempBuf));
            //System.out.println("response string:"+tempBuf.toString(charset));
            //MD5校验
            byte[] resContent=new byte[resLength-16];
            byte[] resChkSum=new byte[16];
            tempBuf.readBytes(resContent);//读取response的消息体
            tempBuf.readBytes(resChkSum);//读取response的校验和
            byte[] contentCheckCode=TransientUtil.mergeByteArray(resContent,TransientUtil.checkCode.getBytes());

            //System.out.println("checksum1:"+ByteBufUtil.hexDump(TransientUtil.md5(contentCheckCode)));
            //System.out.println("checksum2:"+ByteBufUtil.hexDump(resChkSum));
            if(Arrays.equals(TransientUtil.md5(contentCheckCode),resChkSum)){
                System.out.println("校验通过");
                String res=new String(resContent,10,resContent.length-10,"UTF-8");
                System.out.println("响应消息体: "+res);
                TransientResponse tr=JSON.parseObject(res, TransientResponse.class);//反序列化
                List<TransientEvent> events=tr.getResult();
                for(TransientEvent te:events){
                    System.out.println("**************** 一条暂态事件记录 **************");
                    System.out.println("time: "+te.getTime());
                    System.out.println("type: "+te.getType());
                    System.out.println("duration: "+te.getDuration());
                    System.out.println("value: "+te.getValue());
                    System.out.println("subType: "+te.getSubtype());
                }
                //数据存入数据库



            }
            tempBuf.clear();
            //ctx.close();
        }

    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
//        super.channelActive(ctx);
        System.out.println("channel active");
        this.channel =ctx.channel();

        //设置一个任务，每0.5h发一次暂态事件请求
        Scheduler scheduler=StdSchedulerFactory.getDefaultScheduler();
        Trigger trigger=newTrigger()
                .withIdentity("transientRequestTrigger","transientRequestTriggerGroup")
                .startNow()
                .withSchedule(simpleSchedule()
                        .withIntervalInMinutes(30)
                        .repeatForever())
                .build();
        JobDetail job=newJob(TransientRequestJob.class)
                .withIdentity("transientRequestJob","transientRequestJobGroup")
                .build();
        scheduler.scheduleJob(job,trigger);
        scheduler.start();
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
//        super.exceptionCaught(ctx, cause);
        cause.printStackTrace();
        ctx.close();
    }

    public static Channel getChannel() {
        return channel;
    }
}
