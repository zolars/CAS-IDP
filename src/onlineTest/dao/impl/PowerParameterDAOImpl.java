package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import onlineTest.dao.PowerParameterDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class PowerParameterDAOImpl implements PowerParameterDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentParameterData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "'");

        return crlist;
    }

    public List<Object> getCurrentWData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getP1());
        crlist.add(pm.getP2());
        crlist.add(pm.getP3());
        crlist.add(pm.getP1() + pm.getP2() + pm.getP3());

        return crlist;
    }

    public List<Object> getCurrentVAData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getS1());
        crlist.add(pm.getS2());
        crlist.add(pm.getS3());
        crlist.add(pm.getS1() + pm.getS2() + pm.getS3());

        return crlist;
    }

    public List<Object> getCurrentVarData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getQ1());
        crlist.add(pm.getQ2());
        crlist.add(pm.getQ3());
        crlist.add(pm.getQ1() + pm.getQ2() + pm.getQ3());

        return crlist;
    }

    public List<Object> getCurrentPFData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getPf1());
        crlist.add(pm.getPf2());
        crlist.add(pm.getPf3());
        crlist.add(pm.getPf1() + pm.getPf2() + pm.getPf3());

        return crlist;
    }

    public List<Object> getCurrentDPFData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getCosPhi1());
        crlist.add(pm.getCosPhi2());
        crlist.add(pm.getCosPhi3());
        crlist.add(pm.getCosPhi1() + pm.getCosPhi2() + pm.getCosPhi3());

        return crlist;
    }

    public List<Object> getCurrentTanData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getQ1()/pm.getP1());
        crlist.add(pm.getQ2()/pm.getP2());
        crlist.add(pm.getQ3()/pm.getP3());
        crlist.add(pm.getQ1()/pm.getP1() + pm.getQ2()/pm.getP2() + pm.getQ3()/pm.getP3());

        return crlist;
    }

    public List<Object> getCurrentPstData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getPstU1());
        crlist.add(pm.getPstU2());
        crlist.add(pm.getPstU3());
        crlist.add(pm.getPstU1() + pm.getPstU2() + pm.getPstU3());

        return crlist;
    }

    public List<Object> getCurrentPltData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getPltU1());
        crlist.add(pm.getPltU2());
        crlist.add(pm.getPltU3());
        crlist.add(pm.getPltU1() + pm.getPltU2() + pm.getPltU3());

        return crlist;
    }

    public List<Object> getCurrentHzData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getHz());

        return crlist;
    }

    public List<Object> getCurrentUnbData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc");

        crlist.add(pm.getUnb());

        return crlist;
    }

    public List<Object> getHisParameterData(String monitorpoint, String stime, String etime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "FROM PowerparmMonitorHis where mpid = '" + monitorpoint+ "' and time>='" + stime + "' and time<=' " + etime + "'");

        return crlist;
    }

}
