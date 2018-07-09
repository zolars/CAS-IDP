package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.ProvinceBank;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.ProvinceDAO;

import java.util.List;

public class ProvinceDAOImpl implements ProvinceDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    public List getAllProvince(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<ProvinceBank> list = hbsessionDao.search(
                "FROM ProvinceBank");

        return list;
    }


}
