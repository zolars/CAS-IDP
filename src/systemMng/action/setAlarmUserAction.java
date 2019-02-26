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
            String checkboxalert2 = request.getParameter("checkboxalert2");
            String checkboxsms2 = request.getParameter("checkboxsms2");
            String checkboxplantform2 = request.getParameter("checkboxplantform2");

            Integer alert = 0;
            Integer sms = 0;
            Integer plantform = 0;
            if(checkboxalert2 != null) {
                if (checkboxalert2.equals("on")) {
                    alert = 1;
                }
            }
            if(checkboxsms2 != null) {
                if (checkboxsms2.equals("on")) {
                    sms = 1;
                }
            }
            if(checkboxplantform2 != null){
               if(checkboxplantform2.equals("on")) {
                   plantform = 1;
               }
            }


            PermissionDAO dao = new PermissionDAOImpl();
            Boolean rt = dao.setDeviceAlarmUserInfo(level, precontent, alert, sms, plantform);

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
