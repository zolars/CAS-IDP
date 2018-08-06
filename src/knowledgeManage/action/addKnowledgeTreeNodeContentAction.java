package knowledgeManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import knowledgeManage.dao.KnowledgeTreeDAO;
import knowledgeManage.dao.impl.KnowledgeTreeDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class addKnowledgeTreeNodeContentAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /*删除某个子节点知识
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取节点id
            String kid = request.getParameter("kid");
            String content = request.getParameter("tmpcontent");


            KnowledgeTreeDAO dao = new KnowledgeTreeDAOImpl();
            Boolean rt = dao.addKnowledgeNode(kid, content);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("boolvalue", rt);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
