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

    public PowerxbMonitor getCurrentXbData(String did){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PowerxbMonitor powerxbMonitor = (PowerxbMonitor)hbsessionDao.getFirst(
                "FROM PowerxbMonitor where did = '" + did+ "' order by time desc");

        return powerxbMonitor;
    }

}
