package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.XBDAO;
import onlineTest.dao.impl.XBDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

//import net.sf.json.JSON;
//import net.sf.json.JSONArray;


public class getXBaction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据用户名查询用户id，依据用户id找到用户可查看界面的权限、及用户可访问的行级结构树状串
     */
    public String execute() throws Exception { //getUserTree() throws Exception{
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            System.out.println("111");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String monitorpoint = request.getParameter("monitorpointid");

            System.out.println("222");

            XBDAO dao = new XBDAOImpl();

            List xbdata = new ArrayList();

            xbdata = dao.getCurrentXbData(monitorpoint);

            System.out.println("333");

            result = JSON.toJSONString(xbdata); // List转json

            System.out.println(result);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
