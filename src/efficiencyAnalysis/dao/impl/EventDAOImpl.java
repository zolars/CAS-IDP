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

            if(list != null)
                rtlist.addAll(list);
        }

        return rtlist;
    }

    public List getLocalLastPowerEvent(String rid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List<EventTransient> rtlist = new ArrayList<>();


        didlist = hbsessionDao.search(
                "FROM Computerroom where rid = '" + rid+ "'");

        String didstr = didlist.get(0).getDidset();

        String didset[] = didstr.split(",");

        for(int i = 0; i < didset.length; i++ ){
            List<EventTransient> list = hbsessionDao.search(
                    "FROM EventTransient where mpid = '" + didset[i]+ "'" + " order by occurtime desc");

            if(list != null)
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

        return rtlist;
    }

    public Map getAllProvinceEvent(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Map<String, List<Integer>> rtmap = new HashMap<>();

        List<ProvinceBank> provblist = hbsessionDao.search(
                "FROM ProvinceBank");

        for(int j = 0; j < provblist.size(); j++) {

            Integer evnum1 = 0, evnum2 = 0, evnum3 = 0, evnum4 = 0;
            Integer anum1 = 0, anum2 = 0, anum3 = 0, anum4 = 0;
            Integer degreeR = 0, degreeY = 0, degreeG = 0;

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
                        if(record.getDegree() == 1)
                            degreeR += record.getPowernum();
                        if(record.getDegree() == 2)
                            degreeY += record.getPowernum();
                        if(record.getDegree() == 3)
                            degreeG += record.getPowernum();
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


            if(degreeR >= 1)
                nlist.add(1);
            else if((double)degreeY/(degreeR + degreeY + degreeG) > 0.50)
                nlist.add(2);
            else
                nlist.add(3);

            rtmap.put(provblist.get(j).getPbname(), nlist);
        }
        return rtmap;
    }

    public List getOneProvinceEvent(String pid, String stime, String etime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<List<Integer>> rtlist = new ArrayList<>();

        ProvinceBank provb = (ProvinceBank)hbsessionDao.getFirst(
                "FROM ProvinceBank where pbid='" + pid + "'");

        Integer evnum1 = 0, evnum2 = 0, evnum3 = 0, evnum4 = 0;
        Integer anum1 = 0, anum2 = 0, anum3 = 0, anum4 = 0;
        Integer degreeR = 0, degreeY = 0, degreeG = 0;

        String cbidset = provb.getCbidset();

        if(cbidset == null){

        }

        else{
            String cbidstr[] = cbidset.split("，");

            for(int i = 0 ; i < cbidstr.length; i++){
                AssessRecord record = (AssessRecord)hbsessionDao.getFirst(
                        "FROM AssessRecord where cbid='" + cbidstr[i] +"'");
                if(record != null){

                    List<Integer> nlist = new ArrayList();
                    nlist.add(record.getPowernum());
                    nlist.add(record.getTempreturenum());
                    nlist.add(record.getWetnum());
                    nlist.add(record.getDevicenum());
                    nlist.add(record.getApowernum());
                    nlist.add(record.getAtempreturenum());
                    nlist.add(record.getAwetnum());
                    nlist.add(record.getAdevicenum());
                    nlist.add(record.getDegree());
                    nlist.add(record.getCbid());

                    rtlist.add(nlist);
                }
            }
        }

        return rtlist;
    }
}
