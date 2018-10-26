package grabData;

import Util.HBSessionCenterDaoImpl;
import Util.HBSessionDaoImpl;
import hibernatePOJO.BasicSetting;
import hibernatePOJO.EventCtrl;
import hibernatePOJO.EventEnvironment;
import hibernatePOJO.EventPower;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class uploadDataToCenterSvrJob implements Job {
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        try {
            System.out.println("开始上传事件到总服务器:" + System.currentTimeMillis());

            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
            HBSessionCenterDaoImpl hbsessioncenterDao = new HBSessionCenterDaoImpl();

            BasicSetting bs = (BasicSetting) hbsessionDao.getFirst("FROM BasicSetting");
            Integer inteval = bs.getUploadinterval();

            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());
            calendar.set(Calendar.HOUR, calendar.get(Calendar.HOUR) - inteval); // 让小时减少设置的值
            String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

            //1.上传电能质量事件到总服务器
            List<EventPower> eventpowerlist = hbsessionDao.search(
                    "FROM EventPower where time >'" + date + "'");

            if (eventpowerlist != null) {
                for (int i = 0; i < eventpowerlist.size(); i++) {
                    EventPower et = eventpowerlist.get(i);
                    hbsessioncenterDao.insert(et);
                }
            }

            //2.上传温湿度事件到总服务器
            List<EventEnvironment> eventenvrionlist = hbsessionDao.search(
                    "FROM EventEnvironment where time >'" + date + "'");

            if (eventenvrionlist != null) {
                for (int i = 0; i < eventenvrionlist.size(); i++) {
                    EventEnvironment et = eventenvrionlist.get(i);
                    hbsessioncenterDao.insert(et);
                }
            }

            //3.上传设备事件到总服务器
            List<EventCtrl> eventctrllist = hbsessionDao.search(
                    "FROM EventCtrl where time >'" + date + "'");

            if (eventctrllist != null) {
                for (int i = 0; i < eventctrllist.size(); i++) {
                    EventCtrl et = eventctrllist.get(i);
                    hbsessioncenterDao.insert(et);
                }
            }

            System.out.println("完成上传事件到总服务器:" + System.currentTimeMillis());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
