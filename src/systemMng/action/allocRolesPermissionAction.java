package systemMng.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.RolesPermissionDAO;
import systemMng.dao.impl.RolesPermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class allocRolesPermissionAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    /* 分配给一个角色功能权限
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String pid = request.getParameter("pid");
            String ridStr = request.getParameter("rid");
            String ridstr[] = ridStr.split("=");
            String rid = ridstr[1];

            RolesPermissionDAO dao = new RolesPermissionDAOImpl();
            JSONObject jsonObject = new JSONObject();
            Boolean rt = dao.allocPermission(rid, pid);

            if (rt) {
                jsonObject.put("提示", "成功！");
            } else {
                jsonObject.put("提示", "失败，请重试！");
            }

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
