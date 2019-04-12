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
        Map<String, Channel> channelMap = new HashMap<>();

        try {
            channelMap = DataOnline.getTransientChannelMap();

            if (null != channelMap) {
                Set<String> didSet = channelMap.keySet();
                Iterator<String> iterator = didSet.iterator();
                while (iterator.hasNext()) {
                    String did = iterator.next(); //监测点id
                    Channel channel = channelMap.get(did); //某个监测点的channel
                    List<ByteBuf> list = TransientUtil.createMsg();
                    for (ByteBuf buf : list) {
                        System.out.println(new Date() + "暂态请求：" + ByteBufUtil.hexDump(buf));
                        channel.writeAndFlush(buf);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            channelMap = null;
        }
    }
}
