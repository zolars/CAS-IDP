package knowledgeManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.CityBank;
import hibernatePOJO.Knowledge;
import knowledgeManage.dao.KnowledgeTreeDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.CityDAO;

import java.util.List;

public class KnowledgeTreeDAOImpl implements KnowledgeTreeDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    public List getKnowledgeTree(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Knowledge> list = hbsessionDao.search(
                "FROM Knowledge");

        return list;
    }

    public Knowledge getKnowledgeNode(String kid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Knowledge kl = (Knowledge)hbsessionDao.getFirst(
                "FROM Knowledge where kid = '" + kid + "'");

        return kl;
    }

    public boolean updateKnowledgeNode(String kid, String content){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;
        Knowledge kl = getKnowledgeNode(kid);
        kl.setContent(content);
        String hql = "update Knowledge kl set kl.content='" + content +"' where kl.kid='" + kid + "'";

        rt = hbsessionDao.update(kl, hql);
        return rt;
    }


}
