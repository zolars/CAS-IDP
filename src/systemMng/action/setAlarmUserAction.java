package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.PermissionDAO;
import systemMng.dao.impl.PermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class setAlarmUserAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 设置某个level的告警内容
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String level = request.getParameter("alarmlevel");
            String precontent = request.getParameter("content");

            PermissionDAO dao = new PermissionDAOImpl();
            Boolean rt = dao.setDeviceAlarmUserInfo(level, precontent);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("", rt);
            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
