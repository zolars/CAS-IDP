package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Computerroom;
import hibernatePOJO.Devices;
import onlineTest.dao.MonitorPointDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class MonitorPointDAOImpl implements MonitorPointDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getLocalAllMonitorPoint(String computerroom){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Computerroom cp = new Computerroom();

        List<Devices> list = new ArrayList<>();

        cp = (Computerroom)hbsessionDao.getFirst(
                "FROM Computerroom where rid = '" + computerroom+ "'");

        String didset = cp.getDidset();
        String did[] = didset.split(",");

        for(int i= 0; i < did.length; i++){
            Devices dv = (Devices)hbsessionDao.getFirst(
                    "FROM Devices where did = '" + did[i]+ "'");
            list.add(dv);
        }

        return list;
    }

}
