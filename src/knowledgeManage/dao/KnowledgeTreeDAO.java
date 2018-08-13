package knowledgeManage.dao;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.Knowledge;
import org.apache.struts2.ServletActionContext;
import userManage.dao.ComputerroomDAO;
import userManage.dao.impl.ComputerroomDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

//import hibernatePOJO.UserPermission;
//import net.sf.json.JSON;
//import net.sf.json.JSONObject;


public interface KnowledgeTreeDAO {

    public List getKnowledgeTree();

    public Knowledge getKnowledgeNode(String kid);

    public boolean updateKnowledgeNode(String kid, String content);

    public boolean deleteKnowledgeNode(String kid);

    public boolean addKnowledgeNode(String kid, String content);

    public boolean uploadKnowledgeNode(String kid, String content);



}
