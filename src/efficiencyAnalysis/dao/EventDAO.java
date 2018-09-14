package efficiencyAnalysis.dao;


import java.util.List;
import java.util.Map;

public interface EventDAO {

    public boolean addSignAndAnnotEvent(String teid, String sign, String annot);

    public List getLocalAllPowerEvent(String cbname, String starttime, String endtime);

    public List getLocalLastPowerEvent(String cbname);

    public List getLocalAllDetailPowerEvent(String cbname, String starttime, String endtime);

    public List getLocalLastDetailPowerEvent(String cbname);

    public List getAllCityEvent();

    public Map getAllProvinceEvent();

    public List getAllEventTypeTree();

    public List getOneProvinceEvent(String pid, String stime, String etime);

    public List getAllCityBankEvent(String pbname);

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green);

    public boolean setAllEventtypePriorty(String[] eventtypelist, String[] priortylist);

}
