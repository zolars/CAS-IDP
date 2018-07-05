package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import onlineTest.dao.SXDYDAO;
import onlineTest.dao.XBDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class SXDYDAOImpl implements SXDYDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentSXDYData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        crlist.add(hbsessionDao.getFirst(
                "FROM PowersxdyMonitor where mpid = '" + monitorpoint+ "'"));

        return crlist;
    }


}
