package deviceManage.dao.impl;

import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceDAO;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.Devices;
import hibernatePOJO.DevicesThreshold;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DeviceDAOImpl implements DeviceDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getDeviceDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where name = '" + name+ "'");

        return list;
    }

    public String getDeviceIDByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices dv = (Devices)hbsessionDao.getFirst(
                "FROM Devices where name = '" + name+ "'");

        return dv.getDid();
    }

    public List getDeviceAlarmUserData(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DeviceAlarmUser> list = hbsessionDao.search(
                "FROM DeviceAlarmUser");

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

    public Boolean addThresholdInfo(String did, Integer dtid, String name,String type,String unit,Double cellval,Double floorval,Integer ismark, Integer level){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        DevicesThreshold dt = new DevicesThreshold();

        dt.setDtid(dtid);
        dt.setType(type);
        dt.setDid(did);
        dt.setClassify(name);
        dt.setUnit(unit);
        dt.setCellval(cellval);
        dt.setFloorval(floorval);
        dt.setLevel(level);
        dt.setIsmark(ismark);

        rt = hbsessionDao.insert(dt);
        return rt;
    }

    public String getOneDeviceThresholdByNameAndLevel(String name, String level){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DeviceAlarmUser kl = (DeviceAlarmUser)hbsessionDao.getFirst(
                "FROM DeviceAlarmUser order by id desc");

        return "0";
    }

    public String getTypeByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DeviceAlarmUser kl = (DeviceAlarmUser)hbsessionDao.getFirst(
                "FROM DeviceAlarmUser order by id desc");

        return "0";
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

    public Boolean addOneDeviceAlarmUser(String uid, String level){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        DeviceAlarmUser adu = (DeviceAlarmUser) hbsessionDao.getFirst(
                "FROM DeviceAlarmUser where level='"+ level +"'");

        String uidset = adu.getUid();
        String appendstr = "，" + uid;
        uidset += appendstr;

        String hql = "update DeviceAlarmUser kl set kl.uid='" + uidset + "' where level = '"+ level +"'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    public Boolean addOneDeviceAlarmInfo(String precontent){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        String hql = "update DeviceAlarmUser kl set kl.precontent='" + precontent + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    public DevicesThreshold getDeviceThreshold(String dtid){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DevicesThreshold dt = (DevicesThreshold) hbsessionDao.getFirst(
                "FROM DevicesThreshold where dtid='"+ dtid +"'");

        return dt;
    }

    public Boolean updateDeviceThreshold(String dtid, String type, String unit, Double cellval, Double floorval, Integer ismark, Integer level){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        String hql = "update DevicesThreshold kl set kl.classify='" + type +  "', kl.unit='" + unit +
                "', kl.cellval='" + cellval + "', kl.floorval='" + floorval + "', kl.ismark='" + ismark + "', kl.level='" + level + "' where kl.dtid='" + dtid + "'";

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
