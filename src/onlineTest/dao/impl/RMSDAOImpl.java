package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class RMSDAOImpl implements RMSDAO {

  /*  private Session session;
    private Transaction transaction;
    private Query query;
*/
    private List<PowerxbMonitor> u1list = new ArrayList<>();

    private float u1_1 = 0,u2_1 = 0,u3_1 = 0;
    private float v1_1 = 0,v2_1 = 0,v3_1 = 0;
    private float i1_1 = 0,i2_1 = 0,i3_1 = 0;

    private float u1_2 = 0,u2_2 = 0,u3_2 = 0;
    private float v1_2 = 0,v2_2 = 0,v3_2 = 0;
    private float i1_2 = 0,i2_2 = 0,i3_2 = 0;

    private float u1_3 = 0,u2_3 = 0,u3_3 = 0;
    private float v1_3 = 0,v2_3 = 0,v3_3 = 0;
    private float i1_3 = 0,i2_3 = 0,i3_3 = 0;

    //find max of the latest records
    double maxu1 = 0,maxu2 = 0,maxu3 = 0;
    double maxi1 = 0,maxi2 = 0,maxi3 = 0;
    double maxv1 = 0,maxv2 = 0,maxv3 = 0;


    public void getCurrentData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        u1list = hbsessionDao.searchWithNum(
                "FROM PowerxbMonitor where mpid = '" + monitorpoint+ "' order by time desc", 5);

        if(u1list.size() < 3){
            for(int i = 0; i < u1list.size(); i++){
                if(u1list.get(i).getU1Xb3() >= maxu1)
                    maxu1 = u1list.get(i).getU1Xb3();
                if(u1list.get(i).getU2Xb3() >= maxu2)
                    maxu2 = u1list.get(i).getU2Xb3();
                if(u1list.get(i).getU3Xb3() >= maxu3)
                    maxu3 = u1list.get(i).getU3Xb3();

                if(u1list.get(i).getI1Xb3() >= maxi1)
                    maxi1 = u1list.get(i).getI1Xb3();
                if(u1list.get(i).getI2Xb3() >= maxi2)
                    maxi2 = u1list.get(i).getI2Xb3();
                if(u1list.get(i).getI3Xb3() >= maxi3)
                    maxi3 = u1list.get(i).getI3Xb3();

                u1_1 += Math.pow(u1list.get(i).getU1Xb3(), 2);
                u2_1 += Math.pow(u1list.get(i).getU2Xb3(), 2);
                u3_1 += Math.pow(u1list.get(i).getU3Xb3(), 2);

              /*  v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/

                i1_1 += Math.pow(u1list.get(i).getI1Xb3(), 2);
                i2_1 += Math.pow(u1list.get(i).getI2Xb3(), 2);
                i3_1 += Math.pow(u1list.get(i).getI3Xb3(), 2);
            }
        }
        else{
            for(int j = 0; j < 3; j++) {
               if(j == 0){
                   for (int i = 0; i < 3; i++) {
                       if(u1list.get(i+j).getU1Xb3() >= maxu1)
                           maxu1 = u1list.get(i+j).getU1Xb3();
                       if(u1list.get(i+j).getU2Xb3() >= maxu2)
                           maxu2 = u1list.get(i+j).getU2Xb3();
                       if(u1list.get(i+j).getU3Xb3() >= maxu3)
                           maxu3 = u1list.get(i+j).getU3Xb3();

                       if(u1list.get(i+j).getI1Xb3() >= maxi1)
                           maxi1 = u1list.get(i+j).getI1Xb3();
                       if(u1list.get(i+j).getI2Xb3() >= maxi2)
                           maxi2 = u1list.get(i+j).getI2Xb3();
                       if(u1list.get(i+j).getI3Xb3() >= maxi3)
                           maxi3 = u1list.get(i+j).getI3Xb3();

                       u1_1 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                       u2_1 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                       u3_1 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                       i1_1 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                       i2_1 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                       i3_1 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                   }
               }
               else if(j == 1){
                   for (int i = 0; i < 3; i++) {
                       if(u1list.get(i+j).getU1Xb3() >= maxu1)
                           maxu1 = u1list.get(i+j).getU1Xb3();
                       if(u1list.get(i+j).getU2Xb3() >= maxu2)
                           maxu2 = u1list.get(i+j).getU2Xb3();
                       if(u1list.get(i+j).getU3Xb3() >= maxu3)
                           maxu3 = u1list.get(i+j).getU3Xb3();

                       if(u1list.get(i+j).getI1Xb3() >= maxi1)
                           maxi1 = u1list.get(i+j).getI1Xb3();
                       if(u1list.get(i+j).getI2Xb3() >= maxi2)
                           maxi2 = u1list.get(i+j).getI2Xb3();
                       if(u1list.get(i+j).getI3Xb3() >= maxi3)
                           maxi3 = u1list.get(i+j).getI3Xb3();

                       u1_2 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                       u2_2 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                       u3_2 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_2 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_2 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_2 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                       i1_2 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                       i2_2 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                       i3_2 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                   }
               }
               else if(j == 2){
                   for (int i = 0; i < 3; i++) {
                       if(u1list.get(i+j).getU1Xb3() >= maxu1)
                           maxu1 = u1list.get(i+j).getU1Xb3();
                       if(u1list.get(i+j).getU2Xb3() >= maxu2)
                           maxu2 = u1list.get(i+j).getU2Xb3();
                       if(u1list.get(i+j).getU3Xb3() >= maxu3)
                           maxu3 = u1list.get(i+j).getU3Xb3();

                       if(u1list.get(i+j).getI1Xb3() >= maxi1)
                           maxi1 = u1list.get(i+j).getI1Xb3();
                       if(u1list.get(i+j).getI2Xb3() >= maxi2)
                           maxi2 = u1list.get(i+j).getI2Xb3();
                       if(u1list.get(i+j).getI3Xb3() >= maxi3)
                           maxi3 = u1list.get(i+j).getI3Xb3();

                       u1_3 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                       u2_3 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                       u3_3 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_3 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_3 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_3 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                       i1_3 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                       i2_3 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                       i3_3 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                   }
               }
            }
        }
    }

    //(default time 3)(default time period = the latest 7 records)
    //RMS_U1 = sqrt(U1^2+U2^2+U3^2+....+UN^2)
    public List getCurrentRMSData(){
        List<RMS> rt = new ArrayList<>();

        if(u1list.size() < 3){
            RMS rtobj = new RMS();
            for(int i = 0; i < u1list.size(); i++){
                u1_1 += Math.pow(u1list.get(i).getU1Xb3(), 2);
                u2_1 += Math.pow(u1list.get(i).getU2Xb3(), 2);
                u3_1 += Math.pow(u1list.get(i).getU3Xb3(), 2);

              /*  v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/

                i1_1 += Math.pow(u1list.get(i).getI1Xb3(), 2);
                i2_1 += Math.pow(u1list.get(i).getI2Xb3(), 2);
                i3_1 += Math.pow(u1list.get(i).getI3Xb3(), 2);
            }
            rtobj.setU1(Math.sqrt(u1_1));
            rtobj.setU2(Math.sqrt(u2_1));
            rtobj.setU3(Math.sqrt(u3_1));
            rtobj.setI1(Math.sqrt(i1_1));
            rtobj.setI2(Math.sqrt(i2_1));
            rtobj.setI3(Math.sqrt(i3_1));
            rtobj.setV1(Math.sqrt(v1_1));
            rtobj.setV2(Math.sqrt(v2_1));
            rtobj.setV3(Math.sqrt(v3_1));

            Timestamp ts = new Timestamp(System.currentTimeMillis());
            String date = "";
            DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            date = sdf.format(ts);
            rtobj.setTime(u1list.get(0).getTime());

            rt.add(rtobj);
        }
        else{
            for(int j = 0; j < 3; j++) {
                if(j == 0){
                    RMS rtobj = new RMS();
                    for (int i = 0; i < 3; i++) {
                        u1_1 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_1 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_1 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_1 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_1 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_1 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_1));
                    rtobj.setU2(Math.sqrt(u2_1));
                    rtobj.setU3(Math.sqrt(u3_1));
                    rtobj.setI1(Math.sqrt(i1_1));
                    rtobj.setI2(Math.sqrt(i2_1));
                    rtobj.setI3(Math.sqrt(i3_1));
                    rtobj.setV1(Math.sqrt(v1_1));
                    rtobj.setV2(Math.sqrt(v2_1));
                    rtobj.setV3(Math.sqrt(v3_1));

                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
                else if(j == 1){
                    RMS rtobj = new RMS();
                    for (int i = 0; i < 3; i++) {
                        u1_2 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_2 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_2 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_2 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_2 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_2 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_2 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_2 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_2 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_2));
                    rtobj.setU2(Math.sqrt(u2_2));
                    rtobj.setU3(Math.sqrt(u3_2));
                    rtobj.setI1(Math.sqrt(i1_2));
                    rtobj.setI2(Math.sqrt(i2_2));
                    rtobj.setI3(Math.sqrt(i3_2));
                    rtobj.setV1(Math.sqrt(v1_2));
                    rtobj.setV2(Math.sqrt(v2_2));
                    rtobj.setV3(Math.sqrt(v3_2));

                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
                else if(j == 2){
                    RMS rtobj = new RMS();
                    for (int i = 0; i < 3; i++) {
                        u1_3 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_3 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_3 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
                          /*   v1_3 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_3 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_3 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_3 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_3 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_3 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_3));
                    rtobj.setU2(Math.sqrt(u2_3));
                    rtobj.setU3(Math.sqrt(u3_3));
                    rtobj.setI1(Math.sqrt(i1_3));
                    rtobj.setI2(Math.sqrt(i2_3));
                    rtobj.setI3(Math.sqrt(i3_3));
                    rtobj.setV1(Math.sqrt(v1_3));
                    rtobj.setV2(Math.sqrt(v2_3));
                    rtobj.setV3(Math.sqrt(v3_3));

                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
            }
        }
        return rt;
    }

    //(default time 3)(default time period = the latest 7 records)
    //THD_U1 = sqrt(U1^2+U2^2+U3^2+....+UN^2)/U1
    public List getCurrentTHDData(){
        List<THD> rt = new ArrayList<>();

        if(u1list.size() < 3){
            THD rtobj = new THD();
            for(int i = 0; i < u1list.size(); i++){
                u1_1 += Math.pow(u1list.get(i).getU1Xb3(), 2);
                u2_1 += Math.pow(u1list.get(i).getU2Xb3(), 2);
                u3_1 += Math.pow(u1list.get(i).getU3Xb3(), 2);

              /*  v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/

                i1_1 += Math.pow(u1list.get(i).getI1Xb3(), 2);
                i2_1 += Math.pow(u1list.get(i).getI2Xb3(), 2);
                i3_1 += Math.pow(u1list.get(i).getI3Xb3(), 2);
            }
            rtobj.setU1(Math.sqrt(u1_1)/u1list.get(0).getU1Xb3());
            rtobj.setU2(Math.sqrt(u2_1)/u1list.get(0).getU2Xb3());
            rtobj.setU3(Math.sqrt(u3_1)/u1list.get(0).getU3Xb3());
            rtobj.setI1(Math.sqrt(i1_1)/u1list.get(0).getI1Xb3());
            rtobj.setI2(Math.sqrt(i2_1)/u1list.get(0).getI2Xb3());
            rtobj.setI3(Math.sqrt(i3_1)/u1list.get(0).getI3Xb3());
            /*rtobj.setV1(Math.sqrt(v1_1)/u1list.get(0).getV1Xb3());
            rtobj.setV2(Math.sqrt(v2_1)/u1list.get(0).getV2Xb3());
            rtobj.setV3(Math.sqrt(v3_1)/u1list.get(0).getV3Xb3());*/

            Timestamp ts = new Timestamp(System.currentTimeMillis());
            String date = "";
            DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            date = sdf.format(ts);
            rtobj.setTime(u1list.get(0).getTime());

            rt.add(rtobj);
        }
        else{
            for(int j = 0; j < 3; j++) {
                if(j == 0){
                    THD rtobj = new THD();
                    for (int i = 0; i < 3; i++) {
                        u1_1 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_1 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_1 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_1 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_1 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_1 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_1)/u1list.get(0).getU1Xb3());
                    rtobj.setU2(Math.sqrt(u2_1)/u1list.get(0).getU2Xb3());
                    rtobj.setU3(Math.sqrt(u3_1)/u1list.get(0).getU3Xb3());
                    rtobj.setI1(Math.sqrt(i1_1)/u1list.get(0).getI1Xb3());
                    rtobj.setI2(Math.sqrt(i2_1)/u1list.get(0).getI2Xb3());
                    rtobj.setI3(Math.sqrt(i3_1)/u1list.get(0).getI3Xb3());
                    /*rtobj.setV1(Math.sqrt(v1_1)/u1list.get(0).getV1Xb3());
                    rtobj.setV2(Math.sqrt(v2_1)/u1list.get(0).getV2Xb3());
                    rtobj.setV3(Math.sqrt(v3_1)/u1list.get(0).getV3Xb3());*/

                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
                else if(j == 1){
                    THD rtobj = new THD();
                    for (int i = 0; i < 3; i++) {
                        u1_2 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_2 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_2 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_2 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_2 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_2 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_2 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_2 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_2 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_2)/u1list.get(1).getU1Xb3());
                    rtobj.setU2(Math.sqrt(u2_2)/u1list.get(1).getU2Xb3());
                    rtobj.setU3(Math.sqrt(u3_2)/u1list.get(1).getU3Xb3());
                    rtobj.setI1(Math.sqrt(i1_2)/u1list.get(1).getI1Xb3());
                    rtobj.setI2(Math.sqrt(i2_2)/u1list.get(1).getI2Xb3());
                    rtobj.setI3(Math.sqrt(i3_2)/u1list.get(1).getI3Xb3());
                 /*   rtobj.setV1(Math.sqrt(v1_2)/u1list.get(1).getV1Xb3());
                    rtobj.setV2(Math.sqrt(v2_2)/u1list.get(1).getV2Xb3());
                    rtobj.setV3(Math.sqrt(v3_2)/u1list.get(1).getV3Xb3());
*/
                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
                else if(j == 2){
                    THD rtobj = new THD();
                    for (int i = 0; i < 3; i++) {
                        u1_3 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_3 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_3 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
                          /*   v1_3 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_3 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_3 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_3 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_3 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_3 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_3)/u1list.get(2).getU1Xb3());
                    rtobj.setU2(Math.sqrt(u2_3)/u1list.get(2).getU2Xb3());
                    rtobj.setU3(Math.sqrt(u3_3)/u1list.get(2).getU3Xb3());
                    rtobj.setI1(Math.sqrt(i1_3)/u1list.get(2).getI1Xb3());
                    rtobj.setI2(Math.sqrt(i2_3)/u1list.get(2).getI2Xb3());
                    rtobj.setI3(Math.sqrt(i3_3)/u1list.get(2).getI3Xb3());
                /*    rtobj.setV1(Math.sqrt(v1_3)/u1list.get(2).getV1Xb3());
                    rtobj.setV2(Math.sqrt(v2_3)/u1list.get(2).getV2Xb3());
                    rtobj.setV3(Math.sqrt(v3_3)/u1list.get(2).getV3Xb3());*/

                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
            }
        }
        return rt;
    }

    //(default time 3)(default time period = the latest 7 records)
    //CF_U1 = max(U1,U2...UN)/sqrt(U1^2+U2^2+U3^2+....+UN^2)
    public List getCurrentCFData(){
        List<CF> rt = new ArrayList<>();

        if(u1list.size() < 3){
            CF rtobj = new CF();
            for(int i = 0; i < u1list.size(); i++){
                u1_1 += Math.pow(u1list.get(i).getU1Xb3(), 2);
                u2_1 += Math.pow(u1list.get(i).getU2Xb3(), 2);
                u3_1 += Math.pow(u1list.get(i).getU3Xb3(), 2);

              /*  v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/

                i1_1 += Math.pow(u1list.get(i).getI1Xb3(), 2);
                i2_1 += Math.pow(u1list.get(i).getI2Xb3(), 2);
                i3_1 += Math.pow(u1list.get(i).getI3Xb3(), 2);
            }
            rtobj.setU1(Math.sqrt(u1_1)/u1list.get(0).getU1Xb3());
            rtobj.setU2(Math.sqrt(u2_1)/u1list.get(0).getU2Xb3());
            rtobj.setU3(Math.sqrt(u3_1)/u1list.get(0).getU3Xb3());
            rtobj.setI1(Math.sqrt(i1_1)/u1list.get(0).getI1Xb3());
            rtobj.setI2(Math.sqrt(i2_1)/u1list.get(0).getI2Xb3());
            rtobj.setI3(Math.sqrt(i3_1)/u1list.get(0).getI3Xb3());
            /*rtobj.setV1(Math.sqrt(v1_1)/u1list.get(0).getV1Xb3());
            rtobj.setV2(Math.sqrt(v2_1)/u1list.get(0).getV2Xb3());
            rtobj.setV3(Math.sqrt(v3_1)/u1list.get(0).getV3Xb3());*/

            Timestamp ts = new Timestamp(System.currentTimeMillis());
            String date = "";
            DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            date = sdf.format(ts);
            rtobj.setTime(u1list.get(0).getTime());

            rt.add(rtobj);
        }
        else{
            for(int j = 0; j < 3; j++) {
                if(j == 0){
                    CF rtobj = new CF();
                    for (int i = 0; i < 3; i++) {
                        u1_1 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_1 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_1 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_1 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_1 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_1 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_1 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_1 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_1 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_1)/u1list.get(0).getU1Xb3());
                    rtobj.setU2(Math.sqrt(u2_1)/u1list.get(0).getU2Xb3());
                    rtobj.setU3(Math.sqrt(u3_1)/u1list.get(0).getU3Xb3());
                    rtobj.setI1(Math.sqrt(i1_1)/u1list.get(0).getI1Xb3());
                    rtobj.setI2(Math.sqrt(i2_1)/u1list.get(0).getI2Xb3());
                    rtobj.setI3(Math.sqrt(i3_1)/u1list.get(0).getI3Xb3());
                    /*rtobj.setV1(Math.sqrt(v1_1)/u1list.get(0).getV1Xb3());
                    rtobj.setV2(Math.sqrt(v2_1)/u1list.get(0).getV2Xb3());
                    rtobj.setV3(Math.sqrt(v3_1)/u1list.get(0).getV3Xb3());*/

                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
                else if(j == 1){
                    CF rtobj = new CF();
                    for (int i = 0; i < 3; i++) {
                        u1_2 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_2 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_2 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
             /*   v1_2 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_2 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_2 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_2 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_2 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_2 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_2)/u1list.get(1).getU1Xb3());
                    rtobj.setU2(Math.sqrt(u2_2)/u1list.get(1).getU2Xb3());
                    rtobj.setU3(Math.sqrt(u3_2)/u1list.get(1).getU3Xb3());
                    rtobj.setI1(Math.sqrt(i1_2)/u1list.get(1).getI1Xb3());
                    rtobj.setI2(Math.sqrt(i2_2)/u1list.get(1).getI2Xb3());
                    rtobj.setI3(Math.sqrt(i3_2)/u1list.get(1).getI3Xb3());
                 /*   rtobj.setV1(Math.sqrt(v1_2)/u1list.get(1).getV1Xb3());
                    rtobj.setV2(Math.sqrt(v2_2)/u1list.get(1).getV2Xb3());
                    rtobj.setV3(Math.sqrt(v3_2)/u1list.get(1).getV3Xb3());
*/
                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
                else if(j == 2){
                    CF rtobj = new CF();
                    for (int i = 0; i < 3; i++) {
                        u1_3 += Math.pow(u1list.get(i+j).getU1Xb3(), 2);
                        u2_3 += Math.pow(u1list.get(i+j).getU2Xb3(), 2);
                        u3_3 += Math.pow(u1list.get(i+j).getU3Xb3(), 2);
                          /*   v1_3 += Math.pow(u1list.get(i).getV1Xb3(), 2);
                v2_3 += Math.pow(u1list.get(i).getV2Xb3(), 2);
                v3_3 += Math.pow(u1list.get(i).getV3Xb3(), 2);*/
                        i1_3 += Math.pow(u1list.get(i+j).getI1Xb3(), 2);
                        i2_3 += Math.pow(u1list.get(i+j).getI2Xb3(), 2);
                        i3_3 += Math.pow(u1list.get(i+j).getI3Xb3(), 2);
                    }
                    rtobj.setU1(Math.sqrt(u1_3)/u1list.get(2).getU1Xb3());
                    rtobj.setU2(Math.sqrt(u2_3)/u1list.get(2).getU2Xb3());
                    rtobj.setU3(Math.sqrt(u3_3)/u1list.get(2).getU3Xb3());
                    rtobj.setI1(Math.sqrt(i1_3)/u1list.get(2).getI1Xb3());
                    rtobj.setI2(Math.sqrt(i2_3)/u1list.get(2).getI2Xb3());
                    rtobj.setI3(Math.sqrt(i3_3)/u1list.get(2).getI3Xb3());
                /*    rtobj.setV1(Math.sqrt(v1_3)/u1list.get(2).getV1Xb3());
                    rtobj.setV2(Math.sqrt(v2_3)/u1list.get(2).getV2Xb3());
                    rtobj.setV3(Math.sqrt(v3_3)/u1list.get(2).getV3Xb3());*/

                    Timestamp ts = new Timestamp(System.currentTimeMillis());
                    String date = "";
                    DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    date = sdf.format(ts);
                    rtobj.setTime(u1list.get(0).getTime());

                    rt.add(rtobj);
                }
            }
        }
        return rt;
    }

    //Hz
    public List getCurrentHzData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setHz(obj.get(i).getHz());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //Uunb
    public List getCurrentUnbData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowersxdyMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowersxdyMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowersxdyMonitor rtobj = new PowersxdyMonitor();
            rtobj.setUunb(obj.get(i).getUunb());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //W
    public List getCurrentWData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setP1(obj.get(i).getP1());
            rtobj.setP2(obj.get(i).getP2());
            rtobj.setP3(obj.get(i).getP3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //VA
    public List getCurrentVAData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setS1(obj.get(i).getS1());
            rtobj.setS2(obj.get(i).getS2());
            rtobj.setS3(obj.get(i).getS3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //Var
    public List getCurrentVarData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setQ1(obj.get(i).getQ1());
            rtobj.setQ2(obj.get(i).getQ2());
            rtobj.setQ3(obj.get(i).getQ3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //PF
    public List getCurrentPFData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setPf1(obj.get(i).getPf1());
            rtobj.setPf2(obj.get(i).getPf2());
            rtobj.setPf3(obj.get(i).getPf3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //DPF
    public List getCurrentDPFData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setCosPhi1(obj.get(i).getCosPhi1());
            rtobj.setCosPhi2(obj.get(i).getCosPhi2());
            rtobj.setCosPhi3(obj.get(i).getCosPhi3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //Tan
    public List getCurrentTanData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            Tan rtobj = new Tan();
            rtobj.setTan1(obj.get(i).getQ1()/obj.get(i).getP1());
            rtobj.setTan2(obj.get(i).getQ2()/obj.get(i).getP2());
            rtobj.setTan3(obj.get(i).getQ3()/obj.get(i).getP3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //Pst
    public List getCurrentPstData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setPstU1(obj.get(i).getPstU1());
            rtobj.setPstU2(obj.get(i).getPstU2());
            rtobj.setPstU3(obj.get(i).getPstU3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }

    //Plt
    public List getCurrentPltData(String monitorpoint){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        List<PowerparmMonitor> obj = hbsessionDao.searchWithNum(
                "FROM PowerparmMonitor where mpid = '" + monitorpoint+ "' order by time desc", 3);

        for(int i = 0; i < obj.size(); i++){
            PowerparmMonitor rtobj = new PowerparmMonitor();
            rtobj.setPltU1(obj.get(i).getPltU1());
            rtobj.setPltU2(obj.get(i).getPltU2());
            rtobj.setPltU3(obj.get(i).getPltU3());
            rtobj.setTime(obj.get(i).getTime());

            crlist.add(rtobj);
        }
        return crlist;
    }


}
