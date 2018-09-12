package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.EventPower;
import hibernatePOJO.EventTransient;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import sms.SmsAlarm;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class alarmModelJob implements Job {
    @Override
    /*
    读取当前时间之前的15分钟内的告警事件、并分别根据设定的告警方式、执行短信、弹窗、平台告警
     */
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        System.out.println("开始执行告警模块:" + System.currentTimeMillis());

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(Calendar.MINUTE, calendar.get(Calendar.MINUTE) - 15);// 让分钟减少15
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

        //1.获得当前市行的15分钟内的告警事件（分为四类：）
        List<EventTransient> alrmtranslist = hbsessionDao.search(
                "FROM EventTransient where time >'"+ date +"'");

        List<EventPower> alrmpowerlist = hbsessionDao.search(
                "FROM EventPower where occurtime >'"+ date +"' and isMark = 1");

        //2.查询各个事件的告警方式、告警用户、告警时间范围
        if(alrmtranslist != null){
            for(int i = 0; i < alrmtranslist.size(); i++){
                String did = alrmtranslist.get(i).getDid();
                String msgstr = alrmtranslist.get(i).getDiscription();

                List<Object> allist = new ArrayList<>();

                allist = hbsessionDao.search(
                        "select ta.isSms,ta.isAlart, ta.isPlartform, tc.telephone, tb.stime, tb.etime, ta.did from Devices as ta, DeviceAlarmUser as tb, User as tc where ta.did ='"+ did +"'and tb.did ='"+ did + "' and tb.uid = tc.uid");

                if(allist.size() > 0){
                    Object[] objects=(Object[])allist.get(0);
                    Integer isSms =  (Integer)objects[0];
                    Integer isAlart =  (Integer)objects[1];
                    Integer isPlartform =  (Integer)objects[2];
                    String telephone =  (String)objects[3];
                    Timestamp starttime =  (Timestamp)objects[4];
                    Timestamp endtime =  (Timestamp)objects[5];

                    /* if(isAlart== 1){ //执行弹窗报警
                        System.out.println("执行弹窗报警");
                    }*/
                    if(isSms == 1){ //执行短信报警
                        System.out.println("执行短信报警"+isSms);
                        SmsAlarm s = new SmsAlarm();
                        s.excuteSmsAlarm(telephone, msgstr);
                    }
                    if(isPlartform== 1){ //执行平台报警
                        System.out.println("执行平台报警");
                    }
                }
            }
        }

        if(alrmpowerlist != null){

        }

        System.out.println("完成告警模块:" + System.currentTimeMillis());
    }
}
