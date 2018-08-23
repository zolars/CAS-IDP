package historyData.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import historyData.dao.HisDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.*;

public class HisDAOImpl implements HisDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public  List getHisData(String monitorpoint, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<PowerparmMonitor> crlist = new ArrayList<>();

        List rtlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' and time >= '"+ starttime + "' and time <= '" + endtime +"'");


        for(int i = 0; i < crlist.size(); i++){
            PowerparmMonitor temp = crlist.get(i);
            Map<String, Object> map = new LinkedHashMap<>();

           /* String datatime = temp.getTime().toString();
            String dats[] = datatime.split(" ");
            map.put("time", dats[0]);*/

            map.put("time", temp.getTime().toString());
            map.put("u1", temp.getU1());
            map.put("u2", temp.getU2());
            map.put("u3", temp.getU3());
            map.put("u4", temp.getU3());
            map.put("i1", temp.getI1());
            map.put("i2", temp.getI2());
            map.put("i3", temp.getI3());
            map.put("i4", temp.getI4());
            map.put("i", "250");
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

            map.put("dpf1", temp.getPf1());//
            map.put("dpf2", temp.getPf2());//
            map.put("dpf3", temp.getPf3());//
            map.put("dpf", temp.getpFsum());//
            rtlist.add((Object) map);
        }
        return rtlist;
    }


}
