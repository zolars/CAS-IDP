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


}
