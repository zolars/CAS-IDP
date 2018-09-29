package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
        calendar.set(Calendar.HOUR, calendar.get(Calendar.HOUR) - 24);   // 让时间减少1天
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

        //1.1.获得当前市行的1天内的告警事件-电能事件
        //1.2.查询各个事件的告警方式、告警用户、告警时间范围
        //通过event_power.cid 找到 events_type中的type， 通过type 找到 device_threshold中的3条不同等级的记录，对应不同的tvalue[]
        //比较event_power.value 与 tvalue[] ，确定是哪一个等级的事件。tlevel
        //将该事件的did、tlevel（degree）、teid 写入assess_record表

        List<EventPower> eventpowerlist = new ArrayList<>();
        List<EventPower> eventenvironmentlist = new ArrayList<>();
        List<EventPower> eventctrllist = new ArrayList<>();

        List<EventsType> typelist = new ArrayList<>();
        List<DevicesThreshold> thresholdlist = new ArrayList<>();
        List<DeviceAlarmUser> alarmuserlist = new ArrayList<>();

        //电能类事件评估开始
        eventpowerlist = hbsessionDao.search("FROM EventPower where time >'"+ date +"'");

        if(eventpowerlist != null) {
            for (int i = 0; i < eventpowerlist.size(); i++) {
                Integer teid = eventpowerlist.get(i).getTeid();
                String sdid = eventpowerlist.get(i).getDid();
                Integer did = Integer.parseInt(sdid);
                Integer cid = eventpowerlist.get(i).getCid();
                Double value = eventpowerlist.get(i).getValue();
              //  Timestamp time = eventpowerlist.get(i).getTime();
                Integer tlevel = 1;

                typelist = hbsessionDao.search("From EventsType where cid ='" + cid + "'");

                String type = typelist.get(0).getType();
               // String description = typelist.get(0).getDescription();

                thresholdlist = hbsessionDao.search("From DevicesThreshold where type ='" + type + "' order by level desc");

                for (int j = 0; j < thresholdlist.size(); j++) {

                    Double fval = thresholdlist.get(j).getFloorval();
                    Double cval = thresholdlist.get(j).getCellval();

                    if (fval != null) {
                        if (value > fval) {
                            tlevel = thresholdlist.get(j).getLevel();
                            break;
                        }
                    } else if (cval != null) {
                        if (value < cval) {
                            tlevel = thresholdlist.get(j).getLevel();
                            break;
                        }
                    }
                }
              // System.out.println("电能事件" + teid + "的告警级别：" + tlevel);
                AssessRecord maxar = (AssessRecord)hbsessionDao.getFirst("FROM AssessRecord Order by aid desc");

                Integer aid = 0;
                if(maxar != null)
                    aid = maxar.getAid();

                AssessRecord ar = new AssessRecord();
                ar.setDegree(tlevel);
                ar.setAid(aid + 1);
                ar.setDid(did);
                ar.setTeid(teid);
                ar.setEventclass(1); //电能类事件类型为1
                Boolean rt = hbsessionDao.insert(ar);
            }
        }

        //电能类事件评估结束

        //温湿度类事件评估开始
        eventenvironmentlist = hbsessionDao.search("FROM EventEnvironment where time >'"+ date +"'");

        if(eventenvironmentlist != null) {
            for (int i = 0; i < eventenvironmentlist.size(); i++) {
                Integer teid = eventenvironmentlist.get(i).getTeid();
                String sdid = eventenvironmentlist.get(i).getDid();
                Integer did = Integer.parseInt(sdid);
                Integer cid = eventenvironmentlist.get(i).getCid();
                Double value = eventenvironmentlist.get(i).getValue();
                //  Timestamp time = eventenvironmentlist.get(i).getTime();
                Integer tlevel = 1;

                typelist = hbsessionDao.search("From EventsType where cid ='" + cid + "'");

                String type = typelist.get(0).getType();
                // String description = typelist.get(0).getDescription();

                thresholdlist = hbsessionDao.search("From DevicesThreshold where type ='" + type + "' order by level desc");

                for (int j = 0; j < thresholdlist.size(); j++) {

                    Double fval = thresholdlist.get(j).getFloorval();
                    Double cval = thresholdlist.get(j).getCellval();

                    if (fval != null) {
                        if (value > fval) {
                            tlevel = thresholdlist.get(j).getLevel();
                            break;
                        }
                    } else if (cval != null) {
                        if (value < cval) {
                            tlevel = thresholdlist.get(j).getLevel();
                            break;
                        }
                    }
                }
                System.out.println("温度事件" + teid + "的告警级别：" + tlevel);
                AssessRecord maxar = (AssessRecord)hbsessionDao.getFirst("FROM AssessRecord Order by aid desc");

                Integer aid = 0;
                if(maxar != null)
                    aid = maxar.getAid();

                AssessRecord ar = new AssessRecord();
                ar.setDegree(tlevel);
                ar.setAid(aid + 1);
                ar.setDid(did);
                ar.setTeid(teid);
                if(type.equals(113)||type.equals(114))
                    ar.setEventclass(2); //温度类事件类型为2
                else if(type.equals(115)||type.equals(116))
                    ar.setEventclass(3); //湿度类事件类型为3
                Boolean rt = hbsessionDao.insert(ar);
            }
        }
        //温湿度类事件评估结束


        //设备类事件评估开始

        //设备类事件评估结束




        System.out.println("完成执行评估模块:" + System.currentTimeMillis());
    }
}
