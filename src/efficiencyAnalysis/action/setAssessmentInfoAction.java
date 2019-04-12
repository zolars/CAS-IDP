package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import hibernatePOJO.EventPower;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class setAssessmentInfoAction extends ActionSupport {
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
        List<EventPower> pedata = new ArrayList();
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String red_yellow = request.getParameter("red_yellow");
            String yellow_green = request.getParameter("yellow_green");

            EventDAO dao = new EventDAOImpl();

            boolean rt = dao.setAssessInfo(Integer.parseInt(red_yellow), Integer.parseInt(yellow_green));
            JSONObject jsonObject = new JSONObject();

            if (rt) {
                jsonObject.put("提示", "设置成功！");
            } else {
                jsonObject.put("提示", "设置失败，请重试！");
            }
            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            pedata = null;
        }
        return "success";
    }

}
