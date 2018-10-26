package deviceManage.dao.impl;

import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceDAO;
import hibernatePOJO.*;

import java.util.ArrayList;
import java.util.List;

/**
 * this CLASS is used for device related operation
 */
public class DeviceDAOImpl implements DeviceDAO {

    /**
     * 通过设备名称获取设备
     * @param name 设备名称
     * @return 设备实体list
     */
    public List getDeviceDataByName(String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where name = '" + name + "'");

        return list;
    }

    /**
     * 通过设备名称获取设备
     * @param name 设备名称
     * @return 设备实体list
     */
    public List getDeviceDataByName(String type, String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where name = '" + name + "' and type='" + type + "'");

        return list;
    }

    /**
     * 通过设备名称获取设备did
     * @param name 设备名称
     * @return 设备did
     */
    public String getDeviceIDByName(String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices dv = (Devices) hbsessionDao.getFirst(
                "FROM Devices where name = '" + name + "'");
        if (dv == null) {
            return "";
        } else {
            return dv.getDid();
        }
    }

    /**
     * 获取所有设备告警表的信息
     * @return 所有设备告警表的信息list
     */
    public List getDeviceAlarmUserData() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DeviceAlarmUser> list = hbsessionDao.search(
                "FROM DeviceAlarmUser");

        return list;
    }

    /**
     * 获取某个uid为uid的用户名信息
     * @return 所有用户名
     */
    public String getDeviceAlarmUserName(String uid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        String uname = "";

        User dauser = (User)hbsessionDao.getFirst(
                "FROM User where uid=" + uid);

        if (dauser != null) {
            uname = dauser.getUname();
        }

        return uname;
    }

    /**
     * 根据类型，获取类型相关的记录
     * @param type 类型
     * @return 所有类型相关的list
     */
    public List getDeviceThresholdInfoByType(String type) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DevicesThreshold> dtlist = hbsessionDao.search(
                "FROM DevicesThreshold where type = '" + type + "'");

        return dtlist;
    }

    public String getDeviceAlarmUserSet(String id) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DeviceAlarmUser da = (DeviceAlarmUser)hbsessionDao.getFirst(
                "FROM DeviceAlarmUser where id = '" + id + "'");

        return da.getUid();
    }

    /**
     * 删除DevicesThreshold表中dtid=dtid的记录
     * @param dtid dtid
     * @return 真或假
     */
    public Boolean deleteDeviceThreshold(String dtid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        rt = hbsessionDao.delete("Delete FROM DevicesThreshold Where id=?", dtid);

        return rt;
    }

    /**
     * 删除DeviceAlarmUser表中id=id的记录
     * @param id id
     * @return 真或假
     */
    public Boolean deleteDeviceAlarmUser(String id, String uid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        rt = hbsessionDao.update("Update DeviceAlarmUser set uid ='" + uid + "' Where id=" + id);

        return rt;
    }

    /**
     * 获得DevicesThreshold表中dtid的最大值
     * @return 最大的dtid
     */
    public Integer getMaxThresholdId() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DevicesThreshold kl = (DevicesThreshold) hbsessionDao.getFirst(
                "FROM DevicesThreshold order by dtid desc");

        if (kl == null) {
            return 1;
        } else {
            return kl.getDtid();
        }
    }

    /**
     * 获得Devices表中did的最大值
     * @return 最大的did
     */
    public String getMaxDeviceId() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices kl = (Devices) hbsessionDao.getFirst(
                "FROM Devices order by did desc");

        if (kl == null) {
            return "0";
        } else {
            return kl.getDid();
        }
    }

    /**
     * 添加一条阈值记录
     * @param did did
     * @param dtid dtid
     * @param name name
     * @param classify classify
     * @param unit unit
     * @param cellval cellval
     * @param floorval floorval
     * @param ismark ismark
     * @param level level
     * @return 真或假
     */
    public Boolean addThresholdInfo(String did, Integer dtid, String name, String classify, String unit, Double cellval, Double floorval,
                                    Integer ismark, Integer level) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        DevicesThreshold dt = new DevicesThreshold();

        dt.setDtid(dtid);
        dt.setName(name);
        dt.setType("9999");
        dt.setDid(did);
        dt.setClassify(classify);
        dt.setUnit(unit);
        dt.setCellval(cellval);
        dt.setFloorval(floorval);
        dt.setLevel(level);
        dt.setIsmark(ismark);

        rt = hbsessionDao.insert(dt);
        return rt;
    }

    /**
     * 根据阈值名称和告警等级获得一条阈值记录的dtid
     * @param name name
     * @param level level
     * @return 阈值记录的dtid
     */
    public Integer getOneDeviceThresholdByNameAndLevel(String name, String level) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        DevicesThreshold kl = (DevicesThreshold) hbsessionDao.getFirst(
                "FROM DevicesThreshold where name='" + name + "' and level=" + level);

        if (kl == null) {
            return 0;
        } else {
            return kl.getDtid();
        }
    }

    /**
     * 添加一条设备信息到device表
     * @param deviceType deviceType
     * @param devname devname
     * @param devtype devtype
     * @param serialno serialno
     * @param ipaddress ipaddress
     * @param port port
     * @param extra extra
     * @param sms sms
     * @param alert alert
     * @param plantform plantform
     * @return 真或假
     */
    public Boolean  addOneDeviceInfo(String deviceType, String devname, String devtype, String serialno, String ipaddress, String port,
                                     String extra, Integer sms, Integer alert, Integer plantform) {
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
        dt.setiPaddress(ipaddress);
        dt.setPort(port);
        dt.setExtra(extra);
        dt.setIsSms(sms);
        dt.setIsAlart(alert);
        dt.setIsPlartform(plantform);

        rt = hbsessionDao.insert(dt);
        return rt;
    }

    /**
     * 追加一个用户id到某个告警等级level的记录中
     * @param uid uid
     * @param level level
     * @return 真或假
     */
    public Boolean addOneDeviceAlarmUser(String uid, String level) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        DeviceAlarmUser adu = (DeviceAlarmUser) hbsessionDao.getFirst(
                "FROM DeviceAlarmUser where level='" + level + "'");

        String uidset = adu.getUid();
        String appendstr = "，" + uid;
        uidset += appendstr;

        String hql = "update DeviceAlarmUser kl set kl.uid='" + uidset + "' where level = '" + level + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    /**
     * 添加一个告警内容到某个XXXXXXXXXX记录中
     * @param precontent precontent
     * @return 真或假
     */
    public Boolean addOneDeviceAlarmInfo(String precontent) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        String hql = "update DeviceAlarmUser kl set kl.precontent='" + precontent + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    /**
     * 更新DevicesThreshold表中dtid=dtid的记录
     * @param dtid dtid
     * @param type type
     * @param unit unit
     * @param cellval cellval
     * @param floorval floorval
     * @param ismark ismark
     * @param level level
     * @return 真或假
     */
    public Boolean updateDeviceThreshold(String dtid, String type, String unit, Double cellval, Double floorval, Integer ismark, Integer level) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        String hql = "update DevicesThreshold kl set kl.classify='" + type +  "', kl.unit='" + unit
                + "', kl.cellval=" + cellval + ", kl.floorval=" + floorval + ", kl.ismark=" + ismark
                + ", kl.level='" + level + "' where kl.dtid='" + dtid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }

    /**
     * 更新DevicesThreshold表中dtid=dtid的记录
     * @param did did
     * @param dtid dtid
     * @param name name
     * @param classify classify
     * @param unit unit
     * @param cellval cellval
     * @param floorval floorval
     * @param ismark ismark
     * @param level level
     * @return 真或假
     */
    public Boolean updateThresholdInfo(String did, Integer dtid, String name, String classify, String unit, Double cellval,
                                       Double floorval, Integer ismark, Integer level) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        String hql = "update DevicesThreshold kl set kl.dtid='" + dtid +  "', kl.classify='" + classify
                + "', kl.did='" + did + "', kl.unit='" + unit +  "', kl.cellval='" + cellval
                + "', kl.floorval='" + floorval + "', kl.ismark='" + ismark
                + "' where kl.name='" + name + "' and kl.level=" + level;

        rt = hbsessionDao.update(hql);
        return rt;
    }

    /**
     * 获得Devices表中type='IDP'的记录
     * @return list
     */
    public List getAllIDPDevice() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'IDP'");

        if (list.size() > 10) {
            List<Devices> rtlist = new ArrayList<>();
            for (int i = 0; i < 10; i++) {
                rtlist.add(list.get(i));
            }
            return rtlist;
        } else {
            return list;
        }
    }

    /**
     * 获得Devices表中type='UPS'的记录
     * @return list
     */
    public List getAllUPSDevice() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'UPS'");

        if (list.size() > 10) {
            List<Devices> rtlist = new ArrayList<>();
            for (int i = 0; i < 10; i++) {
                rtlist.add(list.get(i));
            }
            return rtlist;
        } else {
            return list;
        }
    }

    /**
     * 获得Devices表中type='battery'的记录
     * @return list
     */
    public List getAllxdcDevice() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'battery'");

        if (list.size() > 10) {
            List<Devices> rtlist = new ArrayList<>();
            for (int i = 0; i < 10; i++) {
                rtlist.add(list.get(i));
            }
            return rtlist;
        } else {
            return list;
        }
    }

    /**
     * 获得Devices表中type='generator'的记录
     * @return list
     */
    public List getAllfdjDevice() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'generator'");

        if (list.size() > 10) {
            List<Devices> rtlist = new ArrayList<>();
            for (int i = 0; i < 10; i++) {
                rtlist.add(list.get(i));
            }
            return rtlist;
        } else {
            return list;
        }
    }

    /**
     * 获得Devices表中type='air conditioner'的记录
     * @return list
     */
    public List getAllktDevice() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'air conditioner'");

        if (list.size() > 10) {
            List<Devices> rtlist = new ArrayList<>();
            for (int i = 0; i < 10; i++) {
                rtlist.add(list.get(i));
            }
            return rtlist;
        } else {
            return list;
        }
    }

    /**
     * 获得Devices表中type='other'的记录
     * @return list
     */
    public List getAllotherDevice() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type = 'other'");

        if (list.size() > 10) {
            List<Devices> rtlist = new ArrayList<>();
            for (int i = 0; i < 10; i++) {
                rtlist.add(list.get(i));
            }
            return rtlist;
        } else {
            return list;
        }
    }

    /**
     * 获得Devices表中name like name% 的模糊查询的记录
     * @param name name
     * @return list
     */
    public List searchFuzzyDevice(String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where name like '" + name + "%'");

        return list;
    }

    public Integer getQstinterval() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        BasicSetting bs = (BasicSetting) hbsessionDao.getFirst(
                "FROM BasicSetting");

        return bs.getQstinterval();
    }

}
