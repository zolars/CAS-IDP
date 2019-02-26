package historyData.dao;


import java.util.List;

public interface HisDAO {

    //取历史数据
    public List getHisData(String did, String starttime, String endtime);

    public List getHisDataTHD(String did, String starttime, String endtime);

    public List getHisDataLyTx(String did, String starttime, String endtime);

    public List getHisDataEnvrionment(String did, String starttime, String endtime);
}
