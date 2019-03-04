package grabData;

import Util.HBSessionDaoImpl;
import alarmUtil.WebSocketServer;
import deviceJobManager.JobManager;
import hibernatePOJO.BasicSetting;
import hibernatePOJO.Devices;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;
import sms.SmsClient;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.net.InetSocketAddress;
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
                System.out.println("MyListener AlarmServer Start.........");
                HBSessionDaoImpl hbSessionDao = new HBSessionDaoImpl();

                // 从数据库取每种设备的配置信息(IP,port等)
                List<Devices> list = hbSessionDao.search("FROM Devices");

                // 从数据库中读取字典，datlist<map<String, Int>>类型
                // diclist为第一个字典，dicpluslist为第二个索引字典
                DataOnline.setDic(hbSessionDao.search("FROM Dictionary"));
                DataOnline.setDicPlus(hbSessionDao.search("FROM DictionaryPlus"));

                // 从数据库取基础配置信息(采集频率、上传频率)
                List<BasicSetting> listbase = hbSessionDao.search("FROM BasicSetting");

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
                                        c.getDid().toString()).start();
                                System.out.println("创建取暂态事件连接 " + "监测点(" + c.getDid()
                                        + ") " + c.getiPaddress() + ":"
                                        + c.getExtra()); //暂态事件的端口是extra
                                new TransientClient(c.getiPaddress(),
                                        Integer.parseInt(c.getExtra()),
                                        c.getDid().toString()).start();
                                System.out.println("创建取越限事件连接 " + "监测点(" + c.getDid()
                                        + ") " + c.getiPaddress() + ":"
                                        + c.getExtra()); //越限事件的端口是extra
                                new OverLimitClient(c.getiPaddress(),
                                        Integer.parseInt(c.getExtra()),
                                        c.getDid().toString()).start();
                                System.out.println("创建写阈值数据连接 " + "监测点(" + c.getDid()
                                        + ") " + c.getiPaddress() + ":"
                                        + c.getPort());
                                new ThresholdClient(c.getiPaddress(),
                                        Integer.parseInt(c.getPort()),
                                        c.getDid().toString()).start();

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
                                        c.getDid().toString()).start();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else if (c.getType().equals("ctrl")) {
                            try {
                                System.out.println("创建取实时数据连接 " + "治理模块监测点("
                                        + c.getDid() + ") " + c.getiPaddress()
                                        + ":" + c.getPort());
                                new CtrlDataClient(c.getiPaddress(),
                                        Integer.parseInt(c.getPort()),
                                        c.getDid().toString()).start();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else if (c.getType().equals("SMS")) {
                            try {
                                System.out.println("创建SMS连接 "
                                        + c.getDid() + ") " + c.getiPaddress()
                                        + ":" + c.getPort());
                                new SmsClient(c.getiPaddress(),
                                        Integer.parseInt(c.getPort())).start();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    // 创建任务调度
                    try {
                      /*  Calendar calendar = Calendar.getInstance();
                        calendar.add(Calendar.SECOND, 20);
                        Date date = calendar.getTime();*/

                        Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();
                        // save scheduler
                        JobManager.setScheduler(scheduler);
                        // 设置任务，每5s存一次实时数据
                        Trigger trigger1 = newTrigger()
                                .withIdentity("triggerA",
                                        "triggerGroupA")
                                .startNow()
                                .withPriority(10)
                                .withSchedule(simpleSchedule().withIntervalInSeconds(listbase.get(0)
                                        .getOnlineinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job1 = newJob(DataOnlineSaveJob.class).withIdentity(
                                "jobA", "jobGroupA").build();
                        scheduler.scheduleJob(job1, trigger1);

                        // 设置任务，每10s读一次趋势图 THDU\THDI\不平衡度\PF的值是否越限，并记录这几个电能质量事件
                        Trigger trigger10 = newTrigger()
                                .withIdentity("triggerB",
                                        "triggerGroupB")
                                .startNow()
                                .withPriority(9)
                                .withSchedule(simpleSchedule().withIntervalInSeconds(listbase.get(0).getDatainterval()).repeatForever())
                                .build();
                        JobDetail job10 = newJob(DataOtherJob.class).withIdentity(
                                "jobB", "jobGroupB").build();
                        scheduler.scheduleJob(job10, trigger10);

                        // 设置任务，每15s存一次温度实时数据
                        Trigger trigger6 = newTrigger()
                                .withIdentity("triggerC",
                                        "triggerGroupC")
                                .startNow()
                                .withPriority(8)
                                .withSchedule(simpleSchedule().withIntervalInSeconds(listbase.get(0).getTempinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job6 = newJob(TemperatureSaveJob.class).withIdentity(
                                "jobC", "jobGroupC").build();
                        scheduler.scheduleJob(job6, trigger6);

                        // 设置任务，根据设定每多少分钟发一次暂态事件请求
                        TransientUtil.setInterval(listbase.get(0).getThansentinterval());
                        Trigger trigger2 = newTrigger()
                                .withIdentity("triggerD",
                                        "triggerGroupD")
                                .startNow()
                                .withPriority(7)
                                .withSchedule(simpleSchedule()
                                        .withIntervalInMinutes(listbase.get(0).getThansentinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job2 = newJob(TransientRequestJob.class)
                                .withIdentity("jobD",
                                        "jobGroupD")
                                .build();
                        scheduler.scheduleJob(job2, trigger2);

                        // 设置任务，根据设定每多少分钟发一次越线事件请求
                        OverLimitUtil.setInterval(listbase.get(0).getThansentinterval());
                        Trigger trigger9 = newTrigger()
                                .withIdentity("triggerE",
                                        "triggerGroupE")
                                .startNow()
                                .withPriority(6)
                                .withSchedule(simpleSchedule()
                                        .withIntervalInMinutes(listbase.get(0).getThansentinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job9 = newJob(OverLimitRequestJob.class)
                                .withIdentity("jobE",
                                        "jobGroupE")
                                .build();
                        scheduler.scheduleJob(job9, trigger9);

                        // 设置任务，实时读取治理模块数据并写入治理事件
                        Trigger trigger7 = newTrigger()
                                .withIdentity("triggerF",
                                        "triggerGroupF")
                                .startNow()
                                .withPriority(5)
                                .withSchedule(simpleSchedule().withIntervalInSeconds(listbase.get(0).getCtrlinterval()).repeatForever()).build();
                        JobDetail job7 = newJob(CtrlSaveJob.class).withIdentity(
                                "jobF", "jobGroupF").build();
                        scheduler.scheduleJob(job7, trigger7);

                        // 设置任务，每3分钟执行一次告警
                        Trigger trigger5 = newTrigger()
                                .withIdentity("triggerG",
                                        "triggerGroupG")
                                .startNow()
                                //.startAt(date)
                                .withPriority(4)
                                .withSchedule(simpleSchedule().withIntervalInMinutes(listbase.get(0).getAlarminterval())
                                        .repeatForever())
                                .build();
                        JobDetail job5 = newJob(AlarmModelJob.class)
                                .withIdentity("jobG", "jobGroupG")
                                .build();
                        scheduler.scheduleJob(job5, trigger5);

                        // 设置任务，每1天执行一次效能评估，记录在
                        Trigger trigger4 = newTrigger()
                                .withIdentity("triggerH",
                                        "triggerGroupH")
                                .startNow()
                                .withPriority(3)
                                .withSchedule(simpleSchedule().withIntervalInMinutes(listbase.get(0).getAssessinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job4 = newJob(assessModelJob.class)
                                .withIdentity("jobH", "jonGroupH")
                                .build();
                        scheduler.scheduleJob(job4, trigger4);

                       /* // 设置任务，每1min写入设备阈值设置
                        Trigger trigger8 = newTrigger()
                                .withIdentity("triggerI",
                                        "triggerGroupI")
                                .startNow()
                                .withPriority(2)
                                .withSchedule(simpleSchedule().withIntervalInSeconds(listbase.get(0).getThresholdsaveinterval()).repeatForever()).build();
                        JobDetail job8 = newJob(ThresholdSaveJob.class).withIdentity(
                                "jobI", "jobGroupI").build();
                        scheduler.scheduleJob(job8, trigger8);*/

                        /*设置任务，根据设定每多少小时上传一次本地事件数据到远程数据库
                        Trigger trigger3 = newTrigger()
                                .withIdentity("triggerJ",
                                        "triggerGroupJ")
                                .startNow()
                                .withPriority(1)
                                .withSchedule(simpleSchedule().withIntervalInHours(listbase.get(0)
                                        .getUploadinterval())
                                        .repeatForever())
                                .build();
                        JobDetail job3 = newJob(uploadDataToCenterSvrJob.class)
                                .withIdentity("jobJ",
                                        "jobGroupJ")
                                .build();
                        scheduler.scheduleJob(job3, trigger3);*/

                        // 打开服务器
//                        AlarmModelClient server = new AlarmModelClient();
////                        server.start(new InetSocketAddress(9999));
                        // 打开websocket server
                        new WebSocketServer(8989).start();

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
