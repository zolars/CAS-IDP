package efficiencyAnalysis.dao.impl;

//import Util.DBConnect;
import Util.HBSessionDaoImpl;
import Util.PageHelper;
import efficiencyAnalysis.dao.EventDAO;
import grabData.DataOnline;
import grabData.TemperatureSave;
import hibernatePOJO.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

import Util.EventObject;

public class EventDAOImpl implements EventDAO {

//    DBConnect db;
    ResultSet rs = null;
    PreparedStatement ps = null;

    public boolean addSignAndAnnotDeviceEvent(String teid, String sign, String annot) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update EventCtrl ep set ep.signature='" + sign +
                "', ep.annotation='" + annot + "' where ep.teid='" + teid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    public boolean addSignAndAnnotPowerEvent(String teid, String sign, String annot) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update EventPower ep set ep.signature='" + sign +
                "', ep.annotation='" + annot + "' where ep.teid='" + teid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    public boolean addSignAndAnnotEnvironEvent(String teid, String sign, String annot) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update EventEnvironment ep set ep.signature='" + sign +
                "', ep.annotation='" + annot + "' where ep.teid='" + teid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    // 2019 /9/20 cjy: no use DDBConnect
    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件
    //带有时间范围
    public List getLocalAllPowerEvent(String cbid, String starttime, String endtime) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List rtlist = new ArrayList<>();
        String didstr = "";
        try {
            //根据市行名称查询机房id的集合
            CityBank cb = (CityBank) hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

            //再根据机房id查询设备id的集合
            String comstr = cb.getCompRoom();
            String comidset[] = comstr.split("，");

            for (int i = 0; i < comidset.length; i++) {
                Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                        "FROM Computerroom where rid = '" + comidset[i] + "'");

                String str = cp.getDidset();
                str += "，";
                didstr += str;
            }

//            //再根据设备id查询事件
//            String didset[] = didstr.split("，");

            String sql = "FROM EventPower ta, EventsType tb, Devices td WHERE ta.cid = tb.cid AND td.did=ta.did" +
                " AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' ORDER BY signature limit 2000";

            List<Object[]> hlist =  hbsessionDao.search(sql);

            for(int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                    Object[] obj = hlist.get(idx);
                    EventPower epobj = (EventPower)obj[0];
                    EventsType etobj = (EventsType)obj[1];
                    Devices dobj = (Devices)obj[2];

                    List list = new ArrayList();
                    list.add(epobj.getTeid());
                    list.add(etobj.getClassify());
                    list.add(dobj.getName());
                    list.add(etobj.getDescription());
                    list.add(etobj.getDescription() + "。当前值为" + epobj.getValue());
                    list.add(epobj.getTime());
                    list.add(epobj.getCid());

                    list.add(epobj.getDuration());
                    list.add(epobj.getSignature());
                    list.add(epobj.getAnnotation());

                    rtlist.add(list.toString());
                }

            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-浪涌塌陷
    //带有时间范围
    public List getLocalAllDetailPowerEventlytx(String cbid, String starttime, String endtime) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List rtlist = new ArrayList<>();
        String didstr = "";
        try {
            //根据市行名称查询机房id的集合
            CityBank cb = (CityBank) hbsessionDao.getFirst(
                    "FROM CityBank where cbid = '" + cbid + "'");

            //再根据机房id查询设备id的集合
            String comstr = cb.getCompRoom();
            String comidset[] = comstr.split("，");

            for (int i = 0; i < comidset.length; i++) {
                Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                        "FROM Computerroom where rid = '" + comidset[i] + "'");

                String str = cp.getDidset();
                str += "，";
                didstr += str;
            }

            //再根据设备id查询事件
            String didset[] = didstr.split("，");

            for (int i = 0; i < didset.length; i++) {

                String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type in (1,2)  ORDER BY signature"; // limit 2000

                List<Object[]> hlist = hbsessionDao.search(sql);

                if (hlist != null) {
                    for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                        Object[] obj = hlist.get(idx);
                        EventPower epobj = (EventPower) obj[0];
                        EventsType etobj = (EventsType) obj[1];
                        Devices dobj = (Devices) obj[2];

                        List eventObject = new ArrayList();
                        Integer fi = epobj.getTeid();
                        eventObject.add(fi.toString());
                        eventObject.add(etobj.getDescription());
                        eventObject.add(dobj.getName());
                        eventObject.add(etobj.getDescription() +"。当前值为" + epobj.getValue());
                        eventObject.add(epobj.getTime().toString());
                        // eventObject.setCid(rs.getString("cid"));
                        Integer dt = epobj.getDuration();
                        eventObject.add(dt.toString());
                        eventObject.add(epobj.getSignature());
                        eventObject.add(epobj.getAnnotation());

                        rtlist.add(eventObject);
                    }
                }
            }

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return rtlist;
    }

    //根据市行名称查询机房id的集合，再根据机房id查询设备id的集合，再根据设备id查询事件-浪涌塌陷
    //返回最近一条事件记录
    public List getLocalLastDetailPowerEventlytx(String cbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List rtlist = new ArrayList<>();
        String didstr = "";

        try {
            //根据市行名称查询机房id的集合
            CityBank cb = (CityBank) hbsessionDao.getFirst(
                    "FROM CityBank where cbid = '" + cbid + "'");

            //再根据机房id查询设备id的集合
            String comstr = cb.getCompRoom();
            String comidset[] = comstr.split("，");

            for (int i = 0; i < comidset.length; i++) {
                Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                        "FROM Computerroom where rid = '" + comidset[i] + "'");

                String str = cp.getDidset();
                str += "，";
                didstr += str;
            }

            //再根据设备id查询事件
            String didset[] = didstr.split("，");

            for (int i = 0; i < didset.length; i++) {

                String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' and tb.type in (1,2)  ORDER BY signature"; // limit 2000

                List<Object[]> hlist = hbsessionDao.search(sql);

                if (hlist != null) {
                    for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                        Object[] obj = hlist.get(idx);
                        EventPower epobj = (EventPower) obj[0];
                        EventsType etobj = (EventsType) obj[1];
                        Devices dobj = (Devices) obj[2];

                        List eventObject = new ArrayList();
                        Integer fi = epobj.getTeid();
                        eventObject.add(fi.toString());
                        eventObject.add(etobj.getDescription());
                        eventObject.add(dobj.getName());
                        eventObject.add(etobj.getDescription() +"。当前值为" + epobj.getValue());
                        eventObject.add(epobj.getTime().toString());
                        // eventObject.setCid(rs.getString("cid"));
                        Integer dt = epobj.getDuration();
                        eventObject.add(dt.toString());
                        eventObject.add(epobj.getSignature());
                        eventObject.add(epobj.getAnnotation());

                        rtlist.add(eventObject);
                    }
                }
            }

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return rtlist;
    }


    // 2019 /9/20 cjy: no use DDBConnect
    // 获取治理事件总数
    public int getLocalAllCtrlTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getCidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "SELECT DISTINCT ta.teid FROM EventCtrl ta,DictionaryCtrl tb,Devices td WHERE ta.cid = tb.id AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "'"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取环境事件总数
    public int getLocalAllEnvironmentTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;
        try {
            for(int k = 0; k < cbnamelist.length; k++){
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getTempset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {
                    String sql = "SELECT DISTINCT ta.teid FROM EventEnvironment ta,EventsType tb,DevicesThreshold td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "'"; // limit 2000

                    List<Object[]> hlist =  hbsessionDao.search(sql);

                    if(hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取环境事件总数 -temp
    public int getLocalAllEnvironmenttempTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++){
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getTempset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "SELECT DISTINCT ta.teid FROM EventEnvironment ta,EventsType tb,DevicesThreshold td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type in (113,114)"; // limit 2000

                    List<Object[]> hlist =  hbsessionDao.search(sql);

                    if(hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取环境事件总数 -wet
    public int getLocalAllEnvironmentwetTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++){
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getTempset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "SELECT DISTINCT ta.teid FROM EventEnvironment ta,EventsType tb,DevicesThreshold td where tb.cid = ta.cid and tb.type = tc.type and td.did =ta.did  and ta.did ='"+ didset[i] + "' and ta.time >'" + starttime + "' and ta.time <'" + endtime + "'";

                    List<Object[]> hlist =  hbsessionDao.search(sql);

                    if(hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取电能事件总数
    public int getLocalAllPowerTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;
        try{
            for(int k = 0; k < cbnamelist.length; k++){
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "SELECT DISTINCT ta.teid FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "'"; // limit 2000

                    List<Object[]> hlist =  hbsessionDao.search(sql);

                    if(hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        }
        catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取电能事件总数lytx
    public int getLocalAllPowerlytxTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++){
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {
                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type in (1,2) ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        idx += hlist.size();
                    }
                }

            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取电能事件总数xb
    public int getLocalAllPowerxbTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {
                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.subtype between 23 and 322 ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取电能事件总数sxbph
    public int getLocalAllPowersxbphTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {
                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type=9 ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        idx += hlist.size();
                    }
                }

            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取电能事件总数shunbian
    public int getLocalAllPowershunbianTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type=3 ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取电能事件总数shanbian
    public int getLocalAllPowershanbianTotal(String cbnamelist[], String starttime, String endtime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        int idx = 0;

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");


                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type=8 ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        idx += hlist.size();
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return idx;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的治理事件
    public PageHelper<EventObject>  getCtrlEventObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getCidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventCtrl ta,DictionaryCtrl tb,Devices td WHERE ta.cid = tb.id AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventCtrl epobj = (EventCtrl) obj[0];
                            DictionaryCtrl etobj = (DictionaryCtrl) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType("治理");
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() + "。当前整机设备故障");
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            eventObject.setDuration(epobj.getDuration());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }

            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        //get [start, end] data
        for( int i = 0; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                rtlist.getRows().add(alllist.getRows().get(i));
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的电能事件
    public PageHelper<EventObject>  getPowerEventObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventPower epobj = (EventPower) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        //get [start, end] data
        for( int i = 0; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                rtlist.getRows().add(alllist.getRows().get(i));
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的电能事件lytx
    public PageHelper<EventObject>  getPowerEventlytxObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type in (1,2)  ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventPower epobj = (EventPower) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        //get [start, end] data
        for( int i = 0; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                rtlist.getRows().add(alllist.getRows().get(i));
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的电能事件xb
    public PageHelper<EventObject>  getPowerEventxbObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.subtype between 23 and 322  ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventPower epobj = (EventPower) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //get [start, end] data
        for( int i = 0; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                rtlist.getRows().add(alllist.getRows().get(i));
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的电能事件sxbph
    public PageHelper<EventObject>  getPowerEventsxbphObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "'  and tb.type=9 ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventPower epobj = (EventPower) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        //get [start, end] data
        for( int i = 0; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                rtlist.getRows().add(alllist.getRows().get(i));
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的电能事件shunbian
    public PageHelper<EventObject>  getPowerEventshunbianObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + " and tb.type=3 ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventPower epobj = (EventPower) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        //get [start, end] data
        for( int i = 0; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                rtlist.getRows().add(alllist.getRows().get(i));
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的电能事件shanbian
    public PageHelper<EventObject>  getPowerEventshanbianObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getDidset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventPower ta,EventsType tb,Devices td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type=8  ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventPower epobj = (EventPower) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //get [start, end] data
        for( int i = 0; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                rtlist.getRows().add(alllist.getRows().get(i));
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的环境事件
    public PageHelper<EventObject>  getEnvironmentEventObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getTempset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventEnvironment ta,EventsType tb,DevicesThreshold td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventEnvironment epobj = (EventEnvironment) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            DevicesThreshold dobj = (DevicesThreshold) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

//        //get [start, end] data
//        for( int i = 0; i < alllist.getRows().size(); i++){
//            if(i >= start && i <= end) {
//                rtlist.getRows().add(alllist.getRows().get(i));
//            }
//        }

        // remove duplicate
        rtlist.getRows().add(alllist.getRows().get(0));
        for( int i = 1; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                boolean hasflag = false;
                String teid = alllist.getRows().get(i).getTeid();
                for(int j = 0; j < rtlist.getRows().size(); j++) {
                    String oldteid = rtlist.getRows().get(j).getTeid();
                    if(oldteid == teid) {
                        hasflag = true;
                    }
                }
                if(hasflag) {
                    rtlist.getRows().add(alllist.getRows().get(i));
                }
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的环境事件-temp
    public PageHelper<EventObject>  getEnvironmentEventtempObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getTempset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventEnvironment ta,EventsType tb,DevicesThreshold td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "'  and tb.type in (113,114) ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventEnvironment epobj = (EventEnvironment) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            DevicesThreshold dobj = (DevicesThreshold) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // remove duplicate
        rtlist.getRows().add(alllist.getRows().get(0));
        for( int i = 1; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                boolean hasflag = false;
                String teid = alllist.getRows().get(i).getTeid();
                for(int j = 0; j < rtlist.getRows().size(); j++) {
                    String oldteid = rtlist.getRows().get(j).getTeid();
                    if(oldteid == teid) {
                        hasflag = true;
                    }
                }
                if(hasflag) {
                    rtlist.getRows().add(alllist.getRows().get(i));
                }
            }
        }

        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    // 获取分页的环境事件-wet
    public PageHelper<EventObject>  getEnvironmentEventwetObjectListPage(String cbnamelist[], String starttime, String endtime, Integer start, Integer end){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PageHelper<EventObject> rtlist = new PageHelper<EventObject>();
        PageHelper<EventObject> alllist = new PageHelper<EventObject>();

        try {
            for(int k = 0; k < cbnamelist.length; k++) {
                String didstr = "";

                //根据市行名称查询机房id的集合
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid = '" + cbnamelist[k] + "'");

                //再根据机房id查询设备id的集合
                String comstr = cb.getCompRoom();
                String comidset[] = comstr.split("，");

                for (int i = 0; i < comidset.length; i++) {
                    Computerroom cp = (Computerroom) hbsessionDao.getFirst(
                            "FROM Computerroom where rid = '" + comidset[i] + "'");

                    String str = cp.getTempset();
                    str += "，";
                    didstr += str;
                }

                //再根据设备id查询事件
                String didset[] = didstr.split("，");

                for (int i = 0; i < didset.length; i++) {

                    String sql = "FROM EventEnvironment ta,EventsType tb,DevicesThreshold td WHERE ta.cid = tb.cid AND td.did =ta.did AND ta.did ='" + didset[i] + "' AND ta.time >'" + starttime + "' AND ta.time <'" + endtime + "' and tb.type in (115,116)  ORDER BY signature"; // limit 2000

                    List<Object[]> hlist = hbsessionDao.search(sql);

                    if (hlist != null) {
                        for (int idx = 0; (idx < 10000) && (idx < hlist.size()); idx++) {
                            Object[] obj = hlist.get(idx);
                            EventEnvironment epobj = (EventEnvironment) obj[0];
                            EventsType etobj = (EventsType) obj[1];
                            Devices dobj = (Devices) obj[2];

                            EventObject eventObject = new EventObject();
                            Integer fi = epobj.getTeid();
                            eventObject.setTeid(fi.toString());
                            eventObject.setType(etobj.getDescription());
                            eventObject.setName(dobj.getName());
                            eventObject.setDescription(etobj.getDescription() +"。当前值为" + epobj.getValue());
                            eventObject.setTime(epobj.getTime().toString());
                            // eventObject.setCid(rs.getString("cid"));
                            Integer dt = epobj.getDuration();
                            eventObject.setDuration(dt.toString());
                            eventObject.setSignature(epobj.getSignature());
                            eventObject.setAnnotation(epobj.getAnnotation());

                            alllist.getRows().add(eventObject);
                        }
                    }
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // remove duplicate
        rtlist.getRows().add(alllist.getRows().get(0));
        for( int i = 1; i < alllist.getRows().size(); i++){
            if(i >= start && i <= end) {
                boolean hasflag = false;
                String teid = alllist.getRows().get(i).getTeid();
                for(int j = 0; j < rtlist.getRows().size(); j++) {
                    String oldteid = rtlist.getRows().get(j).getTeid();
                    if(oldteid == teid) {
                        hasflag = true;
                    }
                }
                if(hasflag) {
                    rtlist.getRows().add(alllist.getRows().get(i));
                }
            }
        }

        return rtlist;
    }


    public List getAllCityEvent() {

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
    public Map getAllProvinceEvent() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Map<String, List<Integer>> rtmap = new HashMap<>();

        List<ProvinceBank> provblist = hbsessionDao.search(
                "FROM ProvinceBank");

        for (int j = 0; j < provblist.size(); j++) {

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

            if (didset1 != null && !didset1.equals("")) {
                didset1str = didset1.split(",");
            }
            if (tempset1 != null && !didset1.equals("")) {
                tempset1str = tempset1.split(",");
            }
            for (int s1 = 0; s1 < didset1str.length; s1++) {
                didset.add(didset1str[s1]);
            }
            for (int s2 = 0; s2 < tempset1str.length; s2++) {
                tempset.add(tempset1str[s2]);
            }

            //循环查找当前省行下市行的设备
            String cbidset = provblist.get(j).getCbidset();
            if (cbidset != null && cbidset.length() > 0) {
                String cbidstr[] = cbidset.split("，");

                //查找当前市行下的设备
                for (int i = 0; i < cbidstr.length; i++) {
                    List<CityBank> cityblist = hbsessionDao.search(
                            "FROM CityBank where cbid='" + cbidstr[i] + "'");
                    String didset2 = cityblist.get(0).getDidset();
                    String tempset2 = cityblist.get(0).getTempset();
                    String didset2str[] = new String[0];
                    String tempset2str[] = new String[0];

                    if (didset2 != null && !didset2.equals("")) {
                        didset2str = didset2.split(",");
                    }
                    if (tempset2 != null && !tempset2.equals("")) {
                        tempset2str = tempset2.split(",");
                    }
                    for (int s1 = 0; s1 < didset2str.length; s1++) {
                        didset.add(didset2str[s1]);
                    }
                    for (int s2 = 0; s2 < tempset2str.length; s2++) {
                        tempset.add(tempset2str[s2]);
                    }

                    //循环查找当前省行下市行的设备
                    String comproomset = cityblist.get(0).getCompRoom();
                    if (comproomset != null && comproomset.length() > 0) {
                        String compstr[] = comproomset.split("，");
                        //查找当前机房下的设备
                        for (int ii = 0; ii < compstr.length; ii++) {
                            List<Computerroom> complist = hbsessionDao.search(
                                    "FROM Computerroom where rid='" + compstr[ii] + "'");

                            String didset3 = complist.get(0).getDidset();
                            String tempset3 = complist.get(0).getTempset();
                            String didset3str[] = new String[0];
                            String tempset3str[] = new String[0];

                            if (didset3 != null && !didset3.equals("")) {
                                didset3str = didset3.split("，");
                            }
                            if (tempset3 != null && !tempset3.equals("")) {
                                tempset3str = tempset3.split("，");
                            }
                            for (int s1 = 0; s1 < didset3str.length; s1++) {
                                didset.add(didset3str[s1]);
                            }
                            for (int s2 = 0; s2 < tempset3str.length; s2++) {
                                tempset.add(tempset3str[s2]);
                            }
                        }
                    }
                }
            }

            String didsetstring = "(";
            List<Integer> nlist = new ArrayList();

            for (int idx = 0; idx < didset.size(); idx++) {
                didsetstring += didset.get(idx) + ",";
            }
            if (!didsetstring.equals("(")) { //有电能质量类的事件

                didsetstring = didsetstring.substring(0, didsetstring.length() - 1);
                didsetstring += ")";

                List<AssessRecord> assessrecordlist = hbsessionDao.search(
                        " FROM AssessRecord where did in " + didsetstring);

                if (assessrecordlist == null) { // 没用记录时
                    nlist.add(0);
                    nlist.add(0);
                    nlist.add(0);
                    nlist.add(0);
                    nlist.add(0);
                    nlist.add(0);
                    nlist.add(0);
                    nlist.add(0);

                    nlist.add(1);
                } else {
                    for (int i = 0; i < assessrecordlist.size(); i++) {
                        if (assessrecordlist.get(i).getDegree() == 3) {
                            degree3 = true;
                        }
                        if (assessrecordlist.get(i).getDegree() == 2) {
                            degree2 = true;
                        }

                        //计算电能类事件数量、温度类事件数量、湿度类事件数量、设备类事件数量
                        if (assessrecordlist.get(i).getEventclass().equals(1)) {
                            evnum1++;
                        } else if (assessrecordlist.get(i).getEventclass().equals(2)) {
                            evnum2++;
                        } else if (assessrecordlist.get(i).getEventclass().equals(3)) {
                            evnum3++;
                        } else if (assessrecordlist.get(i).getEventclass().equals(4)) {
                            evnum4++;
                        }

                        //计算电能类告警数量、温度类告警数量、湿度类告警数量、设备类告警数量
                        Integer teid = assessrecordlist.get(i).getTeid();

                        if (assessrecordlist.get(i).getEventclass().equals(1)) {
                            anum1++;
                        } else if (assessrecordlist.get(i).getEventclass().equals(2)) {
                            anum2++;
                        } else if (assessrecordlist.get(i).getEventclass().equals(3)) {
                            anum3++;
                        } else if (assessrecordlist.get(i).getEventclass().equals(4)) {
                            anum4++;
                        }
                    }

                    nlist.add(evnum1);
                    nlist.add(evnum2);
                    nlist.add(evnum3);
                    nlist.add(evnum4);
                    nlist.add(anum1);
                    nlist.add(anum2);
                    nlist.add(anum3);
                    nlist.add(anum4);
                    if (degree3) {
                        nlist.add(3);
                    } else if (degree2) {
                        nlist.add(2);
                    } else {
                        nlist.add(1);
                    }
                }

            }

            rtmap.put(provblist.get(j).getPbname(), nlist);
        }
        return rtmap;
    }

    public List getAllEventTypeTree() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<EventsType> rtlist = hbsessionDao.search(
                "FROM EventsType");

        return rtlist;
    }


    //2019/9/23  cjy: no use DDBConnect
    //查询某省下属的市行，统计各个市行下的设备did的assessrecord的记录
    public List getOneProvinceEvent(String pid, String stime, String etime) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<List<String>> rtlist = new ArrayList<>();

        try{
            ProvinceBank provb = (ProvinceBank) hbsessionDao.getFirst(
                    "FROM ProvinceBank where pbid='" + pid + "'");

            String cbidset = provb.getCbidset();
            if(cbidset == null || cbidset.equals("")) { //省行下无市行
                List nlist = new ArrayList();
                nlist.add(0);
                nlist.add(0);
                nlist.add(0);
                nlist.add(0);
                nlist.add(0);
                nlist.add(0);
                nlist.add(0);
                nlist.add(0);
                nlist.add(1);

                rtlist.add(nlist);
            } else { //有市行

                String cbidstr[] = cbidset.split("，");
                //查找当前市行下的设备
                for (int i = 0; i < cbidstr.length; i++) {

                    Integer evnum1 = 0, evnum2 = 0, evnum3 = 0, evnum4 = 0;
                    Integer anum1 = 0, anum2 = 0, anum3 = 0, anum4 = 0;
                    Boolean degree1 = false, degree2 = false, degree3 = false;
                    Integer degree = 1;
                    //存储当前市下的所有的电能设备id和温湿度设备id
                    List<String> didset = new ArrayList<>();
                    List<String> tempset = new ArrayList<>();
                    List<String> cidset = new ArrayList<>();

                    CityBank cityb = (CityBank) hbsessionDao.getFirst(
                            "FROM CityBank where cbid='" + cbidstr[i] + "'");

                    //挂在市行下的设备
                    String didset1 = cityb.getDidset();
                    String tempset1 = cityb.getTempset();
                    String cidset1 = cityb.getCidset();
                    String didset2str[] = new String[0];
                    String tempset2str[] = new String[0];
                    String cidset2str[] = new String[0];

                    if (didset1 != null && !didset1.equals("")) {
                        didset2str = didset1.split(",");
                    }
                    if (tempset1 != null && !tempset1.equals("")) {
                        tempset2str = tempset1.split(",");
                    }
                    if (cidset1 != null && !cidset1.equals("")) {
                        cidset2str = cidset1.split(",");
                    }
                    for (int s1 = 0; s1 < didset2str.length; s1++) {
                        didset.add(didset2str[s1]);
                    }
                    for (int s2 = 0; s2 < tempset2str.length; s2++) {
                        tempset.add(tempset2str[s2]);
                    }
                    for (int s3 = 0; s3 < cidset2str.length; s3++) {
                        cidset.add(cidset2str[s3]);
                    }

                    //循环查找当前省行下市行的设备
                    String comproomset = cityb.getCompRoom();
                    if (comproomset != null && comproomset.length() > 0) {
                        String compstr[] = comproomset.split("，");
                        //查找当前机房下的设备
                        for (int ii = 0; ii < compstr.length; ii++) {
                            List<Computerroom> complist = hbsessionDao.search(
                                    "FROM Computerroom where rid='" + compstr[ii] + "'");

                            String didset3 = complist.get(0).getDidset();
                            String tempset3 = complist.get(0).getTempset();
                            String cidset3 = complist.get(0).getCidset();
                            String didset3str[] = new String[0];
                            String tempset3str[] = new String[0];
                            String cidset3str[] = new String[0];

                            if (didset3 != null && !didset3.equals("")) {
                                didset3str = didset3.split("，");
                            }
                            if (tempset3 != null && !tempset3.equals("")) {
                                tempset3str = tempset3.split("，");
                            }
                            if (cidset3 != null && !cidset3.equals("")) {
                                cidset3str = cidset3.split("，");
                            }
                            for (int s1 = 0; s1 < didset3str.length; s1++) {
                                didset.add(didset3str[s1]);
                            }
                            for (int s2 = 0; s2 < tempset3str.length; s2++) {
                                tempset.add(tempset3str[s2]);
                            }
                            for (int s3 = 0; s3 < cidset3str.length; s3++) {
                                cidset.add(cidset3str[s3]);
                            }
                        }
                    }

                    //根据didset转换为didstring
                    String didsetstring = "(";
                    for (int idx = 0; idx < didset.size(); idx++) {
                        didsetstring += didset.get(idx) + ",";
                    }
                    //根据tempset转换为tempstring
                    String tempsetstring = "(";
                    for (int idx = 0; idx < tempset.size(); idx++) {
                        tempsetstring += tempset.get(idx) + ",";
                    }
                    //根据cidset转换为cidstring
                    String cidsetstring = "(";
                    for (int idx = 0; idx < cidset.size(); idx++) {
                        cidsetstring += cidset.get(idx) + ",";
                    }

                    if (!didsetstring.equals("(") || !tempsetstring.equals("(") || !cidsetstring.equals("(")) { //有电能质量类的事件
                        didsetstring = didsetstring.substring(0, didsetstring.length() - 1);
                        didsetstring += ")";

                        tempsetstring = tempsetstring.substring(0, tempsetstring.length() - 1);
                        tempsetstring += ")";

                        cidsetstring = cidsetstring.substring(0, cidsetstring.length() - 1);
                        cidsetstring += ")";

                        /*List<AssessRecord> assessrecordlist =
                                hbsessionDao.search("FROM AssessRecord where did IN" + didsetstring);*/

                        //电能类事件类型为1
                        String sql1 = "from AssessRecord ta, EventPower tb where ta.teid = tb.teid and (tb.signature is NULL or tb.signature = '') and ta.did IN " + didsetstring;

                       //温度类事件类型为2//湿度类事件类型为3
                        String sql23 = "from AssessRecord ta, EventEnvironment tb where ta.teid = tb.teid and (tb.signature is NULL or tb.signature = '') and ta.did IN " + tempsetstring;

                        //治理类事件类型为4
                        String sql4 = "from AssessRecord ta, EventCtrl tb where ta.teid = tb.teid and (tb.signature is NULL or tb.signature = '') and ta.did IN " + cidsetstring;

                        //电能类
                        List<Object[]> hlist1 = hbsessionDao.search(sql1);

                        if (hlist1 != null) {
                            for (int idx = 0; (idx < 10000) && (idx < hlist1.size()); idx++) {
                                Object[] obj = hlist1.get(idx);
                                AssessRecord epobj = (AssessRecord) obj[0];

                                String temp = epobj.getDegree().toString();
                                String eventclass = epobj.getEventclass().toString();

                                if (temp.equals("3")) {
                                    degree3 = true;
                                }
                                if (temp.equals("2")) {
                                    degree2 = true;
                                }

                                //计算电能类事件数量
                                if (eventclass.equals(1)) {
                                    evnum1++;
                                }

                                //计算电能类告警数量、温度类告警数量、湿度类告警数量、设备类告警数量
                                if (eventclass.equals(1)) {
                                    anum1++;
                                }
                            }
                        }

                        ///温湿度
                        List<Object[]> hlist2 = hbsessionDao.search(sql23);

                        if (hlist2 != null) {
                            for (int idx = 0; (idx < 10000) && (idx < hlist2.size()); idx++) {
                                Object[] obj = hlist2.get(idx);
                                AssessRecord epobj = (AssessRecord) obj[0];

                                String temp = epobj.getDegree().toString();
                                String eventclass = epobj.getEventclass().toString();

                                if (temp.equals("3")) {
                                    degree3 = true;
                                }
                                if (temp.equals("2")) {
                                    degree2 = true;
                                }

                                //计算电能类事件数量、温度类事件数量、湿度类事件数量、设备类事件数量
                                if(eventclass.equals(2)) {
                                    evnum2++;
                                } else if (eventclass.equals(3)) {
                                    evnum3++;
                                }

                                //计算电能类告警数量、温度类告警数量、湿度类告警数量、设备类告警数量

                                if(eventclass.equals(2)) {
                                    anum2++;
                                } else if (eventclass.equals(3)) {
                                    anum3++;
                                }
                            }
                        }

                        ///治理设备
                        List<Object[]> hlist3 = hbsessionDao.search(sql4);

                        if (hlist3 != null) {
                            for (int idx = 0; (idx < 10000) && (idx < hlist3.size()); idx++) {
                                Object[] obj = hlist3.get(idx);
                                AssessRecord epobj = (AssessRecord) obj[0];

                                String temp = epobj.getDegree().toString();
                                String eventclass = epobj.getEventclass().toString();

                                if (temp.equals("3")) {
                                    degree3 = true;
                                }
                                if (temp.equals("2")) {
                                    degree2 = true;
                                }

                                //计算设备类事件数量
                                if (eventclass.equals(4)) {
                                    evnum4++;
                                }

                                //设备类告警数量
                                if (eventclass.equals(4)) {
                                    anum4++;
                                }
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
                    if (degree3) {
                        nlist.add(3);
                    } else if (degree2) {
                        nlist.add(2);
                    } else {
                        nlist.add(1);
                    }
                    nlist.add(cityb.getCbname());

                    rtlist.add(nlist);
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return rtlist;
    }

    public List getAllCityBankEvent(String pbname) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<CityBank> list = new ArrayList<>();

        ProvinceBank pb = (ProvinceBank) hbsessionDao.getFirst(
                "FROM ProvinceBank where pbname='" + pbname + "'");

        String cbistr = pb.getCbidset();
        String cbidset[] = cbistr.split("，");

        for (int i = 0; i < cbidset.length; i++) {
            CityBank cb = (CityBank) hbsessionDao.getFirst(
                    "FROM CityBank where cbid='" + cbidset[i] + "'");

            list.add(cb);
        }

        return list;
    }

    //获取当前机房下的温度设备的温度、湿度记录
    public List getComputerroomWetAndHumdity(String compname) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<List<String>> rtlist = new ArrayList<>();

        Computerroom comps = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom where rid='" + compname + "'");

        if (comps != null) {
            String tempset = comps.getTempset();

            if (tempset.equals(null) || tempset == null) {
                return rtlist;
            } else {
                System.out.println("NB测试输出温度："+tempset);
                String tempstr[] = tempset.split("，");
                System.out.println("NB测试输出温度："+tempstr[0]);
                Map<String, TemperatureMonitor> tempDataMap = new HashMap<>();
                tempDataMap = TemperatureSave.getTempDataMap();

                if (null != tempDataMap) {
                    for (int i = 0; i < tempstr.length; i++) {
                        List<String> aa = new ArrayList<>();
                        List<String> list = hbsessionDao.search("select name as dname from  Devices  where did =" + tempstr[i] );
                        if (list != null) {
                            aa.add(list.get(0));
                            aa.add("0.00");
                            aa.add("0.00");
                        }
                        Set<String> didSet = tempDataMap.keySet();
                        Iterator<String> iterator = didSet.iterator();
                        while (iterator.hasNext()) {
                            String did = iterator.next();  //监测点id
                            System.out.println("NB测试输出温度did："+did);
                            if(did.equals(tempstr[i])){
//                                List<List<String>> list = hbsessionDao.search("select tb.name as dname, ta.temperature as temperature, ta.humidity as humidity from TemperatureMonitor ta, Devices tb where ta.did =" + tempstr[i] + " and tb.did =ta.did order by ta.time desc");

                                if (list != null) {
                                    aa.set(1,tempDataMap.get(did).getTemperature()==null?"0.00":tempDataMap.get(did).getTemperature().toString());
                                    aa.set(2,tempDataMap.get(did).getHumidity()==null?"0.00":tempDataMap.get(did).getHumidity().toString());

                                }
                            }
//                            TemperatureMonitor tempData = tempDataMap.get(did);
                        }
                        rtlist.add(aa);

                    }
                }
                return rtlist;
            }
        }
        return rtlist;
    }
    // 2019 /9/20 cjy: no use DDBConnect
    //获取当前机房下的三大类告警记录 所有的 未确认的事件
    public List getComputerroomAlarm(String compname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Integer> rtlist = new ArrayList<>();
        try {
            Computerroom comps = (Computerroom) hbsessionDao.getFirst(
                    "FROM Computerroom where rid='" + compname + "'");

            if (comps != null) {
                String didset = comps.getDidset();
                String cidset = comps.getCidset();
                String tempset = comps.getTempset();

//                db = new DBConnect();

                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date=new Date();
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                calendar.add(Calendar.HOUR, -24);
                date = calendar.getTime();
                System.out.println(sdf.format(date));

                //1.先读取eventpower 电能质量相关的事件

                if (didset.equals(null) || didset == null) {
                    rtlist.add(0);
                } else {
                    String didstr[] = didset.split("，");
                    Integer sumpower = 0;

                    for (int i = 0; i < didstr.length; i++) {
                        String sql = "from EventPower ta, Devices tb where ta.did = tb.did and ta.did = " + didstr[i] + " and (ta.signature is NULL or ta.signature = '')"; //and ta.time >'" + sdf.format(date) + "'

                        List hlist = hbsessionDao.search(sql);

                        if (hlist != null) {
                            int num1 = hlist.size();
                            sumpower += num1;
                        }
                    }
                    rtlist.add(sumpower);
                }


                //2.再读取eventctrl （治理）设备相关的事件

                if (cidset.equals(null) || cidset == null) {
                    rtlist.add(0);
                } else {
                    String cidstr[] = cidset.split("，");
                    Integer sumctrl = 0;

                    for (int i = 0; i < cidstr.length; i++) {
                        String sql = "from EventCtrl ta, Devices tb where ta.did = tb.did and ta.did = " + cidstr[i] + " and (ta.signature is NULL or ta.signature = '')";

                        List hlist = hbsessionDao.search(sql);

                        if (hlist != null) {
                            int num2 = hlist.size();
                            sumctrl += num2;
                        }
                    }
                    rtlist.add(sumctrl);
                }


                //3.再读取eventevrionment 环境相关的事件

                if (tempset.equals(null) || tempset == null) {
                    rtlist.add(0);
                } else {
                    String tempstr[] = tempset.split("，");
                    Integer sumtemp = 0;

                    for (int i = 0; i < tempstr.length; i++) {
                        String sql = "from EventEnvironment ta, Devices tb where ta.did = tb.did and ta.did = " + tempstr[i] + " and (ta.signature is NULL or ta.signature = '')";

                        List hlist = hbsessionDao.search(sql);

                        if (hlist != null) {
                            int num3 = hlist.size();
                            sumtemp += num3;
                        }
                    }
                    rtlist.add(sumtemp);
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rtlist;
    }


    public List getCtrlDevices(String rname) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<String> didlist = new ArrayList();

        Computerroom comps = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom where rid='" + rname + "'");

        if (comps != null) {
            String cidset = comps.getCidset();
            String cidstr[] = cidset.split("，");

            //寻找ctrl类（治理设备）的device
            if(cidstr != null) {
                for (int i = 0; i < cidstr.length; i++) {
                    Devices dv = (Devices) hbsessionDao.getFirst(
                            "FROM Devices where did='" + cidstr[i] + "' and type = 'ctrl'");
                    if (dv != null) {
                        didlist.add(dv.getDid().toString());
                    }
                }
            }
        }

        return didlist;
    }

    public List getIDPDevices(String rname) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<String> didlist = new ArrayList();

        Computerroom comps = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom where rid='" + rname + "'");

        if (comps != null) {
            String didset = comps.getDidset();
            String didstr[] = didset.split("，");

            //寻找（在线监测设备）的device
            if(didstr != null) {
                for (int i = 0; i < didstr.length; i++) {
                    Devices dv = (Devices) hbsessionDao.getFirst(
                            "FROM Devices where did='" + didstr[i] + "' and type = 'IDP'");
                    if (dv != null) {
                        didlist.add(dv.getDid().toString());
                    }
                }
            }
        }

        return didlist;
    }

    public String getDeviceCtrlStatus(String did, String stime, String etime) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        String rt = new String();

        List<EventCtrl> list = hbsessionDao.search(
                "from EventCtrl where (signature is NULL or signature = '') and did='" + did + "' and time > '" + stime + "' and time < '" + etime + "' order by time desc");

        if (list == null) {
            rt = "正常";
        } else {
            EventCtrl eventCtrl = list.get(0);
            Integer cid = eventCtrl.getCid();

            DictionaryCtrl dictionaryCtrl = (DictionaryCtrl) hbsessionDao.getFirst(
                    "from DictionaryCtrl where id='" + cid + "'");

            if(dictionaryCtrl != null) {
                rt = dictionaryCtrl.getDescription() + dictionaryCtrl.getForFalse();
            }
        }
        return rt;
    }

    public String getDeviceIDPStatus(String did, String stime, String etime) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        String rt = new String();
        Map<String, PowerparmMonitor> parmMap = DataOnline.getParmMap();

        if (null != parmMap) {
            Set<String> didSet = parmMap.keySet();
            Iterator<String> iterator = didSet.iterator();
            boolean txflag =false;
            while (iterator.hasNext()) {
                String sdid = iterator.next();  //监测点id
                if(did.equals(sdid)){
                    txflag=true;
                    break;
                }
            }
            //if(txflag){
                List<EventPower> list = hbsessionDao.search(
                        "from EventPower where (signature is NULL or signature = '') and did='" + did + "' and time > '" + stime + "' and time < '" + etime + "' order by time desc");

                if (list == null) {
                    rt = "正常";
                } else {
                    EventPower eventPower = list.get(0);
                    Integer cid = eventPower.getCid();

                    EventsType dictionary = (EventsType) hbsessionDao.getFirst(
                            "from EventsType where id='" + cid + "'");

                    if(dictionary != null) {
                        rt = dictionary.getDescription();
                    }
                }
//            }else{
//                rt="通讯异常";
//            }
        }


        return rt;
    }

    public String getDeviceNameCtrl(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Devices dv = (Devices) hbsessionDao.getFirst(
                "FROM Devices where did='" + did + "' and type = 'ctrl'");
        return dv.getName();
    }

    public String getDeviceNameIDP(String did) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Devices dv = (Devices) hbsessionDao.getFirst(
                "FROM Devices where did='" + did + "' and type = 'IDP'");
        return dv.getName();
    }


    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        String hql = "update AssessmentSetting assess set assess.redyellow='" + red_yellow +
                "', assess.yellowgreen ='" + yellow_green + "' where assess.aid='" + 1 + "'";

        rt = hbsessionDao.update(hql);

        return rt;
    }

    public boolean setAllEventtypePriorty(String[] eventtypelist, String[] priortylist) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        for (int i = 0; i < eventtypelist.length; i++) {
            String hql = "update EventsType et set et.prior='" + priortylist[i] +
                    "' where et.type='" + eventtypelist[i] + "'";

            rt = hbsessionDao.update(hql);

            if (rt == false) {
                return rt;
            }
        }

        return rt;
    }

    public boolean setCaptrueSettingInfo(String onlineinterval, String qstinterval, String thansentinterval, String
            uploadinterval,String assessinterval,String alarminterval,String tempinterval,String ctrlinterval,
                                         String thresholdsaveinterval,String qstdatainterval) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        String hql = "update BasicSetting bs set bs.onlineinterval=" + onlineinterval + ", bs.qstinterval=" + qstinterval + ", bs.thansentinterval=" + thansentinterval +
                ", bs.uploadinterval=" + uploadinterval + ", bs.assessinterval=" + assessinterval + ", bs.alarminterval=" + alarminterval +
                ", bs.tempinterval=" + tempinterval + ", bs.ctrlinterval=" + ctrlinterval + ", bs.thresholdsaveinterval=" + thresholdsaveinterval +
                ", bs.datainterval=" + qstdatainterval + " where bs.id=0";

        rt = hbsessionDao.update(hql);

        return rt;
    }


}
