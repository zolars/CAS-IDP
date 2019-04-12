package systemMng.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class SearchAllDeviceAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /* 查询all设备
     */
    public String execute() throws Exception {
        List<String> list = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            DeviceDAO dao = new DeviceDAOImpl();

            list = dao.getAllDeviceName();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alardevicename", list);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            list = null;
        }
        return "success";
    }

}
