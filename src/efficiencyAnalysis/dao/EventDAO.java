package efficiencyAnalysis.dao;


import java.util.List;
import java.util.Map;

public interface EventDAO {

    /*
    获取本地机房中所有的检测点
     */
    public List getLocalAllPowerEvent(String rid, String starttime, String endtime);

    public List getLocalLastPowerEvent(String rid);

    public List getLocalAllDeviceEvent(String rid, String starttime, String endtime);

    public List getLocalLastDeviceEvent(String rid);

    public List getLocalAllEnvironmentEvent(String rid, String starttime, String endtime);

    public List getLocalLastEnvironmentEvent(String rid);

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green);

    public List getAllCityEvent();

    public Map getAllProvinceEvent();

    public List getOneProvinceEvent(String pid, String stime, String etime);

}
