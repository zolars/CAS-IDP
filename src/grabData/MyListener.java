package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Devices;
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
    }

    public void contextInitialized(ServletContextEvent e) {
        Thread dataThread = new Thread() {
            @Override
            public void run() {
                System.out.println("Begin to MyListener.........");
                HBSessionDaoImpl hbSessionDao = new HBSessionDaoImpl();

                // 从数据库取每种设备的配置信息(IP,port等)
                List<Devices> list = hbSessionDao.search("FROM Devices");

                // 从数据库中读取字典，datlist<map<String, Int>>类型
                // diclist为第一个字典，dicpluslist为第二个索引字典
                DataOnline.setDic(hbSessionDao.search("FROM Dictionary"));
                DataOnline.setDicPlus(hbSessionDao.search("FROM DictionaryPlus"));
                CtrlSave.setDic(hbSessionDao.search("FROM Dictionary_Ctrl"));

                if (null != list) {
                    // 创建取实时数据和暂态数据的client
                    for (Devices c : list) {
                        if (c.getType().equals("IDP")) {
                            try {
                                System.out.println("创建取实时数据连接 " + "监测点(" + c.getDid()
                                        + ") " + c.getiPaddress() + ":"
                                        + c.getPort());
                                new DataOnlineClient(c.getiPaddress(),
                                        Integer.parseInt(c.getPort()),
                                        c.getDid()).start();
                                System.out.println("创建取暂态事件连接 " + "监测点(" + c.getDid()
                                        + ") " + c.getiPaddress() + ":"
                                        + c.getPort());
                                new TransientClient(c.getiPaddress(),
                                        Integer.parseInt(c.getPort()),
                                        c.getDid()).start();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else if (c.getType().equals("temp")) {
                            try {
                                System.out.println("创建取实时数据连接 " + "温度监测点(" + c.getDid()
                                        + ") " + c.getiPaddress() + ":"
                                        + c.getPort());
                                new TempDataClient(c.getiPaddress(),
                                        Integer.parseInt(c.getPort()),
                                        c.getDid()).start();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else if (c.getType().equals("ctrl")) {
                            try {
                                System.out.println("创建取实时数据连接 " + "治理模块监测点("
                                        + c.getDid() + ") " + c.getiPaddress()
                                        + ":" + c.getPort());
                                new TempDataClient(c.getiPaddress(),
                                        Integer.parseInt(c.getPort()),
                                        c.getDid()).start();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    // 创建任务调度
                    try {
                        Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();
                        // 设置任务，每5s存一次实时数据
                        // 设置任务，检测告警（越线）事件
                        System.out.println(list.get(0).getOnlineinterval());
                        Trigger trigger1 = newTrigger()
                                .withIdentity("DataOnlineSaveTrigger",
                                        "DataOnlineSaveTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule().withIntervalInSeconds(
                                        Integer.parseInt(list.get(0)
                                                .getOnlineinterval()))
                                        .repeatForever())
                                .build();
                        JobDetail job1 = newJob(DataOnlineSaveJob.class).withIdentity(
                                "DataOnlineSaveJob", "DataOnlineSaveGroup").build();
                        scheduler.scheduleJob(job1, trigger1);

                        // 设置任务，每30分钟发一次暂态事件请求
                        TransientUtil.setInterval(
                                Integer.parseInt(list.get(0).getThansentinterval()));
                        Trigger trigger2 = newTrigger()
                                .withIdentity("transientRequestTrigger",
                                        "transientRequestTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule().withIntervalInMinutes(
                                        Integer.parseInt(list.get(0)
                                                .getThansentinterval()))
                                        .repeatForever())
                                .build();
                        JobDetail job2 = newJob(TransientRequestJob.class)
                                .withIdentity("transientRequestJob",
                                        "transientRequestJobGroup")
                                .build();
                        scheduler.scheduleJob(job2, trigger2);

                        // 设置任务，每1h上传一次本地事件数据到远程数据库
                        Trigger trigger3 = newTrigger()
                                .withIdentity("uploadDataTrigger",
                                        "uploadDataTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule().withIntervalInMinutes(
                                        Integer.parseInt(list.get(0)
                                                .getUploadinterval()))
                                        .repeatForever())
                                .build();
                        JobDetail job3 = newJob(uploadDataToCenterSvrJob.class)
                                .withIdentity("uploadDataToCenterSvrJob",
                                        "uploadDataToCenterSvrJobGroup")
                                .build();
                        scheduler.scheduleJob(job3, trigger3);

                        // 设置任务，每1天执行一次效能评估，记录在
                        Trigger trigger4 = newTrigger()
                                .withIdentity("assessModelTrigger",
                                        "assessModelTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule().withIntervalInHours(24)
                                        .repeatForever())
                                .build();
                        JobDetail job4 = newJob(assessModelJob.class)
                                .withIdentity("assessModelJob", "assessModelGroup")
                                .build();
                        scheduler.scheduleJob(job4, trigger4);

                        // 设置任务，每15分钟执行一次告警
                        Trigger trigger5 = newTrigger()
                                .withIdentity("alarmModelTrigger",
                                        "alarmModelTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule().withIntervalInMinutes(15)
                                        .repeatForever())
                                .build();
                        JobDetail job5 = newJob(alarmModelJob.class)
                                .withIdentity("alarmModelJob", "alarmModelGroup")
                                .build();
                        scheduler.scheduleJob(job5, trigger5);

                        // 设置任务，每10分钟存一次温度实时数据
                        Trigger trigger6 = newTrigger()
                                .withIdentity("TemperatureSaveTrigger",
                                        "TemperatureSaveTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule().withIntervalInMinutes(
                                        Integer.parseInt(list.get(1)
                                                .getOnlineinterval()))
                                        .repeatForever())
                                .build();
                        JobDetail job6 = newJob(TemperatureSaveJob.class).withIdentity(
                                "TemperatureSaveJob", "TemperatureSaveGroup").build();
                        scheduler.scheduleJob(job6, trigger6);

                        // 设置任务，实时读取治理模块告警
                        Trigger trigger7 = newTrigger()
                                .withIdentity("TemperatureSaveTrigger",
                                        "TemperatureSaveTriggerGroup")
                                .startNow()
                                .withSchedule(simpleSchedule().withIntervalInSeconds(5).repeatForever()).build();
                        JobDetail job7 = newJob(TemperatureSaveJob.class).withIdentity(
                                "TemperatureSaveJob", "TemperatureSaveGroup").build();
                        scheduler.scheduleJob(job7, trigger7);

                        ///////////////////////////
                        scheduler.start();
                    } catch (SchedulerException e) {
                        e.printStackTrace();
                    }

                }
            }
        };
        dataThread.start(); // servlet 上下文初始化时启动线程
    }
}
