package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceThresholdDAO;
import deviceManage.dao.impl.DeviceThresholdDAOImpl;
import hibernatePOJO.DevicesThreshold;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


public class getOneOfOneDeviceThresholdAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /*根据阈值id找到其阈值信息
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String dtidstr = request.getParameter("dtid");
            Integer dtid = Integer.parseInt(dtidstr);

            DeviceThresholdDAO dtdao = new DeviceThresholdDAOImpl();

            List<DevicesThreshold> dt = dtdao.getOneofOneDeviceThreshold(dtid);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("devicesThreshold", dt);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
