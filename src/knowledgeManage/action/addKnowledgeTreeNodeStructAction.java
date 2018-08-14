package knowledgeManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import knowledgeManage.dao.KnowledgeTreeDAO;
import knowledgeManage.dao.impl.KnowledgeTreeDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class addKnowledgeTreeNodeStructAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 分配新插入的子节点kid
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取节点id
            String kid = request.getParameter("kid");
            String kname = request.getParameter("kname");
            String kcontent = request.getParameter("kcontent");

            KnowledgeTreeDAO dao = new KnowledgeTreeDAOImpl();
            Integer maxkid = dao.getMaxKid();

            JSONObject jsonObject = new JSONObject();

            Boolean rt = dao.addKnowledgeTreeNodeStruct(maxkid+1, kid, kname, kcontent);

            if(rt)
                jsonObject.put("提示", "添加成功！");
            else
                jsonObject.put("提示", "添加失败，请重试！");

            // result = jsonObject;
            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
