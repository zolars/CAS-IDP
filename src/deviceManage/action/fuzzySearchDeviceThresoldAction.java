package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceThresholdDAO;
import deviceManage.dao.impl.DeviceThresholdDAOImpl;
import hibernatePOJO.Devices;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class fuzzySearchDeviceThresoldAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /*获取模糊查询的设备阈值
     */
    public String execute() throws Exception {
        List<Devices> dlist = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String name = request.getParameter("name");

            DeviceThresholdDAO dao = new DeviceThresholdDAOImpl();
            dlist = dao.searchFuzzyDeviceThreshold(name);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alldlist", dlist);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            dlist = null;
        }
        return "success";
    }

}
