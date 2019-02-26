package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class getChinaMapDataAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 获取按照省为单位的每个省所有时间范围内的等级+各类事件+各类告警个数
     */
    public String execute() throws Exception {
        Map<String, List<Integer>> plist = new HashMap<>();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            EventDAO dao = new EventDAOImpl();

            plist = dao.getAllProvinceEvent();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allplist", plist);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            plist = null;
        }
        return "success";
    }

}
