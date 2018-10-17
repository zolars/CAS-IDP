package onlineTest.dao;


import java.util.List;

public interface RMSDAO {

   /* public void getCurrentData(String did);*/

    public List getCurrentRMSData(String did);

    public List getCurrentTHDData(String did);

    public List getCurrentHzData(String did);

    public List getCurrentUnbData(String did);

    public List getCurrentWData(String did);

    public List getCurrentVAData(String did);

    public List getCurrentVarData(String did);

    public List getCurrentPFData(String did);

    public List getCurrentDPFData(String did);

    public List getCurrentTanData(String did);

    public List getCurrentPstData(String did);

    public List getCurrentPltData(String did);

  /*  public List getCurrentVhData(String did);*/
}
