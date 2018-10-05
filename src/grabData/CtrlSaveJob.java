package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;


public class CtrlSaveJob implements Job {
    private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

        Map<String, EventCtrl> eventCtrlMap = CtrlSave.getEventCtrlMap();
        if (null != eventCtrlMap) {
            Set<String> didSet = eventCtrlMap.keySet();
            Iterator<String> iterator = didSet.iterator();
            while (iterator.hasNext()) {
                String did = iterator.next();  //监测点id
                EventCtrl var = eventCtrlMap.get(did);

                //实时数据存入数据库
                if (var.getDid() != null)
                    hbsessionDao.insert(var);

            }
        }
    }
}
