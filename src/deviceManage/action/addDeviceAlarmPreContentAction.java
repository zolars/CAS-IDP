package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class addDeviceAlarmPreContentAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /*添加设备告警内容
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String precontent = request.getParameter("precontent");

            DeviceDAO dao = new DeviceDAOImpl();

            Boolean rt = dao.addOneDeviceAlarmInfo(precontent);
            JSONObject jsonObject = new JSONObject();

            if(rt)
                jsonObject.put("提示", "成功！");
            else
                jsonObject.put("提示", "失败，请重试！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
