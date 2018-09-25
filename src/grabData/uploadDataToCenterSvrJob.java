package grabData;

import Util.HBSessionCenterDaoImpl;
import Util.HBSessionDaoImpl;
import hibernatePOJO.EventPower;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.SimpleDateFormat;
import java.util.*;

public class uploadDataToCenterSvrJob implements Job {
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        System.out.println("开始上传事件到总服务器:" + System.currentTimeMillis());

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(Calendar.HOUR, calendar.get(Calendar.HOUR) - 1);// 让小时减少1
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

        //1.上传电能质量事件到总服务器
        List<EventPower> eventlist = hbsessionDao.search(
                "FROM EventPower where time >'"+ date +"'");

        HBSessionCenterDaoImpl hbsessioncenterDao = new HBSessionCenterDaoImpl();

        if(eventlist != null){
            for(int i = 0; i < eventlist.size(); i++){
                EventPower et = eventlist.get(i);
                hbsessioncenterDao.insert(et);
            }
        }

        //2.上传事件到总服务器

        System.out.println("完成上传事件到总服务器:" + System.currentTimeMillis());

    }
}
