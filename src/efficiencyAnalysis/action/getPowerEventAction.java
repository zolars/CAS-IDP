package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.PowerEventDAO;
import efficiencyAnalysis.dao.impl.PowerEventDAOImpl;
import monitorPoint.dao.MonitorPointDAO;
import monitorPoint.dao.impl.MonitorPointDAOImpl;
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


    /* 根据查询设备其他信息
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String monitorpoint = request.getParameter("monitorpoint");
            String starttime = request.getParameter("starttime");
            String endtime = request.getParameter("endtime");

            System.out.println(starttime);
            System.out.println(endtime);


            PowerEventDAO dao = new PowerEventDAOImpl();

            List pedata = new ArrayList();

            pedata = dao.getLocalAllPowerEvent(monitorpoint, starttime, endtime);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allpedata", pedata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
