package efficiencyAnalysis.dao;


import java.util.List;

public interface PowerEventDAO {

    /*
    获取本地机房中所有的检测点
     */
    public List getLocalAllPowerEvent(String monitorpoint, String starttime, String endtime);


}
