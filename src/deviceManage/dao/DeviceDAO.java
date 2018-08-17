package deviceManage.dao;


import java.util.List;

public interface DeviceDAO {

    public List getDeviceDataByName(String name);

    public List getDeviceAlarmUserDataByName(String name);

    public Boolean deleteDeviceAlarmUser(String did);

    public List getDeviceThresholdInfoByType(String type);
}
