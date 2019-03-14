package userManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.RolesDAO;
import userManage.dao.impl.RolesDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class addRolesInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 新建一条角色
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String name = request.getParameter("rname");
            String extra = request.getParameter("rextra");

            RolesDAO dao = new RolesDAOImpl();
            String rid = dao.getMaxRolesId();
            int intrid = Integer.parseInt(rid) + 1; //将该数字加一
            String addrid = String.valueOf(intrid);
            Boolean rt = dao.addRolesInfo(addrid, name, extra);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("result", rt);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
