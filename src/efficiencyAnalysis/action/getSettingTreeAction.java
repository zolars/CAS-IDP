package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getSettingTreeAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /* 获取事件类型树
     */
    public String execute() throws Exception {
        List plist = new ArrayList();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            EventDAO dao = new EventDAOImpl();

            plist = dao.getAllEventTypeTree();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allptree", plist);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            plist = null;
        }
        return "success";
    }

}
