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


public class ThresholdSaveJob implements Job {
    private static HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

    }
}
