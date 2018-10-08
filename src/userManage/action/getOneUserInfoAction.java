package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.User;
import hibernatePOJO.UserRoles;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



public class getOneUserInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 查询1个用户的基本信息、用户角色、用户权限
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String uidStr = request.getParameter("uid");
            String uidstr[] = uidStr.split("=");
            String uid = uidstr[1];

            UserDAO dao = new UserDAOImpl();
            User user = dao.getOneUserInfo(uid);
            UserRoles ur = dao.getUserRolesByUid(uid);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("user", user);
            jsonObject.put("userrole", ur);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
