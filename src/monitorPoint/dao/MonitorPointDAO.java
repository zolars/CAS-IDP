package monitorPoint.dao;


import java.util.List;

public interface MonitorPointDAO {

    /*
    根据机房，获取本地机房中所有的检测点
     */
    public List getLocalAllMonitorPoint(String computerroom);


}
