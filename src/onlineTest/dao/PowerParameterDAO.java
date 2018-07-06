package onlineTest.dao;


import java.util.List;

public interface PowerParameterDAO {

    public List<Object> getCurrentParameterData(String monitorpoint);

    public List<Object> getCurrentWData(String monitorpoint);

    public List<Object> getCurrentVAData(String monitorpoint);

    public List<Object> getCurrentVarData(String monitorpoint);

    public List<Object> getCurrentPFData(String monitorpoint);

    public List<Object> getCurrentDPFData(String monitorpoint);

    public List<Object> getCurrentTanData(String monitorpoint);

    public List<Object> getCurrentPstData(String monitorpoint);

    public List<Object> getCurrentPltData(String monitorpoint);

    public List<Object> getCurrentHzData(String monitorpoint);

    public List<Object> getCurrentUnbData(String monitorpoint);

    public List<Object> getHisParameterData(String monitorpoint, String stime, String etime);

}
