package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getOneComputerroomMapDataAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 获取机房的温度、湿度
     */
    public String execute() throws Exception {
        List<List<Integer>> oneprovince = new ArrayList<>();
        List<Integer> alarm = new ArrayList<>();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String compname = request.getParameter("compname");

            EventDAO dao = new EventDAOImpl();

            oneprovince = dao.getComputerroomWetAndHumdity(compname); //获取机房温度、湿度

            alarm = dao.getComputerroomAlarm(compname); //获取机房告警事件（分三大类） 根据未确定的事件 时间范围所有

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("oplist", oneprovince);
            jsonObject.put("oplistalarm", alarm);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            oneprovince = null;
            alarm = null;
        }
        return "success";
    }

}
