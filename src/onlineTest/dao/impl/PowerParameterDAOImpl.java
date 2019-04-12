package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import onlineTest.dao.PowerParameterDAO;

import java.util.ArrayList;
import java.util.List;

public class PowerParameterDAOImpl implements PowerParameterDAO {

    public List<Object> getCurrentParameterData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        crlist.add(pm);

        return crlist;
    }

    public List<Object> getCurrentWData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        rtobj.setP1(pm.getP1());
        rtobj.setP2(pm.getP2());
        rtobj.setP3(pm.getP3());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentVAData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        rtobj.setS1(pm.getS1());
        rtobj.setS2(pm.getS2());
        rtobj.setS3(pm.getS3());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentVarData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        rtobj.setQ1(pm.getQ1());
        rtobj.setQ2(pm.getQ2());
        rtobj.setQ3(pm.getQ3());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentPFData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        rtobj.setPf1(pm.getPf1());
        rtobj.setPf2(pm.getPf2());
        rtobj.setPf3(pm.getPf3());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentDPFData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");


        rtobj.setCosPhi1(pm.getCosPhi1());
        rtobj.setCosPhi2(pm.getCosPhi2());
        rtobj.setCosPhi3(pm.getCosPhi3());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentTanData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        crlist.add(pm.getQ1() / pm.getP1());
        crlist.add(pm.getQ2() / pm.getP2());
        crlist.add(pm.getQ3() / pm.getP3());
//        crlist.add(pm.getQ1()/pm.getP1() + pm.getQ2()/pm.getP2() + pm.getQ3()/pm.getP3());

        crlist.add(pm.getTime());

        return crlist;
    }

    public List<Object> getCurrentPstData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        rtobj.setPstU1(pm.getPstU1());
        rtobj.setPstU2(pm.getPstU2());
        rtobj.setPstU3(pm.getPstU3());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentPltData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        rtobj.setPltU1(pm.getPltU1());
        rtobj.setPltU2(pm.getPltU2());
        rtobj.setPltU3(pm.getPltU3());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentHzData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor rtobj = new PowerparmMonitor();

        PowerparmMonitor pm = (PowerparmMonitor) hbsessionDao.getFirst(
                "FROM PowerparmMonitor where did = '" + did + "' order by time desc");

        rtobj.setHz(pm.getHz());
        rtobj.setTime(pm.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    public List<Object> getCurrentUnbData(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        PowersxdyMonitor pm = (PowersxdyMonitor) hbsessionDao.getFirst(
                "FROM PowersxdyMonitor where did = '" + did + "' order by time desc");

        crlist.add(pm);

        return crlist;
    }

    public List<Object> getHisParameterData(String did, String stime, String etime) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "FROM PowerparmMonitor where did = '" + did + "' and time>='" + stime + "' and time<=' " + etime + "'");

        return crlist;
    }

}
