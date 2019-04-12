package grabData;

import Util.HBSessionDaoImpl;
import Util.ToHex;
import hibernatePOJO.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.sql.Timestamp;
import java.util.*;


public class DataOtherJob implements Job {

    @Override
    /*
    每10s读一次 实时THDU\THDI\不平衡度\PF的值是否越限，并记录这几个电能质量事件
     */
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        List<List<String>> eventlist = new ArrayList<>();
        List<List<String>> eventlist2 = new ArrayList<>();
        List<List<String>> eventlist3 = new ArrayList<>();

        try {
            System.out.println("开始执行电能质量THDU THDI 不平衡度 PF模块:" + System.currentTimeMillis());

            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

            //1.1.获得实时THDU THDI
            //1.2.查询THDU THDI限值
            //1.3 判断是否越限 若越限
            //1.3.1    写入数据库
            Float thdu1, thdu2, thdu3, thdi1, thdi2, thdi3;
            Double thduthreshold, thdithreshold;

            PowerxbMonitor tempxb = null;
            PowersxdyMonitor tempsxdy = null;
            PowerparmMonitor tempparm = null;

            Map<String, PowerparmMonitor> parmMap = DataOnline.getParmMap();
            Map<String, PowerxbMonitor> xbMap = DataOnline.getXbMap();
            Map<String, PowersxdyMonitor> sxdyMap = DataOnline.getSxdyMap();

            if (null != parmMap && null != xbMap && null != sxdyMap) {
                Set<String> didSet = parmMap.keySet();
                Iterator<String> iterator = didSet.iterator();
                while (iterator.hasNext()) {
                    String did = iterator.next();  //监测点id

                    tempparm = parmMap.get(did);
                    tempxb = xbMap.get(did);
                    tempsxdy = sxdyMap.get(did);

                    //3.1.获得实时电流电压谐波
                    //3.2.查询限值
                    //3.3 判断是否越限 若越限
                    //3.3.1    写入数据库
                    if (tempxb != null) {
                        thdu1 = tempxb.getThdu1();
                        thdu2 = tempxb.getThdu2();
                        thdu3 = tempxb.getThdu3();

                        thdi1 = tempxb.getThdi1();
                        thdi2 = tempxb.getThdi2();
                        thdi3 = tempxb.getThdi3();

                        DevicesThreshold thdu = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold WHERE name = '电压总谐波含有率' and level = '1'");
                        DevicesThreshold thdi = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold WHERE name = '电流总谐波含有率' and level = '1'");

//                        List<String> thdulist = hbsessionDao.search("select cellval FROM DevicesThreshold WHERE name = '电压总谐波含有率' order by level");
//                        List<String> thdilist = hbsessionDao.search("select cellval FROM DevicesThreshold WHERE name = '电流总谐波含有率' order by level");
                        if (thdu != null && thdi != null) {
//                        if (thdulist != null && thdilist != null) {
                            thduthreshold = thdu.getCellval();
                            thdithreshold = thdi.getCellval();
//                            thduthreshold = Double.valueOf(thdulist.get(0));
//                            thdithreshold = Double.valueOf(thdilist.get(0));
                            String time = tempxb.getTime().toString();

                            //判断是否越限 若越限,写入eventlist暂存

                            if (thduthreshold < thdu1) {
                                List<String> eventsublist = new ArrayList<>();
                                eventsublist.add(time);
                                eventsublist.add("Ua总谐波畸变率越限");
                                eventsublist.add(thdu1.toString());
                                eventlist.add(eventsublist);
                            }
                            if (thduthreshold < thdu2) {
                                List<String> eventsublist = new ArrayList<>();
                                eventsublist.add(time);
                                eventsublist.add("Ub总谐波畸变率越限");
                                eventsublist.add(thdu2.toString());
                                eventlist.add(eventsublist);
                            }
                            if (thduthreshold < thdu3) {
                                List<String> eventsublist = new ArrayList<>();
                                eventsublist.add(time);
                                eventsublist.add("Uc总谐波畸变率越限");
                                eventsublist.add(thdu3.toString());
                                eventlist.add(eventsublist);
                            }
                            if (thdithreshold < thdi1) {
                                List<String> eventsublist = new ArrayList<>();
                                eventsublist.add(time);
                                eventsublist.add("Ia总谐波畸变率越限");
                                eventsublist.add(thdi1.toString());
                                eventlist.add(eventsublist);
                            }
                            if (thdithreshold < thdi2) {
                                List<String> eventsublist = new ArrayList<>();
                                eventsublist.add(time);
                                eventsublist.add("Ib总谐波畸变率越限");
                                eventsublist.add(thdi2.toString());
                                eventlist.add(eventsublist);
                            }
                            if (thdithreshold < thdi3) {
                                List<String> eventsublist = new ArrayList<>();
                                eventsublist.add(time);
                                eventsublist.add("Ic总谐波畸变率越限");
                                eventsublist.add(thdi3.toString());
                                eventlist.add(eventsublist);
                            }

                            //1.3.2    写入数据库
                            /*********2019-01-09 MAWEILIANG  ADD*************/
//                            String datenow = ToHex.beforeNowTime(0).split(" ")[0];

                            for (int i = 0; i < eventlist.size(); i++) {
                                List<String> templist = eventlist.get(i);

                                EventsType tempet = (EventsType) hbsessionDao.getFirst("FROM EventsType WHERE description = '" + templist.get(1) + "'");
                                /***********2019-01-09    ADD****************************/
                                List list = hbsessionDao.search("select CEILING(value),time  from EventPower where  cid ='" + tempet.getCid() + "' and did = '" + did + "' and (signature ='' or signature is null)");
                                if (list != null) {
                                    Object[] event = (Object[]) list.get(0);

                                    if (templist.get(0).split(" ")[0].equals(event[1].toString().split(" ")[0])) {
                                        if (Double.parseDouble(templist.get(2)) < Double.valueOf(event[0].toString())) {
                                            continue;
                                        }
                                    }
                                }

                                EventPower epmax = (EventPower) hbsessionDao.getFirst("FROM EventPower order by teid desc");

                                int maxteid = 0;
                                if (epmax != null) {
                                    maxteid = epmax.getTeid() + 1;
                                }

                                if (tempet != null) {
                                    EventPower ep = new EventPower();
                                    ep.setTeid(maxteid);
                                    ep.setTime(Timestamp.valueOf(templist.get(0)));
//                                    ep.setValue(Double.parseDouble(templist.get(2)));
                                    ep.setValue(Double.parseDouble(ToHex.formatDouble(Double.valueOf(templist.get(2)))));
                                    ep.setDid(did);
                                    ep.setCid(tempet.getCid());
                                    ep.setSubtype(tempet.getSubtype());

                                    /************2018-12-24 马卫亮  ADD******************************/
                                    hbsessionDao.update("update EventPower set signature = 'admin',annotation = '相同类型的告警自动确认' where cid = '" + tempet.getCid() + "' and did='" + did + "' and signature is null  ");
                                    /************2018-12-24 马卫亮  ADD******************************/
                                    hbsessionDao.insert(ep);
                                }
                            }
                        }

                        //3.1.获得实时不平衡度
                        //3.2.查询不平衡度限值
                        //3.3 判断是否越限 若越限
                        //3.3.1    写入数据库
                        Float Uunb;
                        Double uunbthreshold;

//                        PowersxdyMonitor tempsxdy  = (PowersxdyMonitor)hbsessionDao.getFirst("FROM PowersxdyMonitor order by sxid desc");

                        if (tempsxdy != null) {
                            Uunb = tempsxdy.getUunb();

                            DevicesThreshold uunbobj = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold WHERE name = '三相电压负序不平衡度' and level = '1'");

                            if (uunbobj != null) {
                                uunbthreshold = uunbobj.getCellval();
                                String time = tempsxdy.getTime().toString();

                                //判断是否越限 若越限,写入eventlist2暂存

                                if (uunbthreshold < Uunb) {
                                    List<String> eventsublist = new ArrayList<>();
                                    eventsublist.add(time);
                                    eventsublist.add("三相电压负序不平衡度");
                                    eventsublist.add(Uunb.toString());
                                    eventlist2.add(eventsublist);
                                }

                                //1.3.2    写入数据库
                                for (int i = 0; i < eventlist2.size(); i++) {
                                    List<String> templist = eventlist2.get(i);

                                    EventsType tempet = (EventsType) hbsessionDao.getFirst("FROM EventsType WHERE description = '" + templist.get(1) + "'");

                                    /***********2019-01-09    ADD****************************/
                                    List list = hbsessionDao.search("select CEILING(value),time  from EventPower where  cid ='" + tempet.getCid() + "' and did = '" + did + "' and (signature ='' or signature is null)");
                                    if (list != null) {
                                        Object[] event = (Object[]) list.get(0);

                                        if (templist.get(0).split(" ")[0].equals(event[1].toString().split(" ")[0])) {
                                            if (Double.parseDouble(templist.get(2)) < Double.valueOf(event[0].toString())) {
                                                continue;
                                            }
                                        }
                                    }
                                    EventPower ep = new EventPower();

                                    ep.setTime(Timestamp.valueOf(templist.get(0)));
//                                    ep.setValue((templist.get(2)));
                                    ep.setValue(Double.parseDouble(ToHex.formatString(templist.get(2))));
                                    ep.setDid(did);
                                    ep.setCid(tempet.getCid());
                                    ep.setSubtype(tempet.getSubtype());

                                    /************2018-12-24 马卫亮  ADD******************************/
                                    hbsessionDao.update("update EventPower set signature = 'admin',annotation = '相同类型的告警自动确认' where cid = '" + tempet.getCid() + "' and did='" + did + "' and  signature is null ");
                                    /************2018-12-24 马卫亮  ADD******************************/
                                    hbsessionDao.insert(ep);
                                }
                            }
                        }

                        //4.1.获得实时PF
                        //4.2.查询PF限值
                        //4.3 判断是否越限 若越限
                        //4.3.1    写入数据库
                        Float pf1, pf2, pf3;
                        Double pfthreshold;

//                        PowerparmMonitor tempparm  = (PowerparmMonitor)hbsessionDao.getFirst("FROM PowerparmMonitor order by ppid desc");

                        if (tempparm != null) {
                            pf1 = tempparm.getPf1();
                            pf2 = tempparm.getPf2();
                            pf3 = tempparm.getPf3();

                            DevicesThreshold pfobj = (DevicesThreshold) hbsessionDao.getFirst("FROM DevicesThreshold WHERE name = '功率因数下限' and level = '1'");

                            if (pfobj != null) {
                                pfthreshold = pfobj.getFloorval();
                                String time = tempsxdy.getTime().toString();

                                //判断是否越限 若越限,写入eventlist2暂存

                                if (pfthreshold > pf1) {
                                    List<String> eventsublist = new ArrayList<>();
                                    eventsublist.add(time);
                                    eventsublist.add("A相功率因数越限");
                                    eventsublist.add(pf1.toString());
                                    eventlist3.add(eventsublist);
                                }
                                if (pfthreshold > pf2) {
                                    List<String> eventsublist = new ArrayList<>();
                                    eventsublist.add(time);
                                    eventsublist.add("B相功率因数越限");
                                    eventsublist.add(pf2.toString());
                                    eventlist3.add(eventsublist);
                                }
                                if (pfthreshold > pf3) {
                                    List<String> eventsublist = new ArrayList<>();
                                    eventsublist.add(time);
                                    eventsublist.add("C相功率因数越限");
                                    eventsublist.add(pf3.toString());
                                    eventlist3.add(eventsublist);
                                }

                                //1.3.2    写入数据库
                                for (int i = 0; i < eventlist3.size(); i++) {
                                    List<String> templist = eventlist3.get(i);

                                    EventsType tempet = (EventsType) hbsessionDao.getFirst("FROM EventsType WHERE description = '" + templist.get(1) + "'");
                                    /***********2019-01-09    ADD****************************/
                                    List list = hbsessionDao.search("select CEILING(value),time  from EventPower where  cid ='" + tempet.getCid() + "' and did = '" + did + "' and (signature ='' or signature is null)");
                                    if (list != null) {
                                        Object[] event = (Object[]) list.get(0);

                                        if (templist.get(0).split(" ")[0].equals(event[1].toString().split(" ")[0])) {
                                            if (Double.parseDouble(templist.get(2)) < Double.valueOf(event[0].toString())) {
                                                continue;
                                            }
                                        }
                                    }

                                    EventPower ep = new EventPower();

                                    ep.setTime(Timestamp.valueOf(templist.get(0)));
//                                    ep.setValue(Double.parseDouble(templist.get(2)));
                                    ep.setValue(Double.parseDouble(ToHex.formatString(templist.get(2))));
                                    ep.setDid(did);
                                    ep.setCid(tempet.getCid());
                                    ep.setSubtype(tempet.getSubtype());

                                    /************2018-12-24 马卫亮  ADD******************************/
                                    hbsessionDao.update("update EventPower set signature = 'admin',annotation = '相同类型的告警自动确认' where cid = '" + tempet.getCid() + "' and did='" + did + "' and  signature is null  ");
                                    /************2018-12-24 马卫亮  ADD******************************/
                                    hbsessionDao.insert(ep);
                                }
                            }
                        }

                    }

                }

//            PowerxbMonitor tempxb  = (PowerxbMonitor)hbsessionDao.getFirst("FROM PowerxbMonitor order by xbid desc");


            }
            System.out.println("完成电能质量THDU THDI 不平衡度 PF模块模块:" + System.currentTimeMillis());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            eventlist = null;
            eventlist2 = null;
            eventlist3 = null;
        }

    }
}
