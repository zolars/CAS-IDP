package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.SXDYDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class RMSDAOImpl implements RMSDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getCurrentRMSData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<PowerxbMonitor> rt = new ArrayList<>();
        PowerxbMonitor rtobj = new PowerxbMonitor();

        List<PowerxbMonitor> u1list = new ArrayList<>();

        float u1 = 0,u2 = 0,u3 = 0;
        float i1 = 0,i2 = 0,i3 = 0;

        //(default time 3)(default time period = the latest 6 records,that is half a minute)
        //RMS_U1 = sqrt(U1^2+U2^2+U3^2+....+UN^2)

        u1list = hbsessionDao.searchWithNum(
                "FROM PowerxbMonitor where mpid = '" + monitorpoint+ "' and cishu = 3 order by time desc", 5);

        if(u1list.size() < 5){
            for(int i = 0; i < u1list.size(); i++){
                u1 += Math.pow(u1list.get(i).getU1Xb(), 2);
                u2 += Math.pow(u1list.get(i).getU2Xb(), 2);
                u3 += Math.pow(u1list.get(i).getU3Xb(), 2);

                i1 += Math.pow(u1list.get(i).getI1Xb(), 2);
                i2 += Math.pow(u1list.get(i).getI2Xb(), 2);
                i3 += Math.pow(u1list.get(i).getI3Xb(), 2);
            }
        }
        else{
            for(int i = 0; i < 5; i++){
                u1 += Math.pow(u1list.get(i).getU1Xb(), 2);
                u2 += Math.pow(u1list.get(i).getU2Xb(), 2);
                u3 += Math.pow(u1list.get(i).getU3Xb(), 2);

                i1 += Math.pow(u1list.get(i).getI1Xb(), 2);
                i2 += Math.pow(u1list.get(i).getI2Xb(), 2);
                i3 += Math.pow(u1list.get(i).getI3Xb(), 2);
            }
        }



        //add RMS -U1
        rtobj.setU1Xb(Math.sqrt(u1));
        //add RMS -U2
        rtobj.setU2Xb(Math.sqrt(u2));
        //add RMS -U3
        rtobj.setU3Xb(Math.sqrt(u3));

        //add RMS -I1
        rtobj.setI1Xb(Math.sqrt(i1));
        //add RMS -I2
        rtobj.setI2Xb(Math.sqrt(i2));
        //add RMS -I3
        rtobj.setI3Xb(Math.sqrt(i3));

        //add time
        /*Timestamp ts = new Timestamp(System.currentTimeMillis());
        String date = "";
        DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        date = sdf.format(ts);*/
        rtobj.setTime(u1list.get(0).getTime());

        rt.add(rtobj);

        //add RMS -V1
        //add RMS -V2
        //add RMS -V3
        return rt;
    }


}
