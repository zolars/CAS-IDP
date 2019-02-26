package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class deleteDeviceAlarmRolesAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据设备名称删除告警人员
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String auid = request.getParameter("auid");
            String str[] = auid.split("/");

            DeviceDAO dao = new DeviceDAOImpl();

            if (str.length == 2) {
                String uidset = dao.getDeviceAlarmUserSet(str[0]);

                String temp = uidset.replace(str[1], "");

                Boolean rt = dao.deleteDeviceAlarmUser(str[0], temp);
                JSONObject jsonObject = new JSONObject();

                if(rt) {
                    jsonObject.put("提示", "删除成功！");
                } else {
                    jsonObject.put("提示", "删除失败，请重试！");
                }
                result = JSON.toJSONString(jsonObject);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
