package efficiencyAnalysis.dao.impl;

import Util.HBSessionDaoImpl;
import efficiencyAnalysis.dao.EventDAO;
import hibernatePOJO.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EventDAOImpl implements EventDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getLocalAllPowerEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventTransient> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventTransient> list = hbsessionDao.search(
                    "FROM EventTransient where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "'"); // and eventtype='2'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public List getLocalAllDeviceEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventDevice> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventDevice> list = hbsessionDao.search(
                    "FROM EventDevice where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "'"); // and eventtype='1'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public List getLocalAllEnvironmentEvent(String rid, String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventtypeEnvironment> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventtypeEnvironment> list = hbsessionDao.search(
                    "FROM EventtypeEnvironment where mpid = '" + didset[i]+ "'" + " and time > '" + starttime +
                            "' and time < '" + endtime + "'"); //and eventtype='3'");

            rtlist.addAll(list);
        }

        return rtlist;
    }

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        AssessmentSetting assess = new AssessmentSetting();
        assess.setRedyellow(red_yellow);
        assess.setYellowgreen(yellow_green);

        String hql = "update AssessmentSetting assess set assess.redyellow='" + red_yellow +
                "', assess.yellowgreen ='" + yellow_green + "' where assess.aid='" + 1 + "'";

        rt = hbsessionDao.update(hql);  //assess,

        return rt;

    }

    public List getAllCityEvent(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<AssessRecord> rtlist = hbsessionDao.search(
                "FROM AssessRecord");

        System.out.println(rtlist.get(0).getAid());

        return rtlist;
    }

    public Map getAllProvinceEvent(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Map<String, List<Integer>> rtmap = new HashMap<>();

        List<ProvinceBank> provblist = hbsessionDao.search(
                "FROM ProvinceBank");

      //  System.out.println(provblist.size());

        for(int j = 0; j < provblist.size(); j++) {

            Integer evnum1 = 0, evnum2 = 0, evnum3 = 0, evnum4 = 0;
            Integer anum1 = 0, anum2 = 0, anum3 = 0, anum4 = 0;

            String cbidset = provblist.get(j).getCbidset();

            if(cbidset == null){

            }

            else{

                String cbidstr[] = cbidset.split(",");

                for(int i = 0 ; i < cbidstr.length; i++){
                    AssessRecord record = (AssessRecord)hbsessionDao.getFirst(
                            "FROM AssessRecord where cbid='" + cbidstr[i] +"'");
                    if(record != null){
                        evnum1 += record.getPowernum();
                        evnum2 += record.getTempreturenum();
                        evnum3 += record.getWetnum();
                        evnum4 += record.getDevicenum();
                        anum1 += record.getApowernum();
                        anum2 += record.getAtempreturenum();
                        anum3 += record.getAwetnum();
                        anum4 += record.getAdevicenum();
                    }
                }
            }

            List<Integer> nlist = new ArrayList();
            nlist.add(evnum1);
            nlist.add(evnum2);
            nlist.add(evnum3);
            nlist.add(evnum4);
            nlist.add(anum1);
            nlist.add(anum2);
            nlist.add(anum3);
            nlist.add(anum4);

            rtmap.put(provblist.get(j).getPbname(), nlist);
        }
        return rtmap;
    }

}
