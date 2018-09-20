package historyData.dao;


import java.util.List;
import java.util.Map;

public interface HisDAO {

    //取历史数据
    public List getHisData(String did, String starttime, String endtime);


}
