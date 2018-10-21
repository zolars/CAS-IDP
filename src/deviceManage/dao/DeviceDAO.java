package deviceManage.dao;

import hibernatePOJO.DevicesThreshold;

import java.util.List;

public interface DeviceDAO {

    public List getDeviceDataByName(String name);

    public String getDeviceIDByName(String name);

    public List getDeviceAlarmUserData();

    public String getDeviceAlarmUserName(String uid);

    public String getDeviceAlarmUserSet(String id);

    public List getDeviceAlarmUserNameDataByName(String name);

    public List getDeviceThresholdInfoByType(String type);

    public Boolean deleteDeviceAlarmUser(String id, String uid);

    public Boolean deleteDeviceThreshold(String dtid);

    public Integer getMaxThresholdId();

    public String getMaxDeviceId();

    public Integer getOneDeviceThresholdByNameAndLevel(String name, String level);

    public String getTypeByName(String name);

    public Boolean addThresholdInfo(String did, Integer dtid, String name, String classify, String unit, Double cellval, Double floorval, Integer ismark, Integer alarmcontent);

    public Boolean addOneDeviceInfo(String deviceType, String devname, String devtype, String serialno, String IPaddress, String port, String extra, Integer sms, Integer alert, Integer plantform);

    public Boolean addOneDeviceAlarmUser(String uid, String level);

    public Boolean addOneDeviceAlarmInfo(String etime);

    public DevicesThreshold getDeviceThreshold(String dtid);

    public Boolean updateDeviceThreshold(String dtid, String type,String unit, Double cellval, Double floorval, Integer ismark, Integer level);

    public Boolean updateThresholdInfo(String did, Integer dtid, String name, String classify, String unit, Double cellval, Double floorval, Integer ismark, Integer level);

    public List getAllIDPDevice();

    public List getAllUPSDevice();

    public List getAllxdcDevice();

    public List getAllfdjDevice();

    public List getAllktDevice();

    public List getAllotherDevice();

    public List searchFuzzyDevice(String name);

    public Integer getQstinterval();

}
