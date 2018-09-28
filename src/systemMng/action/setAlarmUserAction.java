package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.PermissionDAO;
import systemMng.dao.impl.PermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


public class setAlarmUserAction extends ActionSupport {
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
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String level = request.getParameter("alarmlevel");
            String isSMS = request.getParameter("issms");
            String isAlert = request.getParameter("isalert");
            String isPlantform = request.getParameter("isplantform");
            String precontent = request.getParameter("content");

            Integer iisSMS = 0;
            Integer iisAlert = 0;
            Integer iisPlantform = 0;

            if(isSMS != null)
                iisSMS = 1;
            if(isAlert != null)
                iisAlert = 1;
            if(isPlantform != null)
                iisPlantform = 1;

            PermissionDAO dao = new PermissionDAOImpl();
            Boolean rt = dao.setDeviceAlarmUserInfo(level, iisSMS, iisPlantform, iisAlert, precontent);

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
