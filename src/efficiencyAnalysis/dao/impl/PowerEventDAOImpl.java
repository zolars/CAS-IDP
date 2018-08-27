package efficiencyAnalysis.dao.impl;

import Util.HBSessionDaoImpl;
import efficiencyAnalysis.dao.PowerEventDAO;
import hibernatePOJO.Computerroom;
import hibernatePOJO.EventTransient;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class PowerEventDAOImpl implements PowerEventDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getLocalAllPowerEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventTransient> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventTransient> list = hbsessionDao.search(
                    "FROM EventTransient where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "' and eventtype='2'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public List getLocalAllDeviceEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventTransient> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventTransient> list = hbsessionDao.search(
                    "FROM EventTransient where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "' and eventtype='1'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public List getLocalAllEnvironmentEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventTransient> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventTransient> list = hbsessionDao.search(
                    "FROM EventTransient where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "' and eventtype='3'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

}
