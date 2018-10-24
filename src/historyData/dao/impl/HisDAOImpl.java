package historyData.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import historyData.dao.HisDAO;

import java.sql.Timestamp;
import java.util.*;

public class HisDAOImpl implements HisDAO {

    public  List getHisData(String did, String starttime, String endtime) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<PowerparmMonitor> crlist = new ArrayList<>();

        List rtlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "FROM PowerparmMonitor where did = '" + did + "' and time >= '"+ starttime + "' and time <= '" + endtime +"'");

        if (crlist != null) {
            for (int i = 0; i < crlist.size(); i++) {
                PowerparmMonitor temp = crlist.get(i);
                Map<String, Object> map = new LinkedHashMap<>();

                map.put("time", temp.getTime().toString());
                map.put("u1", temp.getU1());
                map.put("u2", temp.getU2());
                map.put("u3", temp.getU3());
                map.put("u4", temp.getU4());
                map.put("i1", temp.getI1());
                map.put("i2", temp.getI2());
                map.put("i3", temp.getI3());
                map.put("i4", temp.getI4());
                map.put("hz", temp.getHz());
                map.put("p1", temp.getP1());
                map.put("p2", temp.getP2());
                map.put("p3", temp.getP3());
                map.put("p", temp.getpFsum());
                map.put("s1", temp.getS1());
                map.put("s2", temp.getS2());
                map.put("s3", temp.getS3());
                map.put("s", temp.getSsum());
                map.put("q1", temp.getQ1());
                map.put("q2", temp.getQ2());
                map.put("q3", temp.getQ3());
                map.put("q", temp.getQsum());
                map.put("pf1", temp.getPf1());
                map.put("pf2", temp.getPf2());
                map.put("pf3", temp.getPf3());
                map.put("pf", temp.getpFsum());
                map.put("dpf1", temp.getPf1());
                map.put("dpf2", temp.getPf2());
                map.put("dpf3", temp.getPf3());
                map.put("dpf", temp.getpFsum());

                rtlist.add((Object) map);
            }
        }

        return rtlist;
    }

    @Override
    public List getHisDataLyTx(String did, String starttime, String endtime) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<?> crlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        crlist = hbsessionDao.search("select a.duration, a.value, b.description from EventPower a, EventsType b " +
                "where a.did='" + did + "' and a.time>='" + starttime + "' and a.time<='" + endtime + "' and (b.classify='塌陷' or b.classify='浪涌') and a.cid=b.cid");

        double baseValue = 220; //Ua Ub Uc的基值
        if (crlist != null) {
            for (int i = 0; i < crlist.size(); i++) {
                Map<String, Object> map = new LinkedHashMap<>();
                Object[] temp= (Object[])crlist.get(i);
                map.put("time", temp[0]);
                map.put("Ua",null);
                map.put("Ub",null);
                map.put("Uc",null);
                String description=(String)temp[2];
                if (description.indexOf("Ua")>=0) {
                    map.put("Ua",baseValue+(double)temp[1]);
                }
                if (description.indexOf("Ub")>=0) {
                    map.put("Ub",baseValue+(double)temp[1]);
                }
                if (description.indexOf("Uc")>=0) {
                    map.put("Uc",baseValue+(double)temp[1]);
                }
                rtlist.add((Object) map);
            }
        }

        return rtlist;
    }
}
