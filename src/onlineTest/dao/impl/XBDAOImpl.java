package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import onlineTest.dao.XBDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.UserDAO;

import java.util.ArrayList;
import java.util.List;

public class XBDAOImpl implements XBDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentXbData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "FROM PowerxbMonitor where mpid = '" + monitorpoint+ "'");

        return crlist;
    }

}
