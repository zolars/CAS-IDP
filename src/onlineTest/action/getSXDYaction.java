package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.SXDYDAO;
import onlineTest.dao.impl.SXDYDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getSXDYaction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据监测点设备获取SXDY数据
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String monitorpoint = request.getParameter("monitorpointid");

            SXDYDAO dao = new SXDYDAOImpl();

            List sxdydata = new ArrayList();

            sxdydata = dao.getCurrentSXDYData(monitorpoint);

            result = JSON.toJSONString(sxdydata); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
