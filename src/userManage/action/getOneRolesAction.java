package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.Roles;
import org.apache.struts2.ServletActionContext;
import userManage.dao.RolesDAO;
import userManage.dao.impl.RolesDAOImpl;

import javax.servlet.http.HttpServletRequest;

public class getOneRolesAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 查询1个角色
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String ridStr = request.getParameter("rid");
            String ridstr[] = ridStr.split("=");
            String rid = ridstr[1];

            RolesDAO dao = new RolesDAOImpl();
            Roles roles = dao.getOneRolesInfo(rid);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("roles", roles);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
