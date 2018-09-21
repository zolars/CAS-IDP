package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.TemperatureMonitor;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;


public class TemperatureSaveJob implements Job {
    private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        Map<String, TemperatureMonitor> tempDataMap = TemperatureSave.getTempDataMap();

        if(null != tempDataMap){
            Set<String> didSet = tempDataMap.keySet();
            Iterator<String> iterator = didSet.iterator();
            while (iterator.hasNext()) {
                String did = iterator.next();  //监测点id
                TemperatureMonitor tempData = tempDataMap.get(did);
                //实时数据存入数据库
                if(tempData.getDid() !=  null)
                    hbsessionDao.insert(tempData);
            }
        }

    }
}
