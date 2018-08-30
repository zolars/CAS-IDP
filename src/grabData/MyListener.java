package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.CaptureSetting;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;


public class MyListener implements ServletContextListener {
    public void contextDestroyed(ServletContextEvent e) {
//        if (myThread != null && myThread.isInterrupted()) {
//            myThread.interrupt();
//        }
    }

    public void contextInitialized(ServletContextEvent e) {
        Thread dataThread = new Thread(){
            @Override
            public void run() {
                HBSessionDaoImpl hbSessionDao=new HBSessionDaoImpl();
                //从数据库取监测点的配置信息(IP,port等)
                List<CaptureSetting> list=hbSessionDao.search("FROM CaptureSetting");
                //从数据库中读取字典，list<map<String, Int>>类型
                //diclist为第一个字典，dicpluslist为第二个索引字典
                DataOnline.setDic(hbSessionDao.search("FROM Dictionary"));
                DataOnline.setDicPlus(hbSessionDao.search("FROM DictionaryPlus"));
                //创建取实时数据和暂态数据的client
                if(null!=list){
                    for(CaptureSetting c:list){
                        try {
                            System.out.println("创建取实时数据连接 "+"监测点("+c.getMpid()+") "+c.getIp()+":"+c.getPort1());
                            new DataOnlineClient(c.getIp(),c.getPort1(),c.getMpid()).start();
                            System.out.println("创建取暂态事件连接 "+"监测点("+c.getMpid()+") "+c.getIp()+":"+c.getPort2());
                            new TransientClient(c.getIp(),c.getPort2(),c.getMpid()).start();
                        }
                        catch (Exception e){
                            e.printStackTrace();
                        }
                    }
                    //创建任务调度
                    try{
                        Scheduler scheduler=StdSchedulerFactory.getDefaultScheduler();
                        //设置任务，每5s存一次实时数据
                        //设置任务，检测告警（越线）事件
                        Trigger trigger1=newTrigger()
                                .withIdentity("DataOnlineSaveTrigger","DataOnlineSaveTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule()
                                        .withIntervalInSeconds(list.get(0).getOnlineinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job1=newJob(DataOnlineSaveJob.class)
                                .withIdentity("DataOnlineSaveJob","DataOnlineSaveGroup")
                                .build();
                        scheduler.scheduleJob(job1,trigger1);

                        //设置任务，每30分钟发一次暂态事件请求
                        TransientUtil.setInterval(list.get(0).getThansentinterval());
                        Trigger trigger2=newTrigger()
                                .withIdentity("transientRequestTrigger","transientRequestTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule()
                                        .withIntervalInMinutes(list.get(0).getThansentinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job2=newJob(TransientRequestJob.class)
                                .withIdentity("transientRequestJob","transientRequestJobGroup")
                                .build();
                        scheduler.scheduleJob(job2,trigger2);

                        //设置任务，每1h上传一次事件数据到远程数据库
                        Trigger trigger3=newTrigger()
                                .withIdentity("uploadDataTrigger","uploadDataTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule()
                                        .withIntervalInMinutes(list.get(0).getUploadinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job3=newJob(uploadDataToCenterSvrJob.class)
                                .withIdentity("uploadDataToCenterSvrJob","uploadDataToCenterSvrJobGroup")
                                .build();
                        scheduler.scheduleJob(job3,trigger3);


                        ///////////////////////////
                        scheduler.start();
                    }
                    catch (SchedulerException e){
                        e.printStackTrace();
                    }

                }
            }
        };
        dataThread.start(); // servlet 上下文初始化时启动线程
    }
}
