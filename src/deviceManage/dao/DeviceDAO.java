package deviceManage.dao;


import hibernatePOJO.DevicesThreshold;

import java.util.List;

public interface DeviceDAO {

    public List getDeviceDataByName(String name);

    public List getDeviceAlarmUserDataByName(String name);

    public Boolean deleteDeviceAlarmUser(String did);

    public List getDeviceThresholdInfoByType(String type);

    public Integer getMaxThresholdId();

    public Boolean addThresholdInfo(Integer dtid, String name,String type,String unit,Double standval,Double cellval,Double floorval,Integer ismark,String alarmcontent);

    public Boolean updateDeviceThreshold(String dtid,String name,String type,String unit, Double standval, Double cellval, Double floorval, Integer ismark, String alarmcontent);

    public DevicesThreshold getDeviceThreshold(String dtid);

    public List getAllIDPDevice();

}
