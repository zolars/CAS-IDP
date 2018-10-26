package knowledgeManage.dao;


import hibernatePOJO.Knowledge;

import java.util.List;


public interface KnowledgeTreeDAO {

    public List getKnowledgeTree();

    public Knowledge getKnowledgeNode(String kid);

    public boolean updateKnowledgeNode(String kid, String tmpTitle, String content);

    public boolean deleteKnowledgeNode(String kid);

    public boolean addKnowledgeNode(String kid, String tmpTitle, String content);

    public boolean uploadKnowledgeNode(String kid, String content);

    public boolean isUserOrAdmin(String kid, String uid);

    public boolean isUser(String kid, String uid);

    public Integer getMaxKid();

    public boolean addKnowledgeTreeNodeStruct(Integer kid, String parentkid, String kname, String kcontent);

    public boolean updateKnowledgeTreeNodeStruct(String kid, String kname);

    public boolean deleteKnowledgeTreeNodeStruct(String kid);
}
