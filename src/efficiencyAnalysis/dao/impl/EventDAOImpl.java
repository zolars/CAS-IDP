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
    DBConnect db;
    ResultSet rs = null;
    PreparedStatement ps = null;

    public boolean addSignAndAnnotDeviceEvent(String teid, String sign, String annot){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update EventCtrl ep set ep.signature='" + sign +
                "', ep.annotation='"+ annot +"' where ep.teid='" + teid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    public boolean addSignAndAnnotPowerEvent(String teid, String sign, String annot){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update EventPower ep set ep.signature='" + sign +
                "', ep.annotation='"+ annot +"' where ep.teid='" + teid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    public boolean addSignAndAnnotEnvironEvent(String teid, String sign, String annot){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update EventEnvironment ep set ep.signature='" + sign +
                "', ep.annotation='"+ annot +"' where ep.teid='" + teid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //带有时间范围
    public List getLocalAllPowerEvent(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> didlist = new ArrayList<>();
        List rtlist = new ArrayList<>();

        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");

        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time, ta.cid as cid " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
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

                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));
                    list.add(rs.getString("cid"));

                    rtlist.add(list.toString());
                }

            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //返回最近一条事件记录
    public List getLocalLastPowerEvent(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");
        String maxtime = "0000-00-00 00:00:00.0";

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time, ta.cid as cid " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
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
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));
                    list.add(rs.getString("cid"));

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
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }


    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-浪涌塌陷
    //带有时间范围
    public List getLocalAllDetailPowerEventlytx(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"' and tb.type in (1,2)";

            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-浪涌塌陷
    //返回最近一条事件记录
    public List getLocalLastDetailPowerEventlytx(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] +"' and tb.type in (1,2)";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }


    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-谐波
    //带有时间范围
    public List getLocalAllDetailPowerEventxb(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"' and tb.type > '23' and tb.type < '322'";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-谐波
    //返回最近一条事件记录
    public List getLocalLastDetailPowerEventxb(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and tb.type in (5,6)";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-三相
    //带有时间范围
    public List getLocalAllDetailPowerEventsxbph(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");

        for(int i = 0; i < didset.length; i++ ){

            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"' and tb.type=9";

            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-三相
    //返回最近一条事件记录
    public List getLocalLastDetailPowerEventsxbph(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and tb.type=9";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-瞬变
    //带有时间范围
    public List getLocalAllDetailPowerEventshunbian(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        db = new DBConnect();
        String didset[] = didstr.split("，");

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"' and tb.type=3";

            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-瞬变
    //返回最近一条事件记录
    public List getLocalLastDetailPowerEventshunbian(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");

        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and tb.type=3";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-闪变
    //带有时间范围
    public List getLocalAllDetailPowerEventshanbian(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"' and tb.type=8";

            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-闪变
    //返回最近一条事件记录
    public List getLocalLastDetailPowerEventshanbian(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_power ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and tb.type=8";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //带有时间范围
    public List getLocalAllEnvironmentEvent(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_environment ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
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
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //返回最近一条事件记录
    public List getLocalLastEnvironmentEvent(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        String maxtime = "0000-00-00 00:00:00.0";

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_environment ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
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
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
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
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-温度
    //带有时间范围
    public List getLocalAllDetailEnvironmentEventtemp(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_environment ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"' and tb.type=11";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-温度
    //返回最近一条事件记录
    public List getLocalLastDetailEnvironmentEventtemp(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_environment ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] +"' and tb.type=11";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-湿度
    //带有时间范围
    public List getLocalAllDetailEnvironmentEventwet(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_environment ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] + "' and ta.time >'"+ starttime + "' and ta.time <'" + endtime +"' and tb.type=12";

            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-湿度
    //返回最近一条事件记录
    public List getLocalLastDetailEnvironmentEventwet(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid+ "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){

            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time " +
                    "from event_environment ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
                    + "' and ta.did ='" + didset[i] +"' and tb.type=12";
            try {
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    List list = new ArrayList();
                    list.add(rs.getString("teid"));
                    list.add(rs.getString("name"));
                    list.add(rs.getString("location"));
                    list.add(rs.getString("type"));
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //带有时间范围
    public List getLocalAllCtrlEvent(String cbid, String starttime, String endtime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time, ta.cid as cid " +
                    "from event_ctrl ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
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
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));
                    list.add(rs.getString("cid"));

                    rtlist.add(list.toString());
                }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //返回最近一条事件记录
    public List getLocalLastCtrlEvent(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList<>();
        String didstr = "";

        //根据市行名称查询机房id的集合
        CityBank cb = new CityBank();
        cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        //再根据机房id查询设备id的集合
        String comstr = cb.getCompRoom();
        String comidset[] = comstr.split("，");

        for(int i = 0; i < comidset.length; i++){
            Computerroom cp = new Computerroom();
            cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + comidset[i]+ "'");

            String str = cp.getDidset();
            str += "，";
            didstr += str;
        }

        //再根据设备id查询事件
        String didset[] = didstr.split("，");
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        String maxtime = "0000-00-00 00:00:00.0";

        for(int i = 0; i < didset.length; i++ ){
            String sql = "select ta.teid as teid, tb.classify as name, td.name as location, tb.description as type, ta.value as discription, ta.time as time, ta.cid as cid " +
                    "from event_ctrl ta,events_type tb,devices td where ta.cid = tb.cid and td.did ='"+ didset[i]
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
                    list.add(rs.getString("type")+"。当前值为"+rs.getString("discription"));
                    list.add(rs.getString("time"));
                    list.add(rs.getString("cid"));

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
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }

    public List getAllCityEvent(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<AssessRecord> rtlist = hbsessionDao.search(
                "FROM AssessRecord");

        return rtlist;
    }

    //循环对每个省进行如下操作：
    //1.查询该省下所有的设备did
    //2.根据设备did，查询assessRecord表中对应的所有记录
    //3.将上述记录进行查找：degree字段若degree有3、则为红色；若有2，则为黄色；其他，为绿色
    //                   event1字段 eventclass为1的记录的个数、event2字段 eventclass为2的记录的个数、...
    //                   anum1字段  查找记录中的teid关联的device_threshold.ismark是否==1，若是，这条事件记录就是一条告警的；否则，不是告警事件
    public Map getAllProvinceEvent(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Map<String, List<Integer>> rtmap = new HashMap<>();

        List<ProvinceBank> provblist = hbsessionDao.search(
                "FROM ProvinceBank");

        for(int j = 0; j < provblist.size(); j++) {

            Integer evnum1 = 0, evnum2 = 0, evnum3 = 0, evnum4 = 0;
            Integer anum1 = 0, anum2 = 0, anum3 = 0, anum4 = 0;
            Boolean degree1 = false, degree2 = false, degree3 = false;
            Integer degree = 1;

            //存储当前省份下的所有的电能设备id和温湿度设备id
            List<String> didset = new ArrayList<>();
            List<String> tempset = new ArrayList<>();

            //查找当前省行下的设备
            String didset1 = provblist.get(j).getDidset();
            String tempset1 = provblist.get(j).getTempset();
            String didset1str[] = new String[0];
            String tempset1str[] = new String[0];

            if(didset1 != null && !didset1.equals(""))
                didset1str = didset1.split(",");
            if(tempset1 != null && !didset1.equals(""))
                tempset1str = tempset1.split(",");
            for(int s1 = 0; s1 < didset1str.length; s1++)
                didset.add(didset1str[s1]);
            for(int s2 = 0; s2 < tempset1str.length; s2++)
                tempset.add(tempset1str[s2]);

            //循环查找当前省行下市行的设备
            String cbidset = provblist.get(j).getCbidset();
            if(cbidset != null && cbidset.length() > 0){
                String cbidstr[] = cbidset.split("，");

                //查找当前市行下的设备
                for(int i = 0 ; i < cbidstr.length; i++){
                    List<CityBank> cityblist = hbsessionDao.search(
                            "FROM CityBank where cbid='"+ cbidstr[i] +"'");
                    String didset2 = cityblist.get(0).getDidset();
                    String tempset2 = cityblist.get(0).getTempset();
                    String didset2str[] = new String[0];
                    String tempset2str[] = new String[0];

                    if(didset2 != null && !didset2.equals(""))
                        didset2str = didset2.split(",");
                    if(tempset2 != null && !tempset2.equals(""))
                        tempset2str = tempset2.split(",");
                    for(int s1 = 0; s1 < didset2str.length; s1++)
                        didset.add(didset2str[s1]);
                    for(int s2 = 0; s2 < tempset2str.length; s2++)
                        tempset.add(tempset2str[s2]);

                    //循环查找当前省行下市行的设备
                    String comproomset = cityblist.get(0).getCompRoom();
                    if(comproomset != null && comproomset.length() > 0) {
                        String compstr[] = comproomset.split("，");
                        //查找当前机房下的设备
                        for (int ii = 0; ii < compstr.length; ii++) {
                            List<Computerroom> complist = hbsessionDao.search(
                                    "FROM Computerroom where rid='" + compstr[ii] + "'");

                            String didset3 = complist.get(0).getDidset();
                            String tempset3 = complist.get(0).getTempset();
                            String didset3str[] = new String[0];
                            String tempset3str[] = new String[0];

                            if(didset3 != null && !didset3.equals(""))
                                didset3str = didset3.split("，");
                            if(tempset3 != null && !tempset3.equals(""))
                                tempset3str = tempset3.split("，");
                            for(int s1 = 0; s1 < didset3str.length; s1++)
                                didset.add(didset3str[s1]);
                            for(int s2 = 0; s2 < tempset3str.length; s2++)
                                tempset.add(tempset3str[s2]);
                        }
                    }
                }
            }

            System.out.println(provblist.get(j).getPbname()+":"+didset.size()+","+tempset.size());
            String didsetstring = "(";

            for(int idx = 0; idx < didset.size(); idx++){
                didsetstring += didset.get(idx) + ",";
            }
            if(!didsetstring.equals("(")){ //有电能质量类的事件

                didsetstring = didsetstring.substring(0, didsetstring.length()-1);
                didsetstring += ")";

                System.out.println(didsetstring);
                List<AssessRecord> assessrecordlist = hbsessionDao.search(
                        "FROM AssessRecord where did IN" + didsetstring);

                //List<Integer> teid = new ArrayList<>();

                for(int i = 0; i< assessrecordlist.size(); i++){
                    if(assessrecordlist.get(i).getDegree() == 3)
                        degree3 = true;
                    if(assessrecordlist.get(i).getDegree() == 2)
                        degree2 = true;

                    //计算电能类事件数量、温度类事件数量、湿度类事件数量、设备类事件数量
                    if(assessrecordlist.get(i).getEventclass().equals(1))
                        evnum1++;
                    else if(assessrecordlist.get(i).getEventclass().equals(2))
                        evnum2++;
                    else if(assessrecordlist.get(i).getEventclass().equals(3))
                        evnum3++;
                    else if(assessrecordlist.get(i).getEventclass().equals(4))
                        evnum4++;

                    //计算电能类告警数量、温度类告警数量、湿度类告警数量、设备类告警数量
                    Integer teid = assessrecordlist.get(i).getTeid();

                    if(assessrecordlist.get(i).getEventclass().equals(1))
                        anum1++;
                    else if(assessrecordlist.get(i).getEventclass().equals(2))
                        anum2++;
                    else if(assessrecordlist.get(i).getEventclass().equals(3))
                        anum3++;
                    else if(assessrecordlist.get(i).getEventclass().equals(4))
                        anum4++;
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
            if(degree3)
                nlist.add(3);
            else if(degree2)
                nlist.add(2);
            else nlist.add(1);

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

    //查询某省下属的市行，统计各个市行下的设备did的assessrecord的记录

    public List getOneProvinceEvent(String pid, String stime, String etime){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<List<String>> rtlist = new ArrayList<>();

        ProvinceBank provb = (ProvinceBank)hbsessionDao.getFirst(
                "FROM ProvinceBank where pbid='" + pid + "'");

        String cbidset = provb.getCbidset();
        String cbidstr[] = cbidset.split("，");
        //查找当前市行下的设备
        for(int i = 0 ; i < cbidstr.length; i++){

            Integer evnum1 = 0, evnum2 = 0, evnum3 = 0, evnum4 = 0;
            Integer anum1 = 0, anum2 = 0, anum3 = 0, anum4 = 0;
            Boolean degree1 = false, degree2 = false, degree3 = false;
            Integer degree = 1;
            //存储当前市下的所有的电能设备id和温湿度设备id
            List<String> didset = new ArrayList<>();
            List<String> tempset = new ArrayList<>();

            CityBank cityb = (CityBank)hbsessionDao.getFirst(
                    "FROM CityBank where cbid='"+ cbidstr[i] +"'");

            //挂在市行下的设备
            String didset1 = cityb.getDidset();
            String tempset1 = cityb.getTempset();
            String didset2str[] = new String[0];
            String tempset2str[] = new String[0];

            if(didset1 != null && !didset1.equals(""))
                didset2str = didset1.split(",");
            if(tempset1 != null && !tempset1.equals(""))
                tempset2str = tempset1.split(",");
            for(int s1 = 0; s1 < didset2str.length; s1++)
                didset.add(didset2str[s1]);
            for(int s2 = 0; s2 < tempset2str.length; s2++)
                tempset.add(tempset2str[s2]);

            //循环查找当前省行下市行的设备
            String comproomset = cityb.getCompRoom();
            if(comproomset != null && comproomset.length() > 0) {
                String compstr[] = comproomset.split("，");
                //查找当前机房下的设备
                for (int ii = 0; ii < compstr.length; ii++) {
                    List<Computerroom> complist = hbsessionDao.search(
                            "FROM Computerroom where rid='" + compstr[ii] + "'");

                    String didset3 = complist.get(0).getDidset();
                    String tempset3 = complist.get(0).getTempset();
                    String didset3str[] = new String[0];
                    String tempset3str[] = new String[0];

                    if(didset3 != null && !didset3.equals(""))
                        didset3str = didset3.split("，");
                    if(tempset3 != null && !tempset3.equals(""))
                        tempset3str = tempset3.split("，");
                    for(int s1 = 0; s1 < didset3str.length; s1++)
                        didset.add(didset3str[s1]);
                    for(int s2 = 0; s2 < tempset3str.length; s2++)
                        tempset.add(tempset3str[s2]);
                }
            }

            //根据didset转换为didstring
            String didsetstring = "(";
            for(int idx = 0; idx < didset.size(); idx++){
                didsetstring += didset.get(idx) + ",";
            }
            if(!didsetstring.equals("(")) { //有电能质量类的事件
                didsetstring = didsetstring.substring(0, didsetstring.length() - 1);
                didsetstring += ")";

                List<AssessRecord> assessrecordlist =
                        hbsessionDao.search("FROM AssessRecord where did IN" + didsetstring + " and time > '" + stime + "' and time < '" + etime + "'");

                if(assessrecordlist != null){
                    for (int j = 0; j < assessrecordlist.size(); j++) {
                        if (assessrecordlist.get(i).getDegree() == 3)
                            degree3 = true;
                        if (assessrecordlist.get(i).getDegree() == 2)
                            degree2 = true;

                        //计算电能类事件数量、温度类事件数量、湿度类事件数量、设备类事件数量
                        if (assessrecordlist.get(i).getEventclass().equals(1))
                            evnum1++;
                        else if (assessrecordlist.get(i).getEventclass().equals(2))
                            evnum2++;
                        else if (assessrecordlist.get(i).getEventclass().equals(3))
                            evnum3++;
                        else if (assessrecordlist.get(i).getEventclass().equals(4))
                            evnum4++;

                        //计算电能类告警数量、温度类告警数量、湿度类告警数量、设备类告警数量
                        Integer teid = assessrecordlist.get(i).getTeid();

                        if (assessrecordlist.get(i).getEventclass().equals(1))
                            anum1++;
                        else if (assessrecordlist.get(i).getEventclass().equals(2))
                            anum2++;
                        else if (assessrecordlist.get(i).getEventclass().equals(3))
                            anum3++;
                        else if (assessrecordlist.get(i).getEventclass().equals(4))
                            anum4++;
                    }
                }
            }
            List nlist = new ArrayList();
            nlist.add(evnum1);
            nlist.add(evnum2);
            nlist.add(evnum3);
            nlist.add(evnum4);
            nlist.add(anum1);
            nlist.add(anum2);
            nlist.add(anum3);
            nlist.add(anum4);
            if(degree3)
                nlist.add(3);
            else if(degree2)
                nlist.add(2);
            else nlist.add(1);
            nlist.add(cityb.getCbname());

            rtlist.add(nlist);
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

    //获取当前机房下的温度设备的温度、湿度记录
    public List getComputerroomWetAndHumdity(String compname){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<List<String>> rtlist = new ArrayList<>();

        Computerroom comps = (Computerroom)hbsessionDao.getFirst(
                "FROM Computerroom where rname='" + compname + "'");

        String tempset = comps.getTempset();

        if(tempset.equals(null)){
            return rtlist;
        }
        else {

            String tempstr[] = tempset.split("，");
            db = new DBConnect();

            for (int i = 0; i < tempstr.length; i++) {
                String sql = "select tb.name as dname, ta.temperature as temperature, ta.humidity as humidity" +
                        " from temperature_monitor ta, devices tb where ta.did = tb.did order by ta.time desc";

                try {
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        List<String> list = new ArrayList();
                        list.add(rs.getString("dname"));
                        list.add(rs.getString("temperature"));
                        list.add(rs.getString("humidity"));

                        rtlist.add(list);
                    }
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            try {
                db.free();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return rtlist;
        }
    }

    public boolean getComputerroomCtrlStatus(String cbname){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Computerroom comps = (Computerroom)hbsessionDao.getFirst(
                "FROM Computerroom where cbname='" + cbname + "'");

        String didset = comps.getDidset();
        String didstr[] = didset.split("，");
        List<String> didlist = new ArrayList();

        //寻找ctrl类（治理设备）的device
        for(int i = 0; i < didstr.length; i++){
            Devices dv = (Devices)hbsessionDao.getFirst(
                    "FROM Devices where did='" + didstr[i] + "' and type = 'ctrl'");
            if(dv != null)
                didlist.add(dv.getDid());
        }

        if(didlist != null){
            EventCtrl temp = (EventCtrl)hbsessionDao.getFirst(
                    "FROM EventCtrl where did='" + didlist.get(0) + "' Order by time desc");

            if(temp.getValue() == "1")  //状态码为1，告警
                return true;
        }
        return false; //状态码为0，正常
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

    public boolean setCaptrueSettingInfo(String onlineinterval, String thansentinterval, String uploadinterval){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        String hql = "update BasicSetting bs set bs.onlineinterval=" + onlineinterval + ", bs.thansentinterval=" + thansentinterval +
                ", bs.uploadinterval=" + uploadinterval + " where bs.id=0";

        rt = hbsessionDao.update(hql);

        return rt;
    }


}
