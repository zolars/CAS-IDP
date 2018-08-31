package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.DeviceThresholdDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import deviceManage.dao.impl.DeviceThresholdDAOImpl;
import hibernatePOJO.Devices;
import hibernatePOJO.DevicesThresholdV2;
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

    /*根据电能质量设备的名称找到设备id
    再根据设备id找到该设备下所有的设备阈值信息
     */
    public String execute() throws Exception {
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");
            //获取数据
            String dname = request.getParameter("dname");

            DeviceDAO dao = new DeviceDAOImpl();
            DeviceThresholdDAO dtdao = new DeviceThresholdDAOImpl();

            List<Devices> device = dao.getDeviceDataByName(dname);
            String did;

            if(device.size() == 0)
                return "error";
            else did = device.get(0).getDid();

            List<DevicesThresholdV2> dt = dtdao.getOneDeviceThreshold(did);

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
