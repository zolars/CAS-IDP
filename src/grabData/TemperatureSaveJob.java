package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.DevicesThreshold;
import hibernatePOJO.EventEnvironment;
import hibernatePOJO.EventPower;
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
                //1.实时数据存入数据库
                //2.监听温度越限事件，存入数据库
                if(tempData.getDid() !=  null){

                    hbsessionDao.insert(tempData);

                    //查询温度阈值
                    DevicesThreshold dt1 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where cid=344");
                    DevicesThreshold dt2 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where cid=345");

                    DevicesThreshold dt3 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where cid=346");
                    DevicesThreshold dt4 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where cid=347");

                    double temphigh = dt1.getCellval();
                    double templow = dt2.getFloorval();

                    double wethigh = dt3.getCellval();
                    double wetlow = dt4.getFloorval();

                    double temp = tempData.getTemperature();
                    double wet = tempData.getHumidity();

                    if(temp > temphigh){

                        EventEnvironment ee = new EventEnvironment();
                        ee.setCid(344);
                        ee.setDid(did);
                        ee.setTime(tempData.getTime());
                        ee.setValue(temp);

                        hbsessionDao.insert(ee);
                    }
                    else if(temp < templow){

                        EventPower ee = new EventPower();
                        ee.setCid(345);
                        ee.setDid(did);
                        ee.setTime(tempData.getTime());
                        ee.setValue(temp);

                        hbsessionDao.insert(ee);
                    }
                    else  if(wet > temphigh){

                        EventPower ee = new EventPower();
                        ee.setCid(346);
                        ee.setDid(did);
                        ee.setTime(tempData.getTime());
                        ee.setValue(wet);

                        hbsessionDao.insert(ee);
                    }
                    else if(wet < templow){

                        EventPower ee = new EventPower();
                        ee.setCid(347);
                        ee.setDid(did);
                        ee.setTime(tempData.getTime());
                        ee.setValue(wet);

                        hbsessionDao.insert(ee);
                    }

                }


            }
        }

    }
}
