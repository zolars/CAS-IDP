package efficiencyAnalysis.dao;


import java.util.List;
import java.util.Map;

public interface EventDAO {

    public boolean addSignAndAnnotEvent(String teid, String sign, String annot);

    public List getLocalAllPowerEvent(String cbname, String starttime, String endtime);

    public List getLocalLastPowerEvent(String cbname);

    public List getLocalAllDetailPowerEventlytx(String cbname, String starttime, String endtime);

    public List getLocalLastDetailPowerEventlytx(String cbname);

    public List getLocalAllDetailPowerEventxb(String cbname, String starttime, String endtime);

    public List getLocalLastDetailPowerEventxb(String cbname);

    public List getLocalAllDetailPowerEventsxbph(String cbname, String starttime, String endtime);

    public List getLocalLastDetailPowerEventsxbph(String cbname);

    public List getLocalAllDetailPowerEventshunbian(String cbname, String starttime, String endtime);

    public List getLocalLastDetailPowerEventshunbian(String cbname);

    public List getLocalAllDetailPowerEventshanbian(String cbname, String starttime, String endtime);

    public List getLocalLastDetailPowerEventshanbian(String cbname);

    public List getAllCityEvent();

    public Map getAllProvinceEvent();

    public List getAllEventTypeTree();

    public List getOneProvinceEvent(String pid, String stime, String etime);

    public List getAllCityBankEvent(String pbname);

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green);

    public boolean setAllEventtypePriorty(String[] eventtypelist, String[] priortylist);

    public boolean setCaptrueSettingInfo(String onlineinterval, String tansentinterval, String upload, String ip, String onlineport, String tansentport, String did);

}
