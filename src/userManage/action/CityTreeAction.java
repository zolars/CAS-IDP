package userManage.action;


import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CityTreeAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据用户名查询用户id，依据用户id找到用户可查看界面的权限、及用户可访问的行级结构树状串
     */
    public String execute() throws Exception {
        List citybank = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String province = request.getParameter("provinceid");
            String uname = request.getParameter("uname");

            UserDAO dao = new UserDAOImpl();

            citybank = dao.getCityBank(province + "分行", uname);

            result = JSON.toJSONString(citybank); //List转json

            //存到 session 中,方便后续重复使用
            session.setAttribute("citybank", citybank);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            citybank = null;
        }
        return "success";
    }

}
