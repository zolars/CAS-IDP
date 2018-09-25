package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.EventPower;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import sms.SmsAlarm;

import javax.swing.*;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


public class alarmModelJob implements Job {

    /**
     * 判断当前日期是否为工作日时段
     *
     * @param
     * @return  true 周一到周五; false 周末
     * @Exception 发生异常
     */
    public boolean isWorkTime(String pTime){
        Boolean rt1 = false, rt2 = false;
        try{
            String dstr[] = pTime.split(" ");
            String day = dstr[0];
            String time = dstr[1];

            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Calendar c = Calendar.getInstance();
            c.setTime(format.parse(day));
            int dayForWeek = 0;
            if(c.get(Calendar.DAY_OF_WEEK) == 1)
                dayForWeek = 7;
            else
                dayForWeek = c.get(Calendar.DAY_OF_WEEK) - 1;

            //获取时间
            String formattime = "yyyy-MM-dd HH:mm:ss:SS";
            Date nowTime = new SimpleDateFormat(formattime).parse(pTime);

            Date startTime = new SimpleDateFormat(formattime).parse(day+" 08:00:00:000");
            Date endTime = new SimpleDateFormat(formattime).parse(day+" 18:00:00:000");

            if (nowTime.getTime() == startTime.getTime()
                    || nowTime.getTime() == endTime.getTime())
                rt2 = true;

            Calendar date = Calendar.getInstance();
            date.setTime(nowTime);

            Calendar begin = Calendar.getInstance();
            begin.setTime(startTime);

            Calendar end = Calendar.getInstance();
            end.setTime(endTime);

            if (date.after(begin) && date.before(end)) {
                rt2 = true;
            } else {
                rt2 = false;
            }

            if(dayForWeek == 6 || dayForWeek ==7)
                rt1 = false;
            else rt1 = true;

        } catch ( Exception e) {
            // TODO: handle exception
            	System.out.println(e.getClass());
            	e.printStackTrace();
        }

        if(rt1&&rt2)
            return true;
        else return false;

    }

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

        Calendar calendarnow = Calendar.getInstance();
        calendarnow.setTime(new Date());
        calendarnow.set(Calendar.MINUTE, calendar.get(Calendar.MINUTE));
        String nowtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

        //1.获得当前市行的15分钟内的告警事件（分为四类：）
        List<EventPower> alrmtranslist = hbsessionDao.search(
                "FROM EventPower where time >'"+ date +"'");


        //2.查询各个事件的告警方式、告警用户、告警时间范围
        if(alrmtranslist.size() > 0){
            for(int i = 0; i < alrmtranslist.size(); i++){
                String did = alrmtranslist.get(i).getDid();

                List<Object> allist = new ArrayList<>();

                allist = hbsessionDao.search(
                        "select ta.isSms,ta.isAlart, ta.isPlartform, tc.govtelephone, tb.timeperiod, tb.precontent, td.description, ta.did from Devices as ta, DeviceAlarmUser as tb, User as tc, EventsType as td where ta.did ='"+ did +"'and tb.did ='"+ did + "' and tb.uid = tc.uid and td.cid ='" + alrmtranslist.get(i).getCid() + "'");

                if(allist.size() > 0){
                    Object[] objects=(Object[])allist.get(0);
                    Integer isSms =  (Integer)objects[0];
                    Integer isAlart =  (Integer)objects[1];
                    Integer isPlartform =  (Integer)objects[2];
                    String telephone =  (String)objects[3];
                    String timeperiod =  (String)objects[4];
                    String precontent =  (String)objects[5];
                    String msgstr =  (String)objects[6];

                    if(timeperiod == "0"){  //全天报警

                        if(isAlart== 1){ //执行弹窗报警
                            JOptionPane.showMessageDialog(null,precontent+ "\r\n" + "时间：" + alrmtranslist.get(i).getTime() + "\r\n信息：" +  msgstr);
                        }
                        if(isSms == 1){ //执行短信报警
                            SmsAlarm s = new SmsAlarm();
                            s.excuteSmsAlarm(telephone, msgstr);
                        }
                        if(isPlartform== 1){ //执行平台报警
                            System.out.println("执行平台报警");
                        }

                    }
                    else{ //工作日报警

                        if(isWorkTime(nowtime)){
                            if(isAlart== 1){ //执行弹窗报警
                                JOptionPane.showMessageDialog(null,precontent+ "\r\n" + "时间：" + alrmtranslist.get(i).getTime() + "\r\n信息：" +  msgstr);
                            }
                            if(isSms == 1){ //执行短信报警
                                SmsAlarm s = new SmsAlarm();
                                s.excuteSmsAlarm(telephone, msgstr);
                            }
                            if(isPlartform== 1){ //执行平台报警
                                System.out.println("执行平台报警");
                            }
                        }

                    }
                }
            }
        }

        System.out.println("完成告警模块:" + System.currentTimeMillis());
    }
}
