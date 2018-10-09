package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class addDeviceAlarmUserAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 添加一个设备关联的告警
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String auser = request.getParameter("auser");
            String alevel = request.getParameter("alevel");

            DeviceDAO dao = new DeviceDAOImpl();

            Boolean rt = dao.addOneDeviceAlarmUser(auser, alevel);
            JSONObject jsonObject = new JSONObject();

            if(rt)
                jsonObject.put("提示", "添加成功！");
            else
                jsonObject.put("提示", "添加失败，请重试！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
