package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceThresholdDAO;
import deviceManage.dao.impl.DeviceThresholdDAOImpl;
import hibernatePOJO.Devices;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String name = request.getParameter("name");

            DeviceThresholdDAO dao = new DeviceThresholdDAOImpl();

            List<Devices> dlist = new ArrayList();

            dlist = dao.searchFuzzyDeviceThreshold(name);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alldlist", dlist);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
