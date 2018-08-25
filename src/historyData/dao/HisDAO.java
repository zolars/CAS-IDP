package historyData.dao;


import java.util.List;
import java.util.Map;

public interface HisDAO {

    //取最近的4条数据
    public List getHisData(String monitorpoint, String starttime, String endtime);


}
