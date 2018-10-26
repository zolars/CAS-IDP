package knowledgeManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import knowledgeManage.dao.KnowledgeTreeDAO;
import knowledgeManage.dao.impl.KnowledgeTreeDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class uploadKnowledgeTreeAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 管理员和作者用户可以上传某个子节点知识到总服务器
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取节点id
            String kid = request.getParameter("kid");
            String tmpContent = request.getParameter("tmpContent");

            KnowledgeTreeDAO dao = new KnowledgeTreeDAOImpl();

            //判断是否为管理员和作者用户
            String userid = (String)session.getAttribute("userid");

            Boolean isValid = dao.isUserOrAdmin(kid, userid);
            JSONObject jsonObject = new JSONObject();

            if(isValid){
                Boolean rt = dao.uploadKnowledgeNode(kid, tmpContent);

                if(rt)
                    jsonObject.put("提示", "上传成功！");
                else
                    jsonObject.put("提示", "上传失败，请重试！");
            }
            else
                jsonObject.put("提示", "上传失败，没有上传权限！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
