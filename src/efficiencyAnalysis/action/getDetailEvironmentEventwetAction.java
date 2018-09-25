package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import hibernatePOJO.EventPower;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getDetailEvironmentEventwetAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据测量地点（市行名称）获取详细的 第二页环境事件-湿度
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String cbname = request.getParameter("cbname");
            String starttime = request.getParameter("stime");
            String endtime = request.getParameter("etime");

            EventDAO dao = new EventDAOImpl();

            List<EventPower> pedata = new ArrayList();

            if((starttime == null && endtime == null)||(starttime.equals(" ") && endtime.equals(" ")))
                pedata = dao.getLocalLastDetailEnvironmentEventwet(cbname);

            else
                pedata = dao.getLocalAllDetailEnvironmentEventwet(cbname, starttime, endtime);

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
