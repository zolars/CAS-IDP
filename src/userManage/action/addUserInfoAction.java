package userManage.action;


import Util.ToHex;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.security.MessageDigest;


public class addUserInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    /* 添加所有用户的基本信息
                   用户角色
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String account = request.getParameter("uaccount");
            String password = request.getParameter("upassword");
            String name = request.getParameter("uname");
            String telephone = request.getParameter("utelephone");
            String govtelephone = request.getParameter("ugovtelephone");

            String roles = request.getParameter("uroles");
            String province = request.getParameter("uprovince");
            String city = request.getParameter("ucity");
            String computerroom = request.getParameter("ucomputerroom");

            UserDAO dao = new UserDAOImpl();
            String uid = dao.getMaxUserId();
            Integer maxuid = Integer.parseInt(uid)+1;

            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] bytes = md.digest(password.getBytes("utf-8"));
            String passwd = ToHex.toHex(bytes);

            Boolean rt = dao.addUserInfo(maxuid.toString(), account, passwd, name, telephone, govtelephone, province, city, computerroom);
            Boolean rt2 = dao.addUserRolesInfo(maxuid.toString(), roles);

            JSONObject jsonObject = new JSONObject();

            if(rt&&rt2)
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
