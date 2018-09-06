package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowersxdyMonitor;
import onlineTest.dao.SXDYDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class SXDYDAOImpl implements SXDYDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getCurrentSXDYData(String did){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<PowersxdyMonitor> crlist = new ArrayList<>();

        PowersxdyMonitor ob = (PowersxdyMonitor)hbsessionDao.getFirst(
                "FROM PowersxdyMonitor where did = '" + did+ "' order by time Desc");

        crlist.add(ob);

        return crlist;
    }


}
