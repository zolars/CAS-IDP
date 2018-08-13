package grabData;

import Util.HBSessionDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import hibernatePOJO.Dictionary;
import hibernatePOJO.DictionaryPlus;
import hibernatePOJO.Roles;
import org.apache.struts2.ServletActionContext;

//import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//import javax.servlet.http.HttpSessionContext;
import java.util.*;

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
                Thread.sleep(200000); //每隔200000ms执行一次
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

//           ------------------ 开始执行 ---------------------------
            System.out.println("____________________TIME:" + System.currentTimeMillis());

            //1.取数据,解析
            //从数据库中读取字典，list<map<String, Int>>类型
            //diclist为第一个字典，dicpluslist为第二个索引字典
            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

            List<Dictionary> list = hbsessionDao.search(
                    "FROM Dictionary");
            List<Map<String, Integer>> diclist = new ArrayList<>();

            for(int i = 0; i < list.size(); i++){
                System.out.println(list.get(i).getItem()+" "+list.get(i).getCoefficient());
                Map<String, Integer> map = new HashMap<>();
                map.put(list.get(i).getItem(), list.get(i).getCoefficient());
                diclist.add(map);
            }

            List<DictionaryPlus> dicpluslist = hbsessionDao.search(
                    "FROM DictionaryPlus");

            System.out.println(dicpluslist.get(0).getPart1Slaveid());
            System.out.println(dicpluslist.get(0).getPart2Slaveid());
            System.out.println(dicpluslist.get(0).getPart3Slaveid());
            System.out.println(dicpluslist.get(0).getPart4Slaveid());

            System.out.println(dicpluslist.get(0).getPart1Functioncode());

            System.out.println(dicpluslist.get(0).getPart1Length());

            System.out.println(dicpluslist.get(0).getPart1Start());


            //2.存数据库
            //将取到的数据分别按照实体类型存入表中
            //HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
            boolean rt = false;
            Roles role = new Roles();
            role.setRid(String.valueOf(System.currentTimeMillis()));
            role.setRolesname("name");
            role.setExtra("extra");
            //rt = hbsessionDao.insert(role);

            if(rt)
                System.out.println("存取成功");
            else  System.out.println("存取失败");

            //3.实时存入，方便后续读取



        }
    }
}
