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


    /* 根据检测点实时监测点XB数据
     */
    public String execute() throws Exception { //getUserTree() throws Exception{
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String monitorpoint = request.getParameter("monitorpointid");

            XBDAO dao = new XBDAOImpl();

            PowerxbMonitor xbdata = dao.getCurrentXbData(monitorpoint);

            result = JSON.toJSONString(xbdata); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
