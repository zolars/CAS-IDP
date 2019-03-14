package deviceManage.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceThresholdDAO;
import deviceManage.dao.impl.DeviceThresholdDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
        List dt = new ArrayList();
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String dtidstr = request.getParameter("dtid");
            Integer dtid = Integer.parseInt(dtidstr);

            DeviceThresholdDAO dtdao = new DeviceThresholdDAOImpl();

            dt = dtdao.getOneofOneDeviceThreshold(dtid);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("devicesThreshold", dt);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }finally {
            dt = null;
        }
        return "success";
    }

}
