package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;


public class DataOnlineSaveJob implements Job {
    private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        //SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        //System.out.println(df.format(new Date()));// new Date()为获取当前系统时间

        Map<String, PowerparmMonitor> parmMap = DataOnline.getParmMap();
        Map<String, PowerxbMonitor> xbMap = DataOnline.getXbMap();
        Map<String, PowersxdyMonitor> sxdyMap = DataOnline.getSxdyMap();

        try {
//            parmMap = DataOnline.getParmMap();
//            xbMap = DataOnline.getXbMap();
//            sxdyMap = DataOnline.getSxdyMap();

            if (null != parmMap && null != xbMap && null != sxdyMap) {
                Set<String> didSet = parmMap.keySet();
                Iterator<String> iterator = didSet.iterator();
                while (iterator.hasNext()) {
                    String did = iterator.next();  //监测点id

                    PowerparmMonitor var = parmMap.get(did);
                    PowerxbMonitor varxb = xbMap.get(did);
                    PowersxdyMonitor varsxdy = sxdyMap.get(did);

                    Timestamp currenttime = new Timestamp(System.currentTimeMillis());
                    var.setTime(currenttime);
                    varxb.setTime(currenttime);
                    varsxdy.setTime(currenttime);

                    //实时数据存入数据库
                    if (var.getDid() != null) {
                        hbsessionDao.insert(var);
                    }
                    if(varxb.getDid() != null) {
                        hbsessionDao.insert(varxb);
                    }
                    if(varsxdy.getDid() != null) {
                        hbsessionDao.insert(varsxdy);

                        //SDDD
                        Float thdu1 = varsxdy.getU1(), thdu2 = varsxdy.getU2(), thdu3=varsxdy.getU3(), thdi1=varsxdy.getI1(), thdi2=varsxdy.getI2(), thdi3=varsxdy.getI3();

                        if(thdu1.equals("0.00") && thdu2.equals("0.00") && thdu3.equals("0.00")) {
                            String time = varsxdy.getTime().toString();

                            //判断是否越限 若越限写入数据库
                            EventsType tempet  = (EventsType)hbsessionDao.getFirst("FROM EventsType WHERE description = 'Ua Ub Uc为0'");
                            EventPower epp  = (EventPower)hbsessionDao.getFirst("FROM EventPower order by xbid desc");

                            int maxteid = 0;
                            if(epp != null) {
                                maxteid = epp.getTeid() + 1;
                            }

                            if (tempet != null) {
                                EventPower ep = new EventPower();
                                ep.setTeid(maxteid);
                                ep.setTime(Timestamp.valueOf(time));
                                ep.setValue(0.00);
                                ep.setDid(did);
                                ep.setCid(tempet.getCid());
                                ep.setSubtype(tempet.getSubtype());

                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.update("update EventPower set signature = 'admin',annotation = '相同类型自动确认' where cid = '"+tempet.getCid()+"' and did="+did+" and signature is null ");
                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.insert(ep);
                            }
                        }

                        if(thdi1.equals("0.00") && thdi2.equals("0.00") && thdi3.equals("0.00")) {
                            String time = varsxdy.getTime().toString();

                            //判断是否越限 若越限写入数据库
                            EventsType tempet  = (EventsType)hbsessionDao.getFirst("FROM EventsType WHERE description = 'Ia Ib Ic为0'");
                            EventPower epp  = (EventPower)hbsessionDao.getFirst("FROM EventPower order by xbid desc");

                            int maxteid = 0;
                            if(epp != null) {
                                maxteid = epp.getTeid() + 1;
                            }

                            if (tempet != null) {
                                EventPower ep = new EventPower();
                                ep.setTeid(maxteid);
                                ep.setTime(Timestamp.valueOf(time));
                                ep.setValue(0.00);
                                ep.setDid(did);
                                ep.setCid(tempet.getCid());
                                ep.setSubtype(tempet.getSubtype());

                                /************2018-12-24 马卫亮  ADD******************************/
                                hbsessionDao.update("update EventPower set signature = 'admin',annotation = '相同类型自动确认' where cid = '"+tempet.getCid()+"' and did="+did+" and signature is null ");
                                /************2018-12-24 马卫亮  ADD******************************/

                                hbsessionDao.insert(ep);
                            }
                        }


                    }
                }
            }
        }  catch (Exception e) {
            e.printStackTrace();
        } finally {
//            parmMap = null;
//            xbMap = null;
//            sxdyMap = null;
            ;
        }
    }
}

