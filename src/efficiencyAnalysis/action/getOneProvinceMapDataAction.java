package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;
import userManage.dao.ProvinceDAO;
import userManage.dao.impl.ProvinceDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getOneProvinceMapDataAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 获取省的所有时间范围内的等级+各类事件+各类告警个数
     */
    public String execute() throws Exception {
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String pname = request.getParameter("pname");
            String starttime = request.getParameter("stime");
            String endtime = request.getParameter("etime");
            
            EventDAO dao = new EventDAOImpl();
            ProvinceDAO pdap = new ProvinceDAOImpl();

            List<List<Integer>> oneprovince = new ArrayList<>();
            String pid = pdap.getProvinceIdByName(pname + "分行");

            oneprovince = dao.getOneProvinceEvent(pid, starttime, endtime);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("oplist", oneprovince);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
