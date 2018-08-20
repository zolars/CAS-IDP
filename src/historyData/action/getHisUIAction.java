package historyData.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import historyData.dao.HisDAO;
import historyData.dao.impl.HisDAOImpl;
import onlineTest.dao.PowerParameterDAO;
import onlineTest.dao.impl.PowerParameterDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

//import net.sf.json.JSON;
//import net.sf.json.JSONArray;


public class getHisUIAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    public String execute() throws Exception { //getUserTree() throws Exception{
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String monitorpoint = request.getParameter("monitorpointid");
            String starttime = request.getParameter("starttime");
            String endtime = request.getParameter("endtime");

            HisDAO dao = new HisDAOImpl();

            List udata = new ArrayList();
            List idata = new ArrayList();

            udata = dao.getHisUData(monitorpoint, starttime, endtime);
            idata = dao.getHisIData(monitorpoint, starttime, endtime);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allhisU", udata);
            jsonObject.put("allhisI", idata);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
