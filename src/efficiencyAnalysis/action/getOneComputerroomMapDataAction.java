package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;
import userManage.dao.CityDAO;
import userManage.dao.ProvinceDAO;
import userManage.dao.impl.ProvinceDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String compname = request.getParameter("compname");

            EventDAO dao = new EventDAOImpl();

            List<List<Integer>> oneprovince = dao.getComputerroomWetAndHumdity(compname);

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
