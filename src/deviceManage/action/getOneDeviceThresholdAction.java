package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.DeviceThresholdDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import deviceManage.dao.impl.DeviceThresholdDAOImpl;
import hibernatePOJO.Devices;
import hibernatePOJO.DevicesThreshold;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


public class getOneDeviceThresholdAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /*根据设备的名称找到设备id
    再根据设备id找到该设备下所有的设备阈值信息
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String dname = request.getParameter("dname");

            DeviceDAO dao = new DeviceDAOImpl();
            DeviceThresholdDAO dtdao = new DeviceThresholdDAOImpl();

            List<Devices> device = dao.getDeviceDataByName(dname);

            String did = device.get(0).getDid();

            List<DevicesThreshold> dt = dtdao.getOneDeviceThreshold(did);

            System.out.println("dddddddd"+dt.get(0).getName());

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alldtlist", dt);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
