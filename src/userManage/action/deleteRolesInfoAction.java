package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.RolesDAO;
import userManage.dao.impl.RolesDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class deleteRolesInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 删除某个角色、角色权限
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String ridstr = request.getParameter("rid");
            String rid[] = ridstr.split("=");

            RolesDAO dao = new RolesDAOImpl();
            Boolean rt1 = dao.deleteRolesInfo(rid[1]);
            Boolean rt2 = dao.deleteRolesPermission(rid[1]);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("result", rt1 && rt2);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
