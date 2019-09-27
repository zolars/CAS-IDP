package deviceManage.dao;

import java.util.List;

public interface DeviceThresholdDAO {

    public List getOneDeviceThreshold(String name);
    // 2019 /9 /19 cjy : unused function
//    public List getOneofOneDeviceThreshold(Integer dtid);

    public List searchFuzzyDeviceThreshold(String name);

}
