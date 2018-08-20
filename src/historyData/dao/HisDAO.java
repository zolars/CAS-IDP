package historyData.dao;


import java.util.List;

public interface HisDAO {

    //取最近的5条数据
    public List getHisUData(String monitorpoint, String starttime, String endtime);

    //取最近的5条数据
    public List getHisIData(String monitorpoint, String starttime, String endtime);

    //取最近的5条数据
    public List getHisHzData(String monitorpoint, String starttime, String endtime);

    //取最近的5条数据
    public List getHisGLData(String monitorpoint, String starttime, String endtime);


}
