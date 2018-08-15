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


public class updateUserInfoAction extends ActionSupport {
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

            System.out.println("ttttttttt"+ uid+password+name+telephone+govtelephone+roles+province+city+computerroom);

            UserDAO dao = new UserDAOImpl();
            Boolean rt = dao.updateUserInfo(uid, password, name, chinesename, telephone, govtelephone, roles, province, city, computerroom);

            JSONObject jsonObject = new JSONObject();

            if(rt)
                jsonObject.put("提示", "修改成功！");
            else
                jsonObject.put("提示", "修改失败，请重试！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
