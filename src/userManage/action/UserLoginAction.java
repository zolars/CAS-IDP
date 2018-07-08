package userManage.action;

import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.User;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

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
       1.登录验证过程，获取username及将uid放到session
       2.若登录成功，获取用户所拥有权限对应的界面，放到session
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

                user.setUid(userid);

                List menulist = new ArrayList();
                List mlist = new ArrayList();
                mlist = dao.getUserDynamicMenu(user);

                for(int i = 0; i < mlist.size(); i++){
                   // System.out.println("i："+mlist.get(i));
                    if(mlist.get(i).equals("5")){
                        menulist.add("province.jsp");
                        menulist.add("efficiencyDevice.jsp");
                        menulist.add("onlineDetect.jsp");
                        menulist.add("efficiencyAnalysis.jsp");
                        menulist.add("efficiencyAssessment.jsp");
                        menulist.add("reportChart.jsp");
                    }
                    else if((mlist.get(i).equals("2"))||(mlist.get(i).equals("6"))||(mlist.get(i).equals("7"))||(mlist.get(i).equals("8"))){
                        menulist.add("userMng.jsp");
                    }
                    else if((mlist.get(i).equals("3"))||(mlist.get(i).equals("4"))){
                        menulist.add("systemSetting.jsp");
                    }
                }

                //remove deplicate url
                for(int i =  0 ;i < menulist.size() - 1 ;i++ ){
                    for(int j = menulist.size() - 1 ;j > i;j-- ){
                        if(menulist.get(j).equals(menulist.get(i))){
                            menulist.remove(j);
                        }
                    }
                }

                session.setAttribute("menulist", menulist);
            }
            return "success";
        }
        return "failure";
    }

}
