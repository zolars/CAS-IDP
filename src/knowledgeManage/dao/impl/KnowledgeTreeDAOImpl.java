package knowledgeManage.dao.impl;

import Util.HBSessionCenterDaoImpl;
import Util.HBSessionDaoImpl;
import hibernatePOJO.Knowledge;
import hibernatePOJO.UserRoles;
import knowledgeManage.dao.KnowledgeTreeDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

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

    public boolean deleteKnowledgeNode(String kid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM Knowledge Where kid=?", kid);

        return rt;
    }

    public boolean addKnowledgeNode(String kid, String content){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;
        Knowledge kl = getKnowledgeNode(kid);
        kl.setContent(content);
        String hql = "update Knowledge kl set kl.content='" + content +"' where kl.kid='" + kid + "'";

        rt = hbsessionDao.update(kl, hql);
        return rt;
    }

    public boolean uploadKnowledgeNode(String kid, String content){
        HBSessionCenterDaoImpl hbsessioncenterDao = new HBSessionCenterDaoImpl();
        Boolean rt = false;
        Knowledge kl = getKnowledgeNode(kid);
        kl.setContent(content);
        String hql = "update Knowledge kl set kl.content='" + content +"' where kl.kid='" + kid + "'";

        //远程数据库的hbsession
        rt = hbsessioncenterDao.update(kl, hql);
        return rt;
    }

    /*
    根据kid查询uid 若uid与传入的uid一样，则为用户本身，返回true；若不一样，查询uid的角色是否为管理员，若是，则返回true；否则，返回false
     */
    public boolean isUserOrAdmin(String kid, String uid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Knowledge kl = (Knowledge)hbsessionDao.getFirst(
                "FROM Knowledge where kid = '" + kid + "'");

        if(kl.getUid().equals(uid))
            return true; //若uid与传入的uid一样，则为用户本身
        else{
            UserRoles ur = (UserRoles)hbsessionDao.getFirst(
                    "FROM UserRoles where uid = '" + uid + "'");

            if(ur.getRid() == "1")
                return true;

            else return false;
        }

    }

    /*
    根据kid查询uid 若uid与传入的uid一样，则为用户本身，返回true；否则，返回false
     */
    public boolean isUser(String kid, String uid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Knowledge kl = (Knowledge)hbsessionDao.getFirst(
                "FROM Knowledge where kid = '" + kid + "'");

        if(kl.getUid().equals(uid))
            return true; //若uid与传入的uid一样，则为用户本身
        else return false;

    }

    public Integer getMaxKid(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Knowledge kl = (Knowledge)hbsessionDao.getFirst(
                "FROM Knowledge order by kid desc");

        return kl.getKid();
    }

    /*
    判断是否为管理员，若是可以进行添加树结构的操作；否则，不可以
    */
    public boolean addKnowledgeTreeNodeStruct(Integer kid, String parentkid, String kname, String kcontent){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        Knowledge kluid = (Knowledge)hbsessionDao.getFirst(
                "FROM Knowledge where kid = '" + parentkid + "'");

        String uid = kluid.getUid();
        Integer pkid = Integer.parseInt(parentkid);

        Knowledge kl = new Knowledge();
        kl.setKid(kid);
        kl.setUid(uid);
        kl.setParentkid(pkid);
        kl.setKname(kname);
        kl.setContent(kcontent);

        rt = hbsessionDao.insert(kl);
        return rt;
    }

    public boolean updateKnowledgeTreeNodeStruct(String kid, String kname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;
        Knowledge kl = getKnowledgeNode(kid);
        kl.setKname(kname);
        String hql = "update Knowledge kl set kl.kname='" + kname +"' where kl.kid='" + kid + "'";

        rt = hbsessionDao.update(kl, hql);
        return rt;
    }


}
