package deviceManage.dao.impl;

import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceDAO;
import hibernatePOJO.*;
import org.apache.commons.lang3.ObjectUtils;

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
            return dv.getDid().toString();
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
     * 删除Devices表中did=did的记录
     * @param did did
     * @return 真或假
     */
    public Boolean deleteOneDevice(String did){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        rt = hbsessionDao.delete("Delete FROM Devices Where did=?", did);

        return rt;
    }

    /**
     * 删除did在省、市、机房表中的记录
     * @param did did
     * @return 真或假
     */
    public Boolean deleteOneDeviceInfoToBelongPosition(String did, String belongname, String belonglevel){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

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
            return kl.getDid().toString();
        }
    }

    public Boolean addOneSMSDevice(String name, String ip, String port){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        Devices dt = new Devices();

        dt.setName(name);
        dt.setType("SMS");
        dt.setiPaddress(ip);
        dt.setPort(port);

        rt = hbsessionDao.insert(dt);
        return rt;

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
                                    Integer ismark, Integer level, String type) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        DevicesThreshold dt = new DevicesThreshold();

        dt.setDtid(dtid);
        dt.setName(name);
        dt.setType(type);
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
     * 添加一条设备信息到device表 注意设备名称唯一
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

        dt.setDid(imaxid);
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

     public Boolean addOneDeviceInfoToBelongPosition(String deviceType, String devname, String belongname, String belonglevel){
         HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
         boolean rt = false;

         Devices dv = (Devices) hbsessionDao.getFirst(
                 "FROM Devices where name='" + devname + "'");

         if(dv == null || belonglevel.equals("0")) {
             return false;
         } else {
             String did = dv.getDid().toString();

             if(belonglevel.equals("1")) {
                 ProvinceBank pb = (ProvinceBank) hbsessionDao.getFirst(
                         "FROM ProvinceBank where pbname='" + belongname + "分行" + "'");

                 if(deviceType.equals("其他传感器")) {
                     String tempset = pb.getTempset();
                     if (tempset!= null && tempset.length() > 0) {
                         tempset += "，";
                     }
                     tempset += did;
                     String hql = "update ProvinceBank pb set tempset='" + tempset + "' where pbname = '" + belongname + "'";
                     rt = hbsessionDao.update(hql);
                 } else {
                     String didset = pb.getDidset();
                     if (didset!= null && didset.length() > 0) {
                         didset += "，";
                     }
                     didset += did;
                     String hql = "update ProvinceBank pb set didset='" + didset + "' where pbname = '" + belongname + "'";
                     rt = hbsessionDao.update(hql);
                 }
             }

             else if(belonglevel.equals("2")) {
                 CityBank pb = (CityBank) hbsessionDao.getFirst(
                         "FROM CityBank where cbname='" + belongname + "'");

                 if(deviceType.equals("其他传感器")) {
                     String tempset = pb.getTempset();
                     if (tempset!= null && tempset.length() > 0) {
                         tempset += "，";
                     }
                     tempset += did;
                     String hql = "update CityBank pb set tempset='" + tempset + "' where cbname = '" + belongname + "'";
                     rt = hbsessionDao.update(hql);
                 } else {
                     String didset = pb.getDidset();
                     if (didset!= null && didset.length() > 0) {
                         didset += "，";
                     }
                     didset += did;
                     String hql = "update CityBank pb set didset='" + didset + "' where cbname = '" + belongname + "'";
                     rt = hbsessionDao.update(hql);
                 }
             }

             else if(belonglevel.equals("3")) {
                 Computerroom pb = (Computerroom) hbsessionDao.getFirst(
                         "FROM Computerroom where rname='" + belongname + "'");

                 if(deviceType.equals("其他传感器")) {
                     String tempset = pb.getTempset();
                     if (tempset!= null && tempset.length() > 0) {
                         tempset += "，";
                     }
                     tempset += did;
                     String hql = "update Computerroom pb set tempset='" + tempset + "' where rname = '" + belongname + "'";
                     rt = hbsessionDao.update(hql);
                 } else {
                     String didset = pb.getDidset();
                     if (didset!= null && didset.length() > 0) {
                         didset += "，";
                     }
                     didset += did;
                     String hql = "update Computerroom pb set didset='" + didset + "' where rname = '" + belongname + "'";
                     rt = hbsessionDao.update(hql);
                 }
             }
         }

         return rt;
     }


    public Boolean addOneDeviceInfoAndBelongPos(String deviceType, String devname,String  devtype, String serialno, String iPaddress, String port, String extra, Integer sms, Integer alert,Integer plantform, String belongname, String belonglevel){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1 = false, rt2 = false;

        Devices dt = new Devices();
        String maxdid = getMaxDeviceId();
        Integer imaxid = Integer.parseInt(maxdid) + 1;

        dt.setDid(imaxid);
        dt.setDevicetype(deviceType);
        dt.setName(devname);
        dt.setType(devtype);
        dt.setSerialno(serialno);
        dt.setiPaddress(iPaddress);
        dt.setPort(port);
        dt.setExtra(extra);
        dt.setIsSms(sms);
        dt.setIsAlart(alert);
        dt.setIsPlartform(plantform);

        rt1 = hbsessionDao.insert(dt);

        Devices dv = (Devices) hbsessionDao.getFirst(
                "FROM Devices where name='" + devname + "'");

        if(dv == null || belonglevel.equals("0")) {
            return false;
        } else {
            String did = dv.getDid().toString();

            if(belonglevel.equals("1")) {
                ProvinceBank pb = (ProvinceBank) hbsessionDao.getFirst(
                        "FROM ProvinceBank where pbname='" + belongname + "分行" + "'");

                if(deviceType.equals("其他传感器")) {
                    String tempset = pb.getTempset();
                    if (tempset!= null && tempset.length() > 0) {
                        tempset += "，";
                    }
                    tempset += did;
                    String hql = "update ProvinceBank pb set tempset='" + tempset + "' where pbname = '" + belongname + "'";
                    rt2 = hbsessionDao.update(hql);
                } else {
                    String didset = pb.getDidset();
                    if (didset!= null && didset.length() > 0) {
                        didset += "，";
                    }
                    didset += did;
                    String hql = "update ProvinceBank pb set didset='" + didset + "' where pbname = '" + belongname + "'";
                    rt2 = hbsessionDao.update(hql);
                }
            }

            else if(belonglevel.equals("2")) {
                CityBank pb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbname='" + belongname + "'");

                if(deviceType.equals("其他传感器")) {
                    String tempset = pb.getTempset();
                    if (tempset!= null && tempset.length() > 0) {
                        tempset += "，";
                    }
                    tempset += did;
                    String hql = "update CityBank pb set tempset='" + tempset + "' where cbname = '" + belongname + "'";
                    rt2 = hbsessionDao.update(hql);
                } else {
                    String didset = pb.getDidset();
                    if (didset!= null && didset.length() > 0) {
                        didset += "，";
                    }
                    didset += did;
                    String hql = "update CityBank pb set didset='" + didset + "' where cbname = '" + belongname + "'";
                    rt2 = hbsessionDao.update(hql);
                }
            }

            else if(belonglevel.equals("3")) {
                Computerroom pb = (Computerroom) hbsessionDao.getFirst(
                        "FROM Computerroom where rname='" + belongname + "'");

                if(deviceType.equals("其他传感器")) {
                    String tempset = pb.getTempset();
                    if (tempset!= null && tempset.length() > 0) {
                        tempset += "，";
                    }
                    tempset += did;
                    String hql = "update Computerroom pb set tempset='" + tempset + "' where rname = '" + belongname + "'";
                    rt2 = hbsessionDao.update(hql);
                } else {
                    String didset = pb.getDidset();
                    if (didset!= null && didset.length() > 0) {
                        didset += "，";
                    }
                    didset += did;
                    String hql = "update Computerroom pb set didset='" + didset + "' where rname = '" + belongname + "'";
                    rt2 = hbsessionDao.update(hql);
                }
            }
        }

        return rt1 && rt2;

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
     * 更新DevicesThreshold表中did=did的记录
     * @param deviceType deviceType
     * @param devname devname
     * @param devtype devtype
     * @param serialno serialno
     * @param IPaddress IPaddress
     * @param port port
     * @param extra extra
     * @param sms sms
     * @param alert alert
     * @param plantform plantform
     * @return 真或假
     */
    public Boolean modifyOneDeviceInfo(String deviceType, String devname, String devtype, String serialno, String IPaddress,
                                       String port, String extra, Integer sms, Integer alert, Integer plantform, String did){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        String hql = "update Devices kl set kl.devicetype='" + deviceType +  "', kl.type='" + devtype
                + "', kl.serialno='" + serialno + "', kl.iPaddress='" + IPaddress + "', kl.port='" + port
                + "', kl.extra='" + extra + "', kl.isSms='" + sms + "', kl.isAlart='" + alert
                + "', kl.isPlartform='" + plantform + "', kl.name='" + devname + "' where kl.did='" + did + "'";

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

    public Boolean existOneDevice(String devname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        List list = hbsessionDao.search("FROM Devices where name='" + devname + "'");

        if(list == null){
            rt = false;
        } else if(list.size() >= 1) {
            rt = true;
        }

        return rt;
    }

    public Boolean isValidDevname(String devname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        List list = hbsessionDao.search("FROM Devices where name='" + devname + "'");

        if(list == null){
            rt = true;
        }

        return rt;
    }

    public String getdttypeBydtid(String dtid){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        DevicesThreshold dt = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where dtid='" + dtid + "'");

        return dt.getType();
    }


    // 阈值校验：低等级不能大于或小于高等级
    public Boolean isValidValue(String type, Double dcellval, Double dfloorval, String level){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = true;

        DevicesThreshold dt1 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where type='" + type + "' and level = '1'");
        DevicesThreshold dt2 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where type='" + type + "' and level = '2'");
        DevicesThreshold dt3 = (DevicesThreshold)hbsessionDao.getFirst("FROM DevicesThreshold where type='" + type + "' and level = '3'");

        if(dt1 == null || dt2 == null || dt3 == null){
            rt = true;
        } else {
            //上限
            if(level.equals("3") && dcellval != null){
                if(dt2.getCellval() >= dcellval) {
                    rt = false;
                }
            } else if(level.equals("2") && dcellval != null){
                if(dt1.getCellval() >= dcellval) {
                    rt = false;
                }
                if(dt3.getCellval() < dcellval) {
                    rt = false;
                }
            } else if(level.equals("1") && dcellval != null){
                if(dt2.getCellval() < dcellval) {
                    rt = false;
                }
            }

            //下限
            if(level.equals("3") && dfloorval != null){
                if(dt2.getFloorval() <= dfloorval) {
                    rt = false;
                }
            } else if(level.equals("2") && dfloorval != null){
                if(dt1.getFloorval() <= dfloorval) {
                    rt = false;
                }
                if(dt3.getFloorval() > dfloorval) {
                    rt = false;
                }
            } else if(level.equals("1") && dfloorval != null){
                if(dt2.getFloorval() > dfloorval) {
                    rt = false;
                }
            }
        }

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

    public List getAllDeviceName(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices");

        if (list != null) {
            List<String> rtlist = new ArrayList<>();
            for (int i = 0; i < list.size(); i++) {
                rtlist.add(list.get(i).getName());
            }
            return rtlist;
        } else {
            return null;
        }
    }

    public List getOneTypeAllDeviceName(String dvtype){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where type='" + dvtype+ "'");

        if (list != null) {
            List<String> rtlist = new ArrayList<>();
            for (int i = 0; i < list.size(); i++) {
                rtlist.add(list.get(i).getName());
            }
            return rtlist;
        } else {
            return null;
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
        Integer rt = null;

        BasicSetting bs = (BasicSetting) hbsessionDao.getFirst(
                "FROM BasicSetting");

        if (bs != null) {
            rt = bs.getQstinterval();
        }

        return rt;
    }

}
