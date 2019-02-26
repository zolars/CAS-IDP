package deviceManage.dao;

import java.util.List;

public interface DeviceDAO {

    public List getDeviceDataByName(String name);

    public List getDeviceDataByName(String devicetype, String name);

    public String getDeviceIDByName(String name);

    public List getDeviceAlarmUserData();

    public String getDeviceAlarmUserName(String uid);

    public String getDeviceAlarmUserSet(String id);

    public List getDeviceThresholdInfoByType(String type);

    public Integer getMaxThresholdId();

    public String getMaxDeviceId();

    public Integer getOneDeviceThresholdByNameAndLevel(String name, String level);

    public List getAllIDPDevice();

    public List getAllUPSDevice();

    public List getAllxdcDevice();

    public List getAllfdjDevice();

    public List getAllktDevice();

    public List getAllotherDevice();

    public Integer getQstinterval();

    public List getAllDeviceName();

    public List getOneTypeAllDeviceName(String dvtype);

    public Boolean addOneSMSDevice(String name, String ip, String port);

    public Boolean addThresholdInfo(String did, Integer dtid, String name, String classify, String unit, Double cellval, Double floorval, Integer ismark, Integer alarmcontent, String type);

    public Boolean addOneDeviceInfo(String deviceType, String devname, String devtype, String serialno, String IPaddress, String port, String extra, Integer sms, Integer alert, Integer plantform);

    public Boolean addOneDeviceInfoToBelongPosition(String deviceType, String devname, String belongname, String belonglevel);

    public Boolean addOneDeviceInfoAndBelongPos(String deviceType, String devname,String  devtype, String serialno, String iPaddress, String port, String extra, Integer sms, Integer alert,Integer plantform, String belongname, String belonglevel);


    public Boolean addOneDeviceAlarmUser(String uid, String level);

    public Boolean addOneDeviceAlarmInfo(String etime);


    public Boolean deleteDeviceAlarmUser(String id, String uid);

    public Boolean deleteDeviceThreshold(String dtid);

    public Boolean deleteOneDevice(String did);

    public Boolean deleteOneDeviceInfoToBelongPosition(String did, String belongname, String belonglevel);


    public Boolean modifyOneDeviceInfo(String deviceType, String devname, String devtype, String serialno, String IPaddress, String port, String extra, Integer sms, Integer alert, Integer plantform, String did);

    public Boolean updateDeviceThreshold(String dtid, String type,String unit, Double cellval, Double floorval, Integer ismark, Integer level);

    public Boolean updateThresholdInfo(String did, Integer dtid, String name, String classify, String unit, Double cellval, Double floorval, Integer ismark, Integer level);

    public Boolean existOneDevice(String devname);

    public Boolean isValidDevname(String devname);

    public Boolean isValidValue(String type, Double dcellval, Double dfloorval,String level);

    public List searchFuzzyDevice(String name);

    public String getdttypeBydtid(String dtid);

}
