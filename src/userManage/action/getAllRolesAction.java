package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.RolesDAO;
import userManage.dao.impl.RolesDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getAllRolesAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 查询所有角色list
     */
    public String execute() throws Exception {
        List allroles = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            RolesDAO dao = new RolesDAOImpl();
            allroles = dao.getAllRoles();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allroles", allroles);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            allroles = null;
        }
        return "success";
    }

}
