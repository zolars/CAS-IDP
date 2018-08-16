package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import onlineTest.dao.CFDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class CFDAOImpl implements CFDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List<Object> getCurrentCFData(String monitorpoint){
        List<Object> crlist = new ArrayList<>();
        return crlist;
    }
    /*public List<Object> getCurrentCFData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();
        PowerxbMonitor rtobj = new PowerxbMonitor();

        List<PowerxbMonitor> u1list = new ArrayList<>();

        float u1 = 0,u2 = 0,u3 = 0;
        float i1 = 0,i2 = 0,i3 = 0;

        //(default time 3)(default time period = the latest 5 records,that is half a minute)
        //CF_U1 = max(U1,U2...UN)/sqrt(U1^2+U2^2+U3^2+....+UN^2)

        u1list = hbsessionDao.searchWithNum(
                "FROM PowerxbMonitor where mpid = '" + monitorpoint+ "' and cishu = 3 order by time desc", 5);

       //find max of the latest records
        double maxu1 = 0,maxu2 = 0,maxu3 = 0;
        double maxi1 = 0,maxi2 = 0,maxi3 = 0;

        if(u1list.size() < 5){
            for(int i = 0; i < u1list.size(); i++){

                if(u1list.get(i).getU1Xb() >= maxu1)
                    maxu1 = u1list.get(i).getU1Xb();
                if(u1list.get(i).getU2Xb() >= maxu2)
                    maxu2 = u1list.get(i).getU2Xb();
                if(u1list.get(i).getU3Xb() >= maxu3)
                    maxu3 = u1list.get(i).getU3Xb();

                if(u1list.get(i).getI1Xb() >= maxi1)
                    maxi1 = u1list.get(i).getI1Xb();
                if(u1list.get(i).getI2Xb() >= maxi2)
                    maxi2 = u1list.get(i).getI2Xb();
                if(u1list.get(i).getI3Xb() >= maxi3)
                    maxi3 = u1list.get(i).getI3Xb();

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

        rtobj.setU1Xb(maxu1/Math.sqrt(u1));
        rtobj.setU2Xb(maxu2/Math.sqrt(u2));
        rtobj.setU3Xb(maxu3/Math.sqrt(u3));

        rtobj.setI1Xb(maxi1/Math.sqrt(i1));
        rtobj.setI2Xb(maxi2/Math.sqrt(i2));
        rtobj.setI3Xb(maxi3/Math.sqrt(i3));

        rtobj.setTime(u1list.get(0).getTime());

        crlist.add(rtobj);

        //add CF -V1
        //add CF -V2
        //add CF -V3
        return crlist;
    }
*/

}
