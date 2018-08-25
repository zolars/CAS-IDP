package historyData.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import historyData.dao.HisDAO;
import historyData.dao.impl.HisDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

//import net.sf.json.JSON;
//import net.sf.json.JSONArray;


public class getHisAction extends ActionSupport {
    /*private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }
*/
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String monitorpoint = request.getParameter("monitorpointid");
            String starttime = request.getParameter("starttime");
            String endtime = request.getParameter("endtime");

            HisDAO dao = new HisDAOImpl();

            List<Object> data = dao.getHisData(monitorpoint, starttime, endtime);
            JSONObject jsonObject = new JSONObject();

            jsonObject.put("data", data);

            result = JSON.toJSONString(data); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
