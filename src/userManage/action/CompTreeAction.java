package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CompTreeAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /* 根据用户名查询用户id，依据用户id找到用户可查看界面的权限、及用户可访问的行级结构树状串
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String city = request.getParameter("cityid");

            UserDAO dao = new UserDAOImpl();

            List computerroom = dao.getComputerroom(city);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allcomputerroom", computerroom);

            result = jsonObject;
            //result = JSON.toJSONString(jsonObject); // List转json

            //存到 session 中,方便后续重复使用
            session.setAttribute("allcomputerroom", computerroom);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
