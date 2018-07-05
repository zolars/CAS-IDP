package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import onlineTest.dao.HzDAO;
import onlineTest.dao.UnbDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class UnbDAOImpl implements UnbDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentUnbData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getUnb());

        return crlist;
    }


}
