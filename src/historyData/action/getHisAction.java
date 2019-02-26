package historyData.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import historyData.dao.HisDAO;
import historyData.dao.impl.HisDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class getHisAction extends ActionSupport {

    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String execute() throws Exception {
        List<Object> data = new ArrayList<>();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String did = request.getParameter("monitorpointid");
            String starttime = request.getParameter("starttime");
            String endtime = request.getParameter("endtime");

            HisDAO dao = new HisDAOImpl();

            data = dao.getHisData(did, starttime, endtime);
            JSONObject jsonObject = new JSONObject();

            jsonObject.put("data", data);

            result = JSON.toJSONString(data);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            data = null;
        }
        return "success";
    }

}
