package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.OrgnizationDAO;
import systemMng.dao.impl.OrgnizationDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getOrgnizationTreeAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 查询所有组织结构
     */
    public String execute() throws Exception {
        List otree = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            OrgnizationDAO dao = new OrgnizationDAOImpl();
            otree = dao.getOrgnizationTree();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allotree", otree);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            otree = null;
        }
        return "success";
    }

}
