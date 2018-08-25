package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import hibernatePOJO.PowerxbMonitor;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;


public class DataOnlineSaveJob implements Job {
    private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        //Map<Integer, Map<String, Float>> onlineDataMap = DataOnline.getOnlineDataMap();
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
            }
        }
    }
}
