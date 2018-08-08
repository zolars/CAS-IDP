package grabData;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Roles;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyListener implements ServletContextListener {
    private MyThread myThread;

    public void contextDestroyed(ServletContextEvent e) {
        if (myThread != null && myThread.isInterrupted()) {
            myThread.interrupt();
        }
    }

    public void contextInitialized(ServletContextEvent e) {
        String str = null;
        if (str == null && myThread == null) {
            myThread = new MyThread();
            myThread.start(); // servlet 上下文初始化时启动 socket
        }
    }
}

/**
 * 自定义一个 Class 线程类继承自线程类，重写 run() 方法，用于从后台获取并处理数据
 */
class MyThread extends Thread {
    public void run() {
        while (!this.isInterrupted()) {// 线程未中断执行循环
            try {
                Thread.sleep(2000); //每隔2000ms执行一次
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

//           ------------------ 开始执行 ---------------------------
            System.out.println("____________________TIME:" + System.currentTimeMillis());

            //1.取数据,解析

            //2.存数据库
            //将取到的数据分别按照实体类型存入表中
            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
            boolean rt = false;
            Roles role = new Roles();
            role.setRid(String.valueOf(System.currentTimeMillis()));
            role.setRolesname("name");
            role.setExtra("extra");
            rt = hbsessionDao.insert(role);

            if(rt)
                System.out.println("存取成功");
            else  System.out.println("存取失败");

            //3.实时读取



        }
    }
}
