package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.AssessmentSetting;
import hibernatePOJO.EventPower;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class assessModelJob implements Job {
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        System.out.println("开始执行评估模块:" + System.currentTimeMillis());

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(Calendar.HOUR, calendar.get(Calendar.HOUR) - 24);// 让小时减少24
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

        //1.获得当前市行的1天内的事件（分为四类：）
        List<EventPower> eventpowerlist = hbsessionDao.search(
                "FROM EventPower where time >'"+ date +"'");


        Integer eenum = 0;
        Integer epnum = 0;
        Integer aeenum = 0;
        Integer aepnum = 0;

        if(eventpowerlist != null)
            epnum = eventpowerlist.size();

        Integer tempreturenum = 0;
        Integer wetnum = 0;
        Integer devicenum = 0;

        //2. 获得当前市行的1天内的告警（分为四类：）
        List<EventPower> alrmpowerlist = hbsessionDao.search(
                "FROM EventPower where time >'"+ date +"'");

        if(alrmpowerlist != null)
            aepnum = alrmpowerlist.size();

        Integer atempreturenum = 0;
        Integer awetnum = 0;
        Integer adevicenum = 0;

        //计算总体类别的告警数/事件数，得到评估等级，写入assess_record表

        Integer sumevent = eenum + epnum + tempreturenum + wetnum + devicenum;
        Integer alarmsumevent = aeenum + aepnum + atempreturenum + awetnum + adevicenum;

        double ratio;
        if(sumevent == 0)
            ratio = 0.00;
        else ratio = (double)alarmsumevent/sumevent;

        AssessmentSetting setting = (AssessmentSetting)hbsessionDao.getFirst(
                "FROM AssessmentSetting");

        int degree=3;

        if(ratio > setting.getRedyellow())
            degree = 1;
        else if(ratio > setting.getYellowgreen())
            degree = 2;
        else if(ratio < setting.getYellowgreen())
            degree = 3;

        String hql = "update AssessRecord assess set assess.degree='" + degree +
                "', assess.powernum='" + eenum + epnum + "', assess.tempreturenum='"+ tempreturenum +
                "', assess.wetnum='" + wetnum + "', assess.devicenum='" + devicenum + "', assess.apowernum='"+
                aeenum + aepnum + "', assess.atempreturenum='" + atempreturenum + "', assess.awetnum='"+
                awetnum + "', assess.adevicenum='" + adevicenum + "' where assess.cbid='" + 1 + "'";

        Boolean rt = hbsessionDao.update(hql);

        System.out.println("完成执行评估模块:" + System.currentTimeMillis());
    }
}
