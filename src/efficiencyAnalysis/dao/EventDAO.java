package efficiencyAnalysis.dao;


import java.util.List;

public interface EventDAO {

    /*
    获取本地机房中所有的检测点
     */
    public List getLocalAllPowerEvent(String rid, String starttime, String endtime);

    public List getLocalAllDeviceEvent(String rid, String starttime, String endtime);

    public List getLocalAllEnvironmentEvent(String rid, String starttime, String endtime);

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green);

}
