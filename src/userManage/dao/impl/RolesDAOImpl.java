package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.RolesDAO;
import userManage.dao.UserDAO;

import java.util.ArrayList;
import java.util.List;

public class RolesDAOImpl implements RolesDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    public List getAllRoles(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Roles> list = hbsessionDao.search(
                "FROM Roles");

        return list;
    }


}
