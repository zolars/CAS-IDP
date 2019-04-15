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


public class updateUserInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 更新某个用户的基本信息、用户角色、用户权限
       修改密码：只有管理员账号或账号本人可以修改密码
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String uid = request.getParameter("uid");
            String name = request.getParameter("uname");
            String password = request.getParameter("password");
            String chinesename = request.getParameter("chinesename");
            String telephone = request.getParameter("telephone");
            String govtelephone = request.getParameter("govtelephone");
            String roles = request.getParameter("rid");
            String province = request.getParameter("pbid");
            String city = request.getParameter("cbid");
            String computerroom = request.getParameter("ccid");
            String temuser = request.getParameter("temuser");

            Boolean rt1 = false;
            Boolean rt2 = false;

            UserDAO dao = new UserDAOImpl();

            if (password.equals("")) {
                rt1 = dao.checkUnameIsOccupiedForUpdate(uid, name);
                if (rt1) {
                    rt2 = dao.updateUserInfoWithoutPasswd(uid, name, chinesename, telephone, govtelephone, roles,
                            province, city, computerroom, temuser);
                }
            } else {
                MessageDigest md = MessageDigest.getInstance("MD5");
                byte[] bytes = md.digest(password.getBytes("utf-8"));
                String passwd = ToHex.toHex(bytes);

                rt1 = dao.checkUnameIsOccupiedForUpdate(uid, name);
                if (rt1) {
                    rt2 = dao.updateUserInfo(uid, passwd, name, chinesename, telephone, govtelephone, roles, province
                            , city, computerroom, temuser);
                }
            }

            JSONObject jsonObject = new JSONObject();

            if (rt2) {
                jsonObject.put("提示", "修改成功！");
            } else {
                jsonObject.put("提示", "修改失败，请联系管理员或者重试");
            }
            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
