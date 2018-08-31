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

        Map<Integer, PowerparmMonitor> parmMap=DataOnline.getParmMap();
        Map<Integer, PowerxbMonitor> xbMap=DataOnline.getXbMap();
        Map<Integer, PowersxdyMonitor> sxdyMap=DataOnline.getSxdyMap();
        if(null!=parmMap && null!=xbMap && null!=sxdyMap){
            Set<Integer> mpidSet = parmMap.keySet();
            Iterator<Integer> iterator = mpidSet.iterator();
            while (iterator.hasNext()) {
                Integer mpid = iterator.next();//监测点id
                PowerparmMonitor var = parmMap.get(mpid);
                PowerxbMonitor varxb = xbMap.get(mpid);
                PowersxdyMonitor varsxdy = sxdyMap.get(mpid);
                //实时数据存入数据库
                hbsessionDao.insert(var);
                hbsessionDao.insert(varxb);
                hbsessionDao.insert(varsxdy);

                // 检测告警（越线）事件
                Timestamp date = new Timestamp(System.currentTimeMillis());
                EventPower ep = new EventPower();
                ep.setMpid(1);  //根据实际修改
                ep.setOccurtime(date);

                List<DevicesThreshold> dtlist =  hbsessionDao.search("FROM DevicesThreshold where did='"+1+"'");

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


               /* DevicesThreshold dt1 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where did='"+1+"'");
                DevicesThreshold2 dt2 = (DevicesThreshold2)hbsessionDao.getFirst("FROM DevicesThreshold2 where did='"+1+"'");

                Timestamp date = new Timestamp(System.currentTimeMillis());
                EventPower ep = new EventPower();
                ep.setMpid(1);
                ep.setOccurtime(date);

                if(var.getU1() < dt1.getFloorvalU1()) {
                    ep.setContent("电压过低报警，当前值为" + var.getU1());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getU1() > dt1.getCellvalU1()) {
                    ep.setContent("电压过高报警，当前值为" + var.getU1());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getU2() < dt1.getFloorvalU2()) {
                    ep.setContent("电压过低报警，当前值为" + var.getU2());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getU2() > dt1.getCellvalU2()) {
                    ep.setContent("电压过高报警，当前值为" + var.getU2());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getU3() < dt1.getFloorvalU3()) {
                    ep.setContent("电压过低报警，当前值为" + var.getU3());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getU3() > dt1.getCellvalU3()) {
                    ep.setContent("电压过高报警，当前值为" + var.getU3());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getU4() < dt1.getFloorvalU4()) {
                    ep.setContent("电压过低报警，当前值为" + var.getU4());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getU4() > dt1.getCellvalU4()) {
                    ep.setContent("电压过高报警，当前值为" + var.getU4());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getI1() < dt1.getFloorvalI1()) {
                    ep.setContent("电流过低报警，当前值为" + var.getI1());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getI1() > dt1.getCellvalI1()) {
                    ep.setContent("电流过高报警，当前值为" + var.getI1());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getI2() < dt1.getFloorvalI2()) {
                    ep.setContent("电流过低报警，当前值为" + var.getI2());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getI2() > dt1.getCellvalI2()) {
                    ep.setContent("电流过高报警，当前值为" + var.getI2());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getI3() < dt1.getFloorvalI3()) {
                    ep.setContent("电流过低报警，当前值为" + var.getI3());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getI3() > dt1.getCellvalI3()) {
                    ep.setContent("电流过高报警，当前值为" + var.getI3());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getI4() < dt1.getFloorvalI4()) {
                    ep.setContent("电流过低报警，当前值为" + var.getI4());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getI4() > dt1.getCellvalI4()) {
                    ep.setContent("电流过高报警，当前值为" + var.getI4());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getP1() < dt1.getFloorvalP1()) {
                    ep.setContent("有功功率过低报警，当前值为" + var.getP1());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getP1() > dt1.getCellvalP1()) {
                    ep.setContent("有功功率过高报警，当前值为" + var.getP1());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getP2() < dt1.getFloorvalP2()) {
                    ep.setContent("有功功率过低报警，当前值为" + var.getP2());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getP2() > dt1.getCellvalP2()) {
                    ep.setContent("有功功率过高报警，当前值为" + var.getP2());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getP3() < dt1.getFloorvalP3()) {
                    ep.setContent("有功功率过低报警，当前值为" + var.getP3());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getP3() > dt1.getCellvalP3()) {
                    ep.setContent("有功功率过高报警，当前值为" + var.getP3());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getPsum() < dt1.getFloorvalPsum()) {
                    ep.setContent("有功功率过低报警，当前值为" + var.getPsum());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getPsum() > dt1.getCellvalPsum()) {
                    ep.setContent("有功功率过高报警，当前值为" + var.getPsum());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getQ1() < dt1.getFloorvalQ1()) {
                    ep.setContent("无功功率过低报警，当前值为" + var.getQ1());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getQ1() > dt1.getCellvalQ1()) {
                    ep.setContent("无功功率过高报警，当前值为" + var.getQ1());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getQ2() < dt1.getFloorvalQ2()) {
                    ep.setContent("无功功率过低报警，当前值为" + var.getQ2());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getQ2() > dt1.getCellvalQ2()) {
                    ep.setContent("无功功率过高报警，当前值为" + var.getQ2());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getQ3() < dt1.getFloorvalQ3()) {
                    ep.setContent("无功功率过低报警，当前值为" + var.getQ3());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getQ3() > dt1.getCellvalP3()) {
                    ep.setContent("无功功率过高报警，当前值为" + var.getQ3());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getQsum() < dt1.getFloorvalQsum()) {
                    ep.setContent("无功功率过低报警，当前值为" + var.getQsum());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getQsum() > dt1.getCellvalQsum()) {
                    ep.setContent("无功功率过高报警，当前值为" + var.getQsum());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getS1() < dt1.getFloorvalS1()) {
                    ep.setContent("视在功率过低报警，当前值为" + var.getS1());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getS1() > dt1.getCellvalS1()) {
                    ep.setContent("视在功率过高报警，当前值为" + var.getS1());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getS2() < dt1.getFloorvalS2()) {
                    ep.setContent("视在功率过低报警，当前值为" + var.getS2());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getS2() > dt1.getCellvalS2()) {
                    ep.setContent("视在功率过高报警，当前值为" + var.getS2());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getS3() < dt1.getFloorvalS3()) {
                    ep.setContent("视在功率过低报警，当前值为" + var.getS3());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getS3() > dt1.getCellvalS3()) {
                    ep.setContent("视在功率过高报警，当前值为" + var.getS3());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getPf1() < dt1.getFloorvalPf1()) {
                    ep.setContent("含谐波的功率因数过低报警，当前值为" + var.getPf1());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getPf1() > dt1.getCellvalPf1()) {
                    ep.setContent("含谐波的功率因数过高报警，当前值为" + var.getPf1());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getPf2() < dt1.getFloorvalPf2()) {
                    ep.setContent("含谐波的功率因数过低报警，当前值为" + var.getPf2());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getPf2() > dt1.getCellvalPf2()) {
                    ep.setContent("含谐波的功率因数过高报警，当前值为" + var.getPf2());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getPf3() < dt1.getFloorvalPf3()) {
                    ep.setContent("含谐波的功率因数过低报警，当前值为" + var.getPf3());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getPf3() > dt1.getCellvalPf3()) {
                    ep.setContent("含谐波的功率因数过高报警，当前值为" + var.getPf3());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getpFsum() < dt1.getFloorvalPFsum()) {
                    ep.setContent("含谐波的功率因数过低报警，当前值为" + var.getpFsum());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getpFsum() > dt1.getCellvalPFsum()) {
                    ep.setContent("含谐波的功率因数过高报警，当前值为" + var.getpFsum());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getCosPhi1() < dt1.getFloorvalCosPhi1()) {
                    ep.setContent("不含谐波的功率因数过低报警，当前值为" + var.getCosPhi1());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getCosPhi1() > dt1.getCellvalCosPhi1()) {
                    ep.setContent("不含谐波的功率因数过高报警，当前值为" + var.getCosPhi1());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getCosPhi2() < dt1.getFloorvalCosPhi2()) {
                    ep.setContent("不含谐波的功率因数过低报警，当前值为" + var.getCosPhi2());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getCosPhi2() > dt1.getCellvalCosPhi2()) {
                    ep.setContent("不含谐波的功率因数过高报警，当前值为" + var.getCosPhi2());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

                if(var.getCosPhi3() < dt1.getFloorvalCosPhi3()) {
                    ep.setContent("不含谐波的功率因数过低报警，当前值为" + var.getCosPhi3());
                    ep.setType(3);
                    ep.setEtype("2");
                    hbsessionDao.insert(ep);
                }
                else if(var.getCosPhi3() > dt1.getCellvalCosPhi3()) {
                    ep.setContent("不含谐波的功率因数过高报警，当前值为" + var.getCosPhi3());
                    ep.setType(3);
                    ep.setEtype("1");
                    hbsessionDao.insert(ep);
                }

*/


            }
        }
    }
}
