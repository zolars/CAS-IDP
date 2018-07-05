package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.CFDAO;
import onlineTest.dao.THDDAO;
import onlineTest.dao.impl.CFDAOImpl;
import onlineTest.dao.impl.THDDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

//import net.sf.json.JSON;
//import net.sf.json.JSONArray;


public class getQstCFaction extends ActionSupport {
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

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String monitorpoint = request.getParameter("monitorpointid");

            CFDAO dao = new CFDAOImpl();

            List qstdata = new ArrayList();

            qstdata = dao.getCurrentCFData(monitorpoint);

            result = JSON.toJSONString(qstdata); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
