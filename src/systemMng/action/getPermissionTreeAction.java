package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.PermissionDAO;
import systemMng.dao.impl.PermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getPermissionTreeAction extends ActionSupport {

    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 查询所有功能权限
     */
    public String execute() throws Exception {
        List ptree = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            PermissionDAO dao = new PermissionDAOImpl();
            ptree = dao.getPermissionTree();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allptree", ptree);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            ptree = null;
        }
        return "success";
    }

}
