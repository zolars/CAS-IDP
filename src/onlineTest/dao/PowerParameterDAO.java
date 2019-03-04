package onlineTest.dao;


import java.util.List;

public interface PowerParameterDAO {

    public List<Object> getCurrentParameterData(String did);

    public List<Object> getCurrentWData(String did);

    public List<Object> getCurrentVAData(String did);

    public List<Object> getCurrentVarData(String did);

    public List<Object> getCurrentPFData(String did);

    public List<Object> getCurrentDPFData(String did);

    public List<Object> getCurrentTanData(String did);

    public List<Object> getCurrentPstData(String did);

    public List<Object> getCurrentPltData(String did);

    public List<Object> getCurrentHzData(String did);

    public List<Object> getCurrentUnbData(String did);

    public List<Object> getHisParameterData(String did, String stime, String etime);

}
