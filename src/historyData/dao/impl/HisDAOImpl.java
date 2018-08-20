package historyData.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import historyData.dao.HisDAO;
import onlineTest.dao.CFDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class HisDAOImpl implements HisDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getHisUData(String monitorpoint, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<PowerparmMonitor> crlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        crlist = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' and time >= '"+ starttime + "' and time <= '" + endtime +"'", 5);

        for(int i = 0; i < crlist.size(); i++) {
            PowerparmMonitor tmp = crlist.get(i);
            rtlist.add(tmp.getU1());
            rtlist.add(tmp.getU2());
            rtlist.add(tmp.getU3());
            rtlist.add(tmp.getU4());
        }

        return rtlist;
    }

    public List getHisIData(String monitorpoint, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<PowerparmMonitor> crlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        crlist = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' and time >= '"+ starttime + "' and time <= '" + endtime +"'", 5);

        for(int i = 0; i < crlist.size(); i++) {
            PowerparmMonitor tmp = crlist.get(i);
            rtlist.add(tmp.getI1());
            rtlist.add(tmp.getI2());
            rtlist.add(tmp.getI3());
            rtlist.add(tmp.getI4());
        }

        return rtlist;
    }

    public List getHisHzData(String monitorpoint, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<PowerparmMonitor> crlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        crlist = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' and time >= '"+ starttime + "' and time <= '" + endtime +"'", 5);

        for(int i = 0; i < crlist.size(); i++) {
            PowerparmMonitor tmp = crlist.get(i);
            rtlist.add(tmp.getHz());
        }

        return rtlist;
    }

    public List getHisGLData(String monitorpoint, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<PowerparmMonitor> crlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        crlist = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' and time >= '"+ starttime + "' and time <= '" + endtime +"'", 5);

        for(int i = 0; i < crlist.size(); i++) {
            PowerparmMonitor tmp = crlist.get(i);
            rtlist.add(tmp.getP1());
            rtlist.add(tmp.getP1());
            rtlist.add(tmp.getP3());
            rtlist.add(tmp.getPsum());

            rtlist.add(tmp.getS1());
            rtlist.add(tmp.getS2());
            rtlist.add(tmp.getS3());
            rtlist.add(tmp.getSsum());

            rtlist.add(tmp.getPf1());
            rtlist.add(tmp.getPf2());
            rtlist.add(tmp.getPf3());
            rtlist.add(tmp.getpFsum());
        }

        return rtlist;
    }

}
