package deviceManage.dao;

import hibernatePOJO.DevicesThreshold;

import java.util.List;

public interface DeviceThresholdDAO {

    public List searchFuzzyDeviceThreshold(String name);

    public List getOneDeviceThreshold(String name);

}
