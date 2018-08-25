package grabData;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.Channel;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.Date;
import java.util.List;

public class TransientRequestJob implements Job {
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        Channel channel=TransientClientHandler.getChannel();



        if(null!=channel){
            List<ByteBuf> list=TransientUtil.createMsg();
            for(ByteBuf buf:list){
                System.out.println(new Date()+"暂态请求："+ByteBufUtil.hexDump(buf));
                channel.writeAndFlush(buf);
            }
        }
    }
}
