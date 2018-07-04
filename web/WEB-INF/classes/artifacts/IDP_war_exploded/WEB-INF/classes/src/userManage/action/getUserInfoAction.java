package userManage.action;


import Util.ProvinceEnum;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.User;
import net.sf.json.JSONArray;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

//import hibernatePOJO.UserPermission;
//import net.sf.json.JSON;
//import net.sf.json.JSONObject;


public class getUserInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 查询所有用户的基本信息、用户角色、用户权限
     */
    public String execute() throws Exception { //getUserTree() throws Exception{
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            UserDAO dao = new UserDAOImpl();
            List alluser = dao.getAllUserInfo();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alluser", alluser);

            result = JSON.toJSONString(jsonObject);
            System.out.println(result);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
