package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Permission;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import systemMng.dao.PermissionDAO;

import java.util.List;

public class PermissionDAOImpl implements PermissionDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    public List getPermissionTree(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Permission> list = hbsessionDao.search(
                "FROM Permission");

        return list;
    }


}
