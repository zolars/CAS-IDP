package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import onlineTest.dao.PowerParameterDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class PowerParameterDAOImpl implements PowerParameterDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentParameterData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

       // System.out.println("tttttttttttt  "+monitorpoint);

        crlist = hbsessionDao.search(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "'");

        //System.out.println("tttttttttttt  "+crlist.size());

        return crlist;
    }


}
