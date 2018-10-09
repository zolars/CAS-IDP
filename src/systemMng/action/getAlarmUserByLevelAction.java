package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.PermissionDAO;
import systemMng.dao.impl.PermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getAlarmUserByLevelAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 设置
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String level = request.getParameter("alarmlevel");

            PermissionDAO dao = new PermissionDAOImpl();
            List<String> alist = new ArrayList();
            alist = dao.getDeviceAlarmUserInfoByLevel(level);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alarmlist", alist);
            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
