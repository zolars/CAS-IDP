package efficiencyAnalysis.dao.impl;

import Util.HBSessionDaoImpl;
import efficiencyAnalysis.dao.EventDAO;
import hibernatePOJO.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class EventDAOImpl implements EventDAO {

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
                            "' and time < '" + endtime + "'"); // and eventtype='2'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public List getLocalAllDeviceEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventDevice> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventDevice> list = hbsessionDao.search(
                    "FROM EventDevice where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "'"); // and eventtype='1'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public List getLocalAllEnvironmentEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventtypeEnvironment> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventtypeEnvironment> list = hbsessionDao.search(
                    "FROM EventtypeEnvironment where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "'"); //and eventtype='3'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        AssessmentSetting assess = new AssessmentSetting();
        assess.setRedyellow(red_yellow);
        assess.setYellowgreen(yellow_green);

        String hql = "update AssessmentSetting assess set assess.redyellow='" + red_yellow +
                "', assess.yellowgreen ='" + yellow_green + "' where assess.aid='" + 1 + "'";

        rt = hbsessionDao.update(assess, hql);

        return rt;

    }

}
