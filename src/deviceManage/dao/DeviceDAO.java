package deviceManage.dao;

import hibernatePOJO.DevicesThreshold;

import java.util.List;

public interface DeviceDAO {

    public List getDeviceDataByName(String name);

    public String getDeviceIDByName(String name);

    public List getDeviceAlarmUserDataByName(String name);

    public List getDeviceAlarmUserNameDataByName(String name);

    public List getDeviceThresholdInfoByType(String type);

    public Boolean deleteDeviceAlarmUser(String id);

    public Boolean deleteDeviceThreshold(String dtid);

    public Integer getMaxThresholdId();

    public Boolean addThresholdInfo(String did, Integer dtid, String name,String type,String unit,Double standval,Double cellval,Double floorval,Integer ismark,String alarmcontent);

    public DevicesThreshold getDeviceThreshold(String dtid);

    public Boolean updateDeviceThreshold(String dtid,String name,String type,String unit, Double standval, Double cellval, Double floorval, Integer ismark, String alarmcontent);

    public List getAllIDPDevice();

    public List getAllUPSDevice();

    public List getAllxdcDevice();

    public List getAllfdjDevice();

    public List getAllktDevice();

    public List getAllotherDevice();

    public List searchFuzzyDevice(String name);


}
