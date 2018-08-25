package grabData;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.Channel;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.*;

public class TransientRequestJob implements Job {
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        Map<Integer,Channel> channelMap=DataOnline.getTransientChannelMap();
        if(null!=channelMap){
            Set<Integer> mpidSet = channelMap.keySet();
            Iterator<Integer> iterator = mpidSet.iterator();
            while (iterator.hasNext()){
                Integer mpid=iterator.next();//监测点id
                Channel channel=channelMap.get(mpid);//某个监测点的channel
                List<ByteBuf> list=TransientUtil.createMsg();
                for(ByteBuf buf:list){
                    //System.out.println(new Date()+"暂态请求："+ByteBufUtil.hexDump(buf));
                    channel.writeAndFlush(buf);
                }
            }
        }
    }
}
