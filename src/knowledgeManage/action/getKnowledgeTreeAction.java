package knowledgeManage.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import knowledgeManage.dao.KnowledgeTreeDAO;
import knowledgeManage.dao.impl.KnowledgeTreeDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;



public class getKnowledgeTreeAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /* 查询所有知识
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            KnowledgeTreeDAO dao = new KnowledgeTreeDAOImpl();
            List kltree = dao.getKnowledgeTree();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allkltree", kltree);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
