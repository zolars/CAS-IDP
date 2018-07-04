package userManage.action;

import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.User;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class UserLoginAction extends ActionSupport{
    private static final long serialVersionUID = 12L;

    private String username;
    private String password;

    public String getUsername() {
        return username;
    }


    public void setUsername(String username) {
        this.username = username;
    }


    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }

    /*
       登录验证过程，获取username及将uid放到session
     */
    public String execute() throws Exception{

        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();

        User user = new User();
        user.setUname(username);
        user.setPassword(password);

        UserDAO dao = new UserDAOImpl();

        if(dao.login(user)){
            String userid = dao.getUserId(user);
            //int userid = integer.intValue();
            if(userid != "") {
                session.setAttribute("userid", userid);
                session.setAttribute("username", username);
            }
            return "success";
        }
        return "failure";
    }

}
