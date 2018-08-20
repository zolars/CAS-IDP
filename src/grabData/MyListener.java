package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Dictionary;
import hibernatePOJO.DictionaryPlus;
import hibernatePOJO.Roles;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;


public class MyListener implements ServletContextListener {
    private Thread myThread;

    public void contextDestroyed(ServletContextEvent e) {
        if (myThread != null && myThread.isInterrupted()) {
            myThread.interrupt();
        }
    }

    public void contextInitialized(ServletContextEvent e) {
        String str = null;
        if (str == null && myThread == null) {
            myThread = new Thread(){
                @Override
                public void run() {
                    while (!this.isInterrupted()) {// 线程未中断执行循环
                        try {
                            Thread.sleep(500000); //每隔5000ms执行一次
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }

//           ------------------ 开始执行 ---------------------------
                      //  System.out.println("____________________TIME:" + System.currentTimeMillis());

                        //取数据,解析
                        //从数据库中读取字典，list<map<String, Int>>类型
                        //diclist为第一个字典，dicpluslist为第二个索引字典
                        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

                        List<Dictionary> list = hbsessionDao.search(
                                "FROM Dictionary");
                        List<DictionaryPlus> dicpluslist = hbsessionDao.search(
                                "FROM DictionaryPlus");
                        DataOnline.dic=list;
                        DataOnline.dicPlus=dicpluslist;

                        try {
                            Client.dataGet();
                        } catch (Exception e1) {
                            e1.printStackTrace();
                        }
                    }
                }
            };
            myThread.start(); // servlet 上下文初始化时启动 socket
        }
    }
}
