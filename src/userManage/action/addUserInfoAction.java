package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import hibernatePOJO.UserPermission;
//import net.sf.json.JSON;
//import net.sf.json.JSONObject;


public class addUserInfoAction extends ActionSupport {
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
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //String monitorpointid = request.getParameter("monitorpointid");
            String account = request.getParameter("uaccount");
            String password = request.getParameter("upassword");
            String name = request.getParameter("uname");
            String telephone = request.getParameter("utelephone");
            String govtelephone = request.getParameter("ugovtelephone");

            String roles = request.getParameter("uroles");
            String province = request.getParameter("uprovince");
            String city = request.getParameter("ucity");
           // String computerroom = request.getParameter("ucomputerroom");

            System.out.println(account);

            UserDAO dao = new UserDAOImpl();
            Boolean rt = dao.addUserInfo(account, password, name, telephone, govtelephone, province, city);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("result", rt);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
