package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.PowerParameterDAO;
import onlineTest.dao.impl.PowerParameterDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;



public class getParameteractionHis extends ActionSupport {
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
    public String execute() throws Exception {
        List xbdata = new ArrayList();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String monitorpoint = request.getParameter("monitorpointid");
            String starttime = request.getParameter("starttime");
            String endtime = request.getParameter("endtime");

            PowerParameterDAO dao = new PowerParameterDAOImpl();

            xbdata = dao.getHisParameterData(monitorpoint, starttime, endtime);

            result = JSON.toJSONString(xbdata); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            xbdata = null;
        }
        return "success";
    }

}
