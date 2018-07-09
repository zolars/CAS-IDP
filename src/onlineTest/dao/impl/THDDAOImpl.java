package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.THDDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class THDDAOImpl implements THDDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentTHDData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerxbMonitor rtobj = new PowerxbMonitor();

        List<PowerxbMonitor> u1list = new ArrayList<>();

        float u1 = 0,u2 = 0,u3 = 0;
        float i1 = 0,i2 = 0,i3 = 0;

        //(default time 3)(default time period = the latest 6 records,that is half a minute)
        //THD_U1 = sqrt(U1^2+U2^2+U3^2+....+UN^2)/U1

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

        rtobj.setU1Xb(Math.sqrt(u1)/u1list.get(0).getU1Xb());
        rtobj.setU2Xb(Math.sqrt(u2)/u1list.get(0).getU2Xb());
        rtobj.setU3Xb(Math.sqrt(u3)/u1list.get(0).getU3Xb());

        rtobj.setI1Xb(Math.sqrt(i1)/u1list.get(0).getI1Xb());
        rtobj.setI2Xb(Math.sqrt(i2)/u1list.get(0).getI2Xb());
        rtobj.setI3Xb(Math.sqrt(i3)/u1list.get(0).getI3Xb());

        rtobj.setTime(u1list.get(0).getTime());

        crlist.add(rtobj);

        //add THD -V1
        //add THD -V2
        //add THD -V3
        return crlist;
    }


}
