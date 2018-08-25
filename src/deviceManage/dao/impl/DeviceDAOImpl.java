package deviceManage.dao.impl;

import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceDAO;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.Devices;
import hibernatePOJO.DevicesThreshold;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

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

        return kl.getDtid();
    }

    public Boolean addThresholdInfo(Integer dtid, String name,String type,String unit,Double standval,Double cellval,Double floorval,Integer ismark,String alarmcontent){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        DevicesThreshold dt = new DevicesThreshold();
        dt.setDtid(dtid);
        dt.setName(name);
        dt.setType(type);
        dt.setUnit(unit);
        dt.setStandardval(standval);
        dt.setCellval(cellval);
        dt.setFloorval(floorval);
        dt.setIsMark(ismark);
        dt.setAlarmcontent(alarmcontent);

        rt = hbsessionDao.insert(dt);
        return rt;
    }

    public DevicesThreshold getDeviceThreshold(String dtid){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DevicesThreshold dt = (DevicesThreshold)hbsessionDao.getFirst(
                "FROM DevicesThreshold where dtid='"+ dtid +"'");

        return dt;
    }

    public Boolean updateDeviceThreshold(String dtid,String name,String type,String unit, Double standval, Double cellval, Double floorval, Integer ismark, String alarmcontent){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;
        DevicesThreshold kl = getDeviceThreshold(dtid);

        kl.setName(name);
        kl.setType(type);
        kl.setUnit(unit);
        kl.setStandardval(standval);
        kl.setCellval(cellval);
        kl.setFloorval(floorval);
        kl.setIsMark(ismark);
        kl.setAlarmcontent(alarmcontent);

        String hql = "update DevicesThreshold kl set kl.name='" + name + "' where kl.dtid='" + dtid + "'";

        rt = hbsessionDao.update(kl, hql);
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
