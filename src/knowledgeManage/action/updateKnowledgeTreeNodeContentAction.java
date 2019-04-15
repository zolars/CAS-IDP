package knowledgeManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import knowledgeManage.dao.KnowledgeTreeDAO;
import knowledgeManage.dao.impl.KnowledgeTreeDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class updateKnowledgeTreeNodeContentAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 更新\修改某个子节点知识
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取节点id
            String kid = request.getParameter("kid");
            String tmpContent = request.getParameter("tmpContent");
            String tmpTitle = request.getParameter("tmpTitle");
            String userid = (String) session.getAttribute("userid");

            KnowledgeTreeDAO dao = new KnowledgeTreeDAOImpl();

            //判断是否为作者用户
            Boolean isValid = dao.isUser(kid, userid);
            JSONObject jsonObject = new JSONObject();

            if (isValid) {
                Boolean rt = dao.updateKnowledgeNode(kid, tmpTitle, tmpContent);

                if (rt) jsonObject.put("提示", "修改成功！");
                else jsonObject.put("提示", "修改失败，请重试！");
            } else jsonObject.put("提示", "修改失败，没有修改权限！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
