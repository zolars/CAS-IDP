package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.ComputerroomDAO;
import userManage.dao.impl.ComputerroomDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


public class getAllComputerroomAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 查询所有机房list
     */
    public String execute() throws Exception {
        /*try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            ComputerroomDAO dao = new ComputerroomDAOImpl();
            List allcomputerroom = dao.getAllComputerroom();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allcomputerroom", allcomputerroom);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }*/
        return "success";
    }

}
