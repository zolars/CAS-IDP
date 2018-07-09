package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.RolesDAO;
import userManage.dao.UserDAO;
import userManage.dao.impl.RolesDAOImpl;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import hibernatePOJO.UserPermission;
//import net.sf.json.JSON;
//import net.sf.json.JSONObject;


public class addRolesInfoAction extends ActionSupport {
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
            String name = request.getParameter("rname");
            String extra = request.getParameter("rextra");

            RolesDAO dao = new RolesDAOImpl();
            String rid = dao.getMaxRolesId();
            int intrid = Integer.parseInt(rid)+1;//将该数字加一
            String addrid = String.valueOf(intrid);
            Boolean rt = dao.addRolesInfo(addrid, name, extra);

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
