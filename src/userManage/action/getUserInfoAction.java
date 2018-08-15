package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.User;
import hibernatePOJO.UserRoles;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
            List<User> alluserraw = dao.getAllUserInfo();
            List<User> alluser = dao.getAllUserInfo();

            //处理 ：undefined 转为 空
            //      组织转为组织名称
            for(int i = 0; i < alluserraw.size(); i++){
                User tmpur = alluserraw.get(i);

                if(tmpur.getPbid() == null)
                    tmpur.setPbid(" ");
                if(tmpur.getCbid() == null)
                    tmpur.setCbid(" ");
                if(tmpur.getRid() == null)
                    tmpur.setRid(" ");
                alluser.add(tmpur);
            }



            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alluser", alluser);
            //jsonObject.put("alluserrole", alluserrole);

            result = JSON.toJSONString(jsonObject);


        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
