package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.sql.Timestamp;
import java.util.*;


public class DataOnlineSaveJob implements Job {
    private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        Map<String, PowerparmMonitor> parmMap=DataOnline.getParmMap();
        Map<String, PowerxbMonitor> xbMap=DataOnline.getXbMap();
        Map<String, PowersxdyMonitor> sxdyMap=DataOnline.getSxdyMap();
        if(null!=parmMap && null!=xbMap && null!=sxdyMap){
            Set<String> mpidSet = parmMap.keySet();
            Iterator<String> iterator = mpidSet.iterator();
            while (iterator.hasNext()) {
                String mpid = iterator.next();//监测点id
                PowerparmMonitor var = parmMap.get(mpid);
                PowerxbMonitor varxb = xbMap.get(mpid);
                PowersxdyMonitor varsxdy = sxdyMap.get(mpid);
                //实时数据存入数据库
                hbsessionDao.insert(var);
                hbsessionDao.insert(varxb);
                hbsessionDao.insert(varsxdy);

                // 检测告警（越线）事件
             /*   Timestamp date = new Timestamp(System.currentTimeMillis());
                EventPower ep = new EventPower();
                ep.setMpid(1);  //根据实际修改
                ep.setOccurtime(date);

                List<DevicesThreshold> dtlist =  hbsessionDao.search("FROM DevicesThreshold where did='"+1+"'");

                if(dtlist != null){
                    for(DevicesThreshold dt:dtlist){
                        String str = dt.getName();

                        if(str.equals("U1"))
                        {
                            if(var.getU1() < dt.getFloorval()){
                                ep.setContent("电压过低报警，当前值为" + var.getU1());
                                ep.setType("3");
                                ep.setEtype("2");
                                ep.setAnnotation("");
                                ep.setSignature("");

                                if(dt.getIsMark()==1)
                                    ep.setIsMark(1);
                                else  ep.setIsMark(0);

                                hbsessionDao.insert(ep);
                            }
                            if(var.getU1() > dt.getCellval()){
                                ep.setContent("电压过高报警，当前值为" + var.getU1());
                                ep.setType("3");
                                ep.setEtype("1");
                                ep.setAnnotation("");
                                ep.setSignature("");

                                if(dt.getIsMark()==1)
                                    ep.setIsMark(1);
                                else  ep.setIsMark(0);

                                hbsessionDao.insert(ep);
                            }
                        }
                        if(str.equals("U2"))
                        {
                            if(var.getU2() < dt.getFloorval()){
                                ep.setContent("电压过低报警，当前值为" + var.getU2());
                                ep.setType("3");
                                ep.setEtype("2");
                                ep.setAnnotation("");
                                ep.setSignature("");

                                if(dt.getIsMark()==1)
                                    ep.setIsMark(1);
                                else  ep.setIsMark(0);

                                hbsessionDao.insert(ep);
                            }
                            if(var.getU2() > dt.getCellval()){
                                ep.setContent("电压过高报警，当前值为" + var.getU2());
                                ep.setType("3");
                                ep.setEtype("1");
                                ep.setAnnotation("");
                                ep.setSignature("");

                                if(dt.getIsMark()==1)
                                    ep.setIsMark(1);
                                else  ep.setIsMark(0);

                                hbsessionDao.insert(ep);
                            }
                        }
                        if(str.equals("U3"))
                        {
                            if(var.getU3() < dt.getFloorval()){
                                ep.setContent("电压过低报警，当前值为" + var.getU3());
                                ep.setType("3");
                                ep.setEtype("2");
                                ep.setAnnotation("");
                                ep.setSignature("");

                                if(dt.getIsMark()==1)
                                    ep.setIsMark(1);
                                else  ep.setIsMark(0);

                                hbsessionDao.insert(ep);
                            }
                            if(var.getU3() > dt.getCellval()){
                                ep.setContent("电压过高报警，当前值为" + var.getU3());
                                ep.setType("3");
                                ep.setEtype("1");
                                ep.setAnnotation("");
                                ep.setSignature("");

                                if(dt.getIsMark()==1)
                                    ep.setIsMark(1);
                                else  ep.setIsMark(0);

                                hbsessionDao.insert(ep);
                            }
                        }
                    }
                }*/

            }
        }
    }
}
