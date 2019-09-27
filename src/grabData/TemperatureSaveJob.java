package grabData;

import Util.HBSessionDaoImpl;
import Util.ToHex;
import hibernatePOJO.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import javax.swing.event.DocumentEvent;
import java.sql.Timestamp;
import java.util.*;


public class TemperatureSaveJob implements Job {
    private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        Map<String, TemperatureMonitor> tempDataMap = new HashMap<>();

        try{
            tempDataMap = TemperatureSave.getTempDataMap();

            if (null != tempDataMap) {
                Set<String> didSet = tempDataMap.keySet();
                Iterator<String> iterator = didSet.iterator();
                while (iterator.hasNext()) {
                    String did = iterator.next();  //监测点id
                    TemperatureMonitor tempData = tempDataMap.get(did);

                    //1.实时数据存入数据库
                    //2.监听温度越限事件，存入数据库
                    if (tempData.getDid() != null) {
                        try {

                            TemperatureMonitor tempobj = (TemperatureMonitor) hbsessionDao.getFirst("FROM TemperatureMonitor  order by ppid desc ");
                            if (tempobj != null) {
                                tempData.setPpid(tempobj.getPpid() + 1);
                            } else {
                                tempData.setPpid(1);
                            }

                            Timestamp currenttime = new Timestamp(System.currentTimeMillis());
                            tempData.setTime(currenttime);
                            hbsessionDao.insert(tempData);


                            //查询温度阈值
                            DevicesThreshold dt1 = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold where name='温度过高' and level=1");
                            DevicesThreshold dt2 = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold where name='温度过低' and level=1");

                            DevicesThreshold dt3 = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold where name='湿度过高' and level=1");
                            DevicesThreshold dt4 = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold where name='湿度过低' and level=1");

                            double temphigh = dt1.getCellval();
                            double templow = dt2.getFloorval();
                            double wethigh = dt3.getCellval();
                            double wetlow = dt4.getFloorval();
                            float temp = tempData.getTemperature();
                            float wet = tempData.getHumidity();

                            // 2019/9/11 cjy: fix write to DB bug.No need to "select"
                            /*********2019-01-09 MAWEILIANG  ADD*************/
////                            String datenow = ToHex.beforeNowTime(0).split(" ")[0];
                            if (temp > temphigh) {
//                                List list = hbsessionDao.search("select CEILING(value),time from EventEnvironment where   cid ='344' and did = '"+did+"' and (signature ='' or signature is null)");
//                                if(list != null){
//                                    Object[] event= (Object[])list.get(0);
//                                    if(currenttime.toString().split(" ")[0].equals(event[1].toString().split(" ")[0])) {
//                                        if(Double.parseDouble(String.valueOf(temp))<Double.valueOf(event[0].toString())){
//                                            continue;
//                                        }
//                                    }
//                                }


                                EventEnvironment ee = new EventEnvironment();
                                EventEnvironment maxobj = (EventEnvironment)hbsessionDao.getFirst("FROM EventEnvironment order by teid desc");
                                if(maxobj != null) {
                                    ee.setTeid(maxobj.getTeid() + 1);
                                } else {
                                    ee.setTeid(1);
                                }

                               // ee.setCid(dt1.getDtid());
                                ee.setCid(344); //temp high
                                ee.setDid(did);
                                ee.setTime(currenttime);
                                ee.setValue(temp);
                                //ee.setValue(Double.valueOf(ToHex.formatString(String.valueOf(temp))));
                                ee.setLimitval(temphigh);
                                ee.setStatus(0);
                                ee.setDuration(0);
                                ee.setSignature("");
                                ee.setAnnotation("");
                                ee.setSubtype("");

                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.update("update EventEnvironment set signature = 'admin',annotation = '相同类型的告警自动确认' where cid = 344 and did="+did+"  and (signature ='' or signature is null) ");
                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.insert(ee);
                            } else if (temp < templow) {
                                List list = hbsessionDao.search("select CEILING(value),time from EventPower where   cid ='345' and did = '"+did+"' and (signature ='' or signature is null)");
                                if(list != null){
                                    Object[] event= (Object[])list.get(0);
                                    if(currenttime.toString().split(" ")[0].equals(event[1].toString().split(" ")[0])) {
                                        if(Double.parseDouble(String.valueOf(temp))<Double.valueOf(event[0].toString())){
                                            continue;
                                        }
                                    }
                                }
                                EventPower ee = new EventPower();

                                EventEnvironment maxobj = (EventEnvironment)hbsessionDao.getFirst("FROM EventEnvironment order by teid desc");
                                if(maxobj != null) {
                                    ee.setTeid(maxobj.getTeid() + 1);
                                } else {
                                    ee.setTeid(1);
                                }

                                //ee.setCid(dt2.getDtid());
                                ee.setCid(345); //temp low
                                ee.setDid(did);
                                ee.setTime(currenttime);
                                ee.setValue(temp);
//                                ee.setValue(Double.valueOf(ToHex.formatString(String.valueOf(temp))));
                                ee.setLimitval(templow);
                                ee.setStatus(0);
                                ee.setDuration(0);
                                ee.setSignature("");
                                ee.setAnnotation("");
                                ee.setSubtype("");

                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.update("update EventEnvironment set signature = 'admin',annotation = '相同类型的告警自动确认' where cid = 345 and did='"+did+"' and (signature ='' or signature is null) ");
                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.insert(ee);
                            } else if (wet > wethigh) {
//                                List list = hbsessionDao.search("select CEILING(value),time from EventPower where   cid ='346' and did = '"+did+"' and (signature ='' or signature is null)");
//                                if(list != null){
//                                    Object[] event= (Object[])list.get(0);
//                                    if(currenttime.toString().split(" ")[0].equals(event[1].toString().split(" ")[0])) {
//                                        if(Double.parseDouble(String.valueOf(temp))<Double.valueOf(event[0].toString())){
//                                            continue;
//                                        }
//                                    }
//                                }
                                EventEnvironment ee = new EventEnvironment();

                                EventEnvironment maxobj = (EventEnvironment)hbsessionDao.getFirst("FROM EventEnvironment order by teid desc");
                                if(maxobj != null) {
                                    ee.setTeid(maxobj.getTeid() + 1);
                                } else {
                                    ee.setTeid(1);
                                }

                                //ee.setCid(dt3.getDtid());
                                ee.setCid(346); //wet high
                                ee.setDid(did);
                                ee.setTime(currenttime);
                                ee.setValue(wet);
//                                ee.setValue(Double.valueOf(ToHex.formatString(String.valueOf(wet))));
                                ee.setLimitval(wethigh);
                                ee.setStatus(0);
                                ee.setDuration(0);
                                ee.setSignature("");
                                ee.setAnnotation("");
                                ee.setSubtype("");

                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.update("update EventEnvironment set signature = 'admin',annotation = '相同类型的告警自动确认' where cid = 346 and did='"+did+"' and (signature ='' or signature is null) ");
                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.insert(ee);
                            } else if (wet < wetlow) {
//                                List list = hbsessionDao.search("select CEILING(value),time from EventPower where   cid ='347' and did = '"+did+"' and (signature ='' or signature is null)");
//                                if(list != null){
//                                    Object[] event= (Object[])list.get(0);
//                                    if(currenttime.toString().split(" ")[0].equals(event[1].toString().split(" ")[0])) {
//                                        if(Double.parseDouble(String.valueOf(temp))<Double.valueOf(event[0].toString())){
//                                            continue;
//                                        }
//                                    }
//                                }
                                EventEnvironment ee = new EventEnvironment();

                                EventEnvironment maxobj = (EventEnvironment)hbsessionDao.getFirst("FROM EventEnvironment order by teid desc");
                                if(maxobj != null) {
                                    ee.setTeid(maxobj.getTeid() + 1);
                                } else {
                                    ee.setTeid(1);
                                }

                               // ee.setCid(dt4.getDtid());
                                ee.setCid(347); //wet low
                                ee.setDid(did);
                                ee.setTime(currenttime);
                                ee.setValue(wet);
//                                ee.setValue(Double.valueOf(ToHex.formatString(String.valueOf(wet))));
                                ee.setLimitval(wetlow);
                                ee.setStatus(0);
                                ee.setDuration(0);
                                ee.setSignature("");
                                ee.setAnnotation("");
                                ee.setSubtype("");

                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.update("update EventEnvironment set signature = 'admin',annotation = '相同类型的告警自动确认' where cid = 347 and did='"+did+"'  and (signature ='' or signature is null) ");
                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.insert(ee);
                            }
                        } catch (Exception e) {
                            System.out.println("ERROR Temperature Save Job: " + e.getMessage());
                        }
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            tempDataMap = null;
        }
    }
}
