package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.Devices;
import hibernatePOJO.User;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getAllIDPDeviceAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /*获取--10 IDP类型的设备名称
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
           // String devicename = request.getParameter("devicename");

            DeviceDAO dao = new DeviceDAOImpl();

            List<Devices> dlist = new ArrayList();

            dlist = dao.getAllIDPDevice();

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
