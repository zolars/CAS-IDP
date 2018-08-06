package knowledgeManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.Knowledge;
import knowledgeManage.dao.KnowledgeTreeDAO;
import knowledgeManage.dao.impl.KnowledgeTreeDAOImpl;
import org.apache.struts2.ServletActionContext;
import userManage.dao.ComputerroomDAO;
import userManage.dao.impl.ComputerroomDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

//import hibernatePOJO.UserPermission;
//import net.sf.json.JSON;
//import net.sf.json.JSONObject;


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
    public String execute() throws Exception { //getUserTree() throws Exception{
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            KnowledgeTreeDAO dao = new KnowledgeTreeDAOImpl();
            List kltree = dao.getKnowledgeTree();

            for(int i = 0 ;i < kltree.size(); i++){
                Knowledge k = (Knowledge)kltree.get(i);
                System.out.println(k.getKid());
                System.out.println(k.getKname());
            }


            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allkltree", kltree);

            result = jsonObject;
            //result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
