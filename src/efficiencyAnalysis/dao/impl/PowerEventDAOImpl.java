package efficiencyAnalysis.dao.impl;

import Util.HBSessionDaoImpl;
import efficiencyAnalysis.dao.PowerEventDAO;
import hibernatePOJO.Computerroom;
import hibernatePOJO.Monitorpoints;
import monitorPoint.dao.MonitorPointDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class PowerEventDAOImpl implements PowerEventDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getLocalAllPowerEvent(String monitorpoint, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<PowerEventDAO> list = new ArrayList<>();

        System.out.println(starttime);
        System.out.println(endtime);

        list = hbsessionDao.search(
                "FROM EventPower where mpid = '" + monitorpoint+ "'" + " and occurtime > '" + starttime +
        "' and occurtime < '" + endtime + "'");

        return list;
    }


}
