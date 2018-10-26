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

        Map<String, PowerparmMonitor> parmMap = DataOnline.getParmMap();
        Map<String, PowerxbMonitor> xbMap = DataOnline.getXbMap();
        Map<String, PowersxdyMonitor> sxdyMap = DataOnline.getSxdyMap();
        if (null != parmMap && null != xbMap && null != sxdyMap) {
            Set<String> didSet = parmMap.keySet();
            Iterator<String> iterator = didSet.iterator();
            while (iterator.hasNext()) {
                String did = iterator.next();  //监测点id

                PowerparmMonitor var = parmMap.get(did);
                PowerxbMonitor varxb = xbMap.get(did);
                PowersxdyMonitor varsxdy = sxdyMap.get(did);

                //实时数据存入数据库
                if (var.getDid() !=  null) {
                    hbsessionDao.insert(var);
                }
                if (varxb.getDid() !=  null) {
                    hbsessionDao.insert(varxb);
                }
                if (varsxdy.getDid() !=  null) {
                    hbsessionDao.insert(varsxdy);
                }

            }
        }
    }
}
