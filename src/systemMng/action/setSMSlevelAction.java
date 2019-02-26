package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.PermissionDAO;
import systemMng.dao.impl.PermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class setSMSlevelAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 设置level
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String input0 = request.getParameter("input0");
            String input1 = request.getParameter("input1");
            String input2 = request.getParameter("input2");
            String input3 = request.getParameter("input3");
            String input4 = request.getParameter("input4");
            String input5 = request.getParameter("input5");

            PermissionDAO dao = new PermissionDAOImpl();
            Boolean rt = dao.setsysLevel(input0, input1, input2, input3, input4, input5);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("", rt);
            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
