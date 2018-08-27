package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.PowerEventDAO;
import efficiencyAnalysis.dao.impl.PowerEventDAOImpl;
import hibernatePOJO.EventTransient;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getPowerEventAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String rid = request.getParameter("rid");
            String starttime = request.getParameter("stime");
            String endtime = request.getParameter("etime");

            PowerEventDAO dao = new PowerEventDAOImpl();

            List<EventTransient> pedata = new ArrayList();

            pedata = dao.getLocalAllPowerEvent(rid, starttime, endtime);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allpelist", pedata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
