package grabData;

import Util.HBSessionDaoImpl;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;


public class CtrlSaveJob implements Job {
        private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

      /*  Map<String, List<EventCtrl>> eventCtrlMap = CtrlSave.getEventCtrlMap();
        if (null != eventCtrlMap) {
            Set<String> didSet = eventCtrlMap.keySet();
            Iterator<String> iterator = didSet.iterator();
            while (iterator.hasNext()) {
                String did = iterator.next();  //监测点id
                List<EventCtrl> var = eventCtrlMap.get(did);

                Iterator<EventCtrl> it = var.iterator();
                while (it.hasNext()) {
                    EventCtrl event = it.next();

                    //实时数据存入数据库
                    if (event.getDid() != null)
                        hbsessionDao.insert(event);
                }
            }
        }*/
    }
}
