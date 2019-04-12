package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.XBDAO;

public class XBDAOImpl implements XBDAO {

    public PowerxbMonitor getCurrentXbData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PowerxbMonitor powerxbMonitor = (PowerxbMonitor) hbsessionDao.getFirst(
                "FROM PowerxbMonitor where did = '" + did + "' order by time desc");

        return powerxbMonitor;
    }

}
