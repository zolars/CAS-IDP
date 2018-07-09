package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Roles;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.ComputerroomDAO;

import java.util.List;

public class ComputerroomDAOImpl implements ComputerroomDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    public List getAllComputerroom(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Roles> list = hbsessionDao.search(
                "FROM Computerroom");

        return list;
    }


}
