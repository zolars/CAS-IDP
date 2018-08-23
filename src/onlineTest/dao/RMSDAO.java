package onlineTest.dao;


import java.util.List;

public interface RMSDAO {

    public void getCurrentData(String monitorpoint);

    public List getCurrentRMSData();

    public List getCurrentTHDData();

    public List getCurrentCFData();

    public List getCurrentHzData(String monitorpoint);

    public List getCurrentUnbData(String monitorpoint);

    public List getCurrentWData(String monitorpoint);

    public List getCurrentVAData(String monitorpoint);

    public List getCurrentVarData(String monitorpoint);

    public List getCurrentPFData(String monitorpoint);

    public List getCurrentDPFData(String monitorpoint);

    public List getCurrentTanData(String monitorpoint);

    public List getCurrentPstData(String monitorpoint);

    public List getCurrentPltData(String monitorpoint);
}
