package efficiencyAnalysis.dao.impl;

import Util.DBConnect;
import Util.HBSessionDaoImpl;
import efficiencyAnalysis.dao.EventDAO;
import hibernatePOJO.*;
import javafx.event.EventType;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EventDAOImpl implements EventDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public boolean addSignAndAnnotEvent(String teid, String sign, String annot){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update EventPower ep set ep.signature='" + sign +
                "', ep.annotation='"+ annot +"' where ep.teid='" + teid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //带有时间范围
    public List getLocalAllPowerEvent(String cbname, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbname = '" + cbname+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += ",";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split(",");

        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.name as name, td.name as location, tc.name as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,eventtype_power tc,devices td where ta.type = tb.type and ta.subtype = tc.eid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"'";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));

                    list.add(rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }

            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            try {
                db.free();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //返回最近一条事件记录
    public List getLocalLastPowerEvent(String cbname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbname = '" + cbname+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");


        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += ",";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split(",");

        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        String maxtime = "0000-00-00 00:00:00.0";

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.name as name, td.name as location, tc.name as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,eventtype_power tc,devices td where ta.type = tb.type and ta.subtype = tc.eid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "'";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("discription"));
                    list.add(rs.getString("time"));

                    if(maxtime.compareTo(rs.getString("time")) < 0){ //若当前取的数据时间更新
                        maxtime = rs.getString("time");
                        rtlist.clear();
                        rtlist.add(list.toString());
                    }
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            try {
                db.free();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //带有时间范围
    public List getLocalAllDetailPowerEvent(String cbname, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbname = '" + cbname+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split(",");

        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            didstr += ","+ cp.getDidset();
        }

        //再根据设备id查询事件
        String didset[] = didstr.split(",");

        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.name as name, td.name as location, tc.name as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,eventtype_power tc,devices td where ta.type = tb.type and ta.subtype = tc.eid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and time >"+ starttime + " and time <" + endtime;
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));

                    list.add(rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }

            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            try {
                db.free();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //无时间范围
    public List getLocalLastDetailPowerEvent(String cbname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbname = '" + cbname+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");


        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += ",";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split(",");

        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.name as name, td.name as location, tc.name as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,eventtype_power tc,devices td where ta.type = tb.type and ta.subtype = tc.eid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "'";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));

                    list.add(rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }

            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            try {
                db.free();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        return rtlist;
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

    public List getAllEventTypeTree(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<EventsType> rtlist = hbsessionDao.search(
                "FROM EventsType");

        return rtlist;
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

    public List getAllCityBankEvent(String pbname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<CityBank> list = new ArrayList<>();

        ProvinceBank pb = (ProvinceBank)hbsessionDao.getFirst(
                "FROM ProvinceBank where pbname='"+ pbname + "'");

        String cbistr = pb.getCbidset();
        String cbidset[] = cbistr.split("，");

        for(int i = 0; i < cbidset.length; i++){
            CityBank cb = (CityBank)hbsessionDao.getFirst(
                    "FROM CityBank where cbid='"+ cbidset[i] + "'");

            list.add(cb);
        }

        return list;
    }

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        String hql = "update AssessmentSetting assess set assess.redyellow='" + red_yellow +
                "', assess.yellowgreen ='" + yellow_green + "' where assess.aid='" + 1 + "'";

        rt = hbsessionDao.update(hql);

        return rt;
    }

    public boolean setAllEventtypePriorty(String[] eventtypelist, String[] priortylist){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        for(int i = 0; i < eventtypelist.length; i++){
            String hql = "update EventsType et set et.prior='" + priortylist[i] +
                   "' where et.type='" + eventtypelist[i] + "'";

             rt = hbsessionDao.update(hql);

             if(rt == false) return rt;
        }

        return rt;
    }

    public boolean setCaptrueSettingInfo(String onlineinterval, String tansentinterval, String upload, String ip, String onlineport, String tansentport, String did){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        //若是已设置过的did的记录，则更新这条记录；否则，插入一条记录
        CaptureSetting caps = (CaptureSetting)hbsessionDao.getFirst(
                "FROM CaptureSetting where did='"+ did + "'");

        if(caps != null){
            String hql = "update CaptureSetting cs set cs.onlineinterval='" + onlineinterval + ",' cs.tansentinterval='" + tansentinterval +
                    ",' cs.upload='" + upload + ",' cs.ip='" + ip +  ",' cs.onlineport='" + onlineport +  ",' cs.tansentport='" + tansentport +
                    "' where cs.did='" + did + "'";

            rt = hbsessionDao.update(hql);
        }

        else {
            CaptureSetting cs = new CaptureSetting();
            cs.setIp(ip);
            cs.setPort1(Integer.parseInt(onlineport));
            cs.setPort2(Integer.parseInt(tansentport));

            cs.setOnlineinterval(Integer.parseInt(onlineinterval));
            cs.setThansentinterval(Integer.parseInt(tansentinterval));
            cs.setUploadinterval(Integer.parseInt(upload));

            cs.setDid(did);

            rt = hbsessionDao.insert(cs);

        }
        return rt;
    }


}
