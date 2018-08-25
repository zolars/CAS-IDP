package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.Devices;
import hibernatePOJO.DevicesThreshold;
import hibernatePOJO.User;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

//import net.sf.json.JSON;
//import net.sf.json.JSONArray;


public class getDeviceThresholdAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /* 根据设备名称查询设备类型
       根据设备类型查找设备告警阈值信息
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String dtid = request.getParameter("dtid");

            DeviceDAO dao = new DeviceDAOImpl();

            List<Devices> devcielist = new ArrayList();
            List<DevicesThreshold> dtlist = new ArrayList();

            devcielist = dao.getDeviceDataByName(dtid);

            String type = devcielist.get(0).getType();

            dtlist = dao.getDeviceThresholdInfoByType(type);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alldtlist", dtlist);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
