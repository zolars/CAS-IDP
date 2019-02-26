package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.MonitorPointDAO;
import onlineTest.dao.impl.MonitorPointDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getMonitorPointsEnvironmentAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据机房名称查询检测点IDP类型设备
     */
    public String execute() throws Exception {
        List mpdata = new ArrayList();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String computerroom = request.getParameter("computerroom");

            MonitorPointDAO dao = new MonitorPointDAOImpl();

            mpdata = dao.getLocalAllMonitorPointEnv(computerroom);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allmpdata", mpdata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            mpdata = null;
        }
        return "success";
    }

}
