package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import hibernatePOJO.Devices;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class fuzzySearchDeviceAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /*获取模糊查询的设备
     */
    public String execute() throws Exception {
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String name = request.getParameter("name");

            DeviceDAO dao = new DeviceDAOImpl();

            List<Devices> dlist = new ArrayList();

            dlist = dao.searchFuzzyDevice(name);

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
