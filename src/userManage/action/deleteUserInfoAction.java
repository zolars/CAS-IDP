package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;

public class deleteUserInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 删除一条用户信息、用户角色记录
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String uidstr = request.getParameter("uid");
            String uid[] = uidstr.split("=");

            UserDAO dao = new UserDAOImpl();
            Boolean rt = dao.deleteUserInfo(uid[1]);
            Boolean rt2 = dao.deleteUserRoles(uid[1]);

            JSONObject jsonObject = new JSONObject();

            if(rt&&rt2)
                jsonObject.put("提示", "删除成功！");
            else
                jsonObject.put("提示", "删除失败，请重试！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
