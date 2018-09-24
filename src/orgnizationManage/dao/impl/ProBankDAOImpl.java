package orgnizationManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import orgnizationManage.dao.ProBankDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.lang.String;

public class ProBankDAOImpl implements ProBankDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

        public List getCityBankDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        System.out.println(name);
        List<ProvinceBank> pblist = hbsessionDao.search(
                "FROM ProvinceBank where pbname = '" + name+ "'");

        System.out.println("here:"+pblist.get(0).getCbidset());
        String cbidset=pblist.get(0).getCbidset();
        String[] cbid=cbidset.split("，");

        List<String> cbname = new ArrayList();
        for(String s:cbid){
            List<CityBank> cblist = hbsessionDao.search(
                    "FROM CityBank where cbid = '" + s + "'");
            cbname.add(cblist.get(0).getCbname());
        }

        return cbname;
    }

        public List getCompRoomDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        System.out.println(name);
        List<ProvinceBank> pblist = hbsessionDao.search(
                "FROM ProvinceBank where pbname = '" + name+ "'");

        String cbidset=pblist.get(0).getCbidset();
        String[] cbid=cbidset.split("，");

        List<String> compRoom = new ArrayList();
        for(String s:cbid){
            List<CityBank> cblist = hbsessionDao.search(
                    "FROM CityBank where cbid = '" + s + "'");
            compRoom.add(cblist.get(0).getCompRoom());
        }

        List<String> rname = new ArrayList();
        for(int i=0;i<compRoom.size();i++){
            String[] cbroom = compRoom.get(i).split("，");
            String s = "1";
            for(String r:cbroom){
                List<Computerroom> roomlist = hbsessionDao.search(
                        "FROM Computerroom where rid = '" + r + "'");
                s += roomlist.get(0).getRname()+"，";
            }
            rname.add(s.substring(1,s.length()-1));
        }

        return rname;
    }

    public String getDeviceIDByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices dv = (Devices)hbsessionDao.getFirst(
                "FROM Devices where name = '" + name+ "'");

        return dv.getDid();
    }

    public List getDeviceAlarmUserDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices dv = (Devices)hbsessionDao.getFirst(
                "FROM Devices where name = '" + name+ "'");

        List<DeviceAlarmUser> list = hbsessionDao.search(
                "FROM DeviceAlarmUser where did = '" + dv.getDid() + "'");

        return list;
    }

    public List getDeviceAlarmUserNameDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices dv = (Devices)hbsessionDao.getFirst(
                "FROM Devices where name = '" + name+ "'");

        List<DeviceAlarmUser> list = hbsessionDao.search(
                "FROM DeviceAlarmUser where did = '" + dv.getDid() + "'");

        return list;
    }

    public List getDeviceThresholdInfoByType(String type){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DevicesThreshold> dtlist = hbsessionDao.search(
                "FROM DevicesThreshold where type = '" + type+ "'");

        return dtlist;
    }

    public Boolean deleteDeviceThreshold(String dtid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM DevicesThreshold Where id=?", dtid);

        return rt;
    }

    public Boolean deleteDeviceAlarmUser(String id){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM DeviceAlarmUser Where id=?", id);

        return rt;
    }

    public Integer getMaxThresholdId(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DevicesThreshold kl = (DevicesThreshold)hbsessionDao.getFirst(
                "FROM DevicesThreshold order by dtid desc");

        if(kl == null)
            return 1;
        else
            return kl.getDtid();
    }

    public String getMaxDeviceId(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices kl = (Devices)hbsessionDao.getFirst(
                "FROM Devices order by did desc");

        if(kl == null)
            return "0";
        else
            return kl.getDid();
    }

    public String getMaxDeviceAlarmId(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DeviceAlarmUser kl = (DeviceAlarmUser)hbsessionDao.getFirst(
                "FROM DeviceAlarmUser order by id desc");

        if(kl == null)
            return "0";
        else
            return kl.getId();
    }

    public Boolean addThresholdInfo(String did, Integer dtid, String name,String type,String unit,Double standval,Double cellval,Double floorval,Integer ismark,String alarmcontent){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        DevicesThreshold dt = new DevicesThreshold();
        dt.setDid(did);
        dt.setDtid(dtid);
        dt.setUnit(unit);
        dt.setCellval(cellval);
        dt.setFloorval(floorval);

        rt = hbsessionDao.insert(dt);
        return rt;
    }

    public Boolean  addOneDeviceInfo(String deviceType, String devname, String devtype, String serialno, String IPaddress, String port,
                                     String extra, Integer sms, Integer alert, Integer plantform){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        Devices dt = new Devices();
        String maxdid = getMaxDeviceId();
        Integer imaxid = Integer.parseInt(maxdid) + 1;

        dt.setDid(imaxid.toString());
        dt.setDevicetype(deviceType);
        dt.setName(devname);
        dt.setType(devtype);
        dt.setSerialno(serialno);
        dt.setiPaddress(IPaddress);
        dt.setPort(port);
        dt.setExtra(extra);
        dt.setIsSms(sms);
        dt.setIsAlart(alert);
        dt.setIsPlartform(plantform);

        rt = hbsessionDao.insert(dt);
        return rt;
    }

    public Boolean addOneDeviceAlarmUser(String did, String uid, String stime, String etime){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        DeviceAlarmUser dt = new DeviceAlarmUser();
        String maxid = getMaxDeviceAlarmId();
        Integer imaxid = Integer.parseInt(maxid) + 1;
        Timestamp tstime = Timestamp.valueOf(stime);
        Timestamp tetime = Timestamp.valueOf(etime);

        dt.setId(imaxid.toString());
        dt.setDid(did);
        dt.setUid(uid);

        rt = hbsessionDao.insert(dt);
        return rt;
    }

    public DevicesThreshold getDeviceThreshold(String dtid){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DevicesThreshold dt = (DevicesThreshold) hbsessionDao.getFirst(
                "FROM DevicesThreshold where dtid='"+ dtid +"'");

        return dt;
    }

    public Boolean updateDeviceThreshold(String dtid,String name,String type,String unit, Double standval, Double cellval, Double floorval, Integer ismark, String alarmcontent){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;
        DevicesThreshold kl = getDeviceThreshold(dtid);

        String hql = "update DevicesThreshold kl set kl.name='" + name + "', kl.type='" + type +  "', kl.unit='" + unit +  "', kl.standardval='" + standval +
                "', kl.cellval='" + cellval + "', kl.floorval='" + floorval + "', kl.isMark='" + ismark +  "', kl.alarmcontent='" + alarmcontent +  "' where kl.dtid='" + dtid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    public List getAllIDPDevice(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'IDP'");

        if(list.size() > 10){
            List<Devices> rtlist = new ArrayList<>();
            for(int i = 0; i< 10; i++)
                rtlist.add(list.get(i));
            return rtlist;
        }
        else return list;
    }

    public List getAllUPSDevice(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'UPS'");

        if(list.size() > 10){
            List<Devices> rtlist = new ArrayList<>();
            for(int i = 0; i< 10; i++)
                rtlist.add(list.get(i));
            return rtlist;
        }
        else return list;
    }

    public List getAllxdcDevice(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'battery'");

        if(list.size() > 10){
            List<Devices> rtlist = new ArrayList<>();
            for(int i = 0; i< 10; i++)
                rtlist.add(list.get(i));
            return rtlist;
        }
        else return list;
    }

    public List getAllfdjDevice(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'generator'");

        if(list.size() > 10){
            List<Devices> rtlist = new ArrayList<>();
            for(int i = 0; i< 10; i++)
                rtlist.add(list.get(i));
            return rtlist;
        }
        else return list;
    }

    public List getAllktDevice(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'air conditioner'");

        if(list.size() > 10){
            List<Devices> rtlist = new ArrayList<>();
            for(int i = 0; i< 10; i++)
                rtlist.add(list.get(i));
            return rtlist;
        }
        else return list;
    }

    public List getAllotherDevice(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'other'");

        if(list.size() > 10){
            List<Devices> rtlist = new ArrayList<>();
            for(int i = 0; i< 10; i++)
                rtlist.add(list.get(i));
            return rtlist;
        }
        else return list;
    }

    public List searchFuzzyDevice(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where name like '" + name + "%'");

        return list;
    }

}
