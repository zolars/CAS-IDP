package monitorPoint.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Computerroom;
import hibernatePOJO.Monitorpoints;
import monitorPoint.dao.MonitorPointDAO;
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
        List<Monitorpoints> list = new ArrayList<>();

        cp = (Computerroom)hbsessionDao.getFirst(
                "FROM Computerroom where rid = '" + computerroom+ "'");

        String mpidset = cp.getMpidset();
        String mpid[] = mpidset.split(",");

        for(int i= 0; i < mpid.length; i++){
            Monitorpoints mp = (Monitorpoints)hbsessionDao.getFirst(
                    "FROM Monitorpoints where mpid = '" + mpid[i]+ "'");
            list.add(mp);
        }

        return list;
    }


}
