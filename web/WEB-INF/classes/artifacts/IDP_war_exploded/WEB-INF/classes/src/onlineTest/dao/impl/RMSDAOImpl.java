package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.SXDYDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class RMSDAOImpl implements RMSDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentRMSData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerxbMonitor> u1list = new ArrayList<>();

        float u1 = 0,u2 = 0,u3 = 0;
        //(default time 3)(default time period = the latest 6 records,that is half a minute)
        //RMS_U1 = sqrt(U1^2+U2^2+U3^2+....+UN^2)

        u1list = hbsessionDao.search(
                "FROM PowerxbMonitor where mpid = '" + monitorpoint+ "' and cishu = 3 order by time desc");

        /*u1list = hbsessionDao.search(
                "FROM PowerxbMonitor where mpid = '" + monitorpoint+ "'" + " and cishu = 3 order by time desc limit 0,5");
*/
        System.out.println(u1list.size());

        for(int i = 0; i < 5; i++){
            u1 += Math.pow(u1list.get(i).getU1Xb(), 2);
        }

        //add RMS -U1
        crlist.add(Math.sqrt(u1));
        //add RMS -U2
        crlist.add(u2);
        //add RMS -U3
        crlist.add(u3);
        System.out.println(u1);
        System.out.println(u2);
        System.out.println(u3);

        //add RMS -V1
        //add RMS -V2
        //add RMS -V3

        //add RMS -I1
        //add RMS -I2
        //add RMS -I3








        return crlist;
    }


}
