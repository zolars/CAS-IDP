package grabData;

import Util.HBSessionCenterDaoImpl;
import Util.HBSessionDaoImpl;
import hibernatePOJO.EventTransient;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class detectAlarmJob implements Job {
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        System.out.println("动态检测告警事件:" + System.currentTimeMillis());

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(Calendar.HOUR, calendar.get(Calendar.HOUR) - 1);// 让小时减少1
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

        //1.上传暂态事件到总服务器
        List<EventTransient> eventlist = hbsessionDao.search(
                "FROM EventTransient where time >'"+ date +"'");

        HBSessionCenterDaoImpl hbsessioncenterDao = new HBSessionCenterDaoImpl();

        for(int i = 0; i < eventlist.size(); i++){
            EventTransient et = eventlist.get(i);
            hbsessioncenterDao.insert(et);
        }

        //2.上传越限事件到总服务器



        System.out.println("完成上传事件到总服务器:" + System.currentTimeMillis());

    }
}
