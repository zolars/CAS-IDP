package historyData.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import historyData.dao.HisDAO;
import historyData.dao.impl.HisDAOImpl;
import onlineTest.dao.PowerParameterDAO;
import onlineTest.dao.impl.PowerParameterDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getHisLYTXAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
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

            String starttime = request.getParameter("starttime");
            String endtime = request.getParameter("endtime");

            HisDAO dao = new HisDAOImpl();

            List data = new ArrayList();

          //  data = dao.getHisGLData(monitorpoint, starttime, endtime);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allhisGL", data);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
