package efficiencyAnalysis.dao;


import java.util.List;
import java.util.Map;

public interface EventDAO {

    public boolean addSignAndAnnotDeviceEvent(String teid, String sign, String annot);

    public boolean addSignAndAnnotPowerEvent(String teid, String sign, String annot);

    public boolean addSignAndAnnotEnvironEvent(String teid, String sign, String annot);

    //电能类事件
    public List getLocalAllPowerEvent(String cbid, String starttime, String endtime);

    public List getLocalLastPowerEvent(String cbid);

    public List getLocalAllDetailPowerEventlytx(String cbid, String starttime, String endtime);

    public List getLocalLastDetailPowerEventlytx(String cbid);

    public List getLocalAllDetailPowerEventxb(String cbid, String starttime, String endtime);

    public List getLocalLastDetailPowerEventxb(String cbid);

    public List getLocalAllDetailPowerEventsxbph(String cbid, String starttime, String endtime);

    public List getLocalLastDetailPowerEventsxbph(String cbid);

    public List getLocalAllDetailPowerEventshunbian(String cbid, String starttime, String endtime);

    public List getLocalLastDetailPowerEventshunbian(String cbid);

    public List getLocalAllDetailPowerEventshanbian(String cbid, String starttime, String endtime);

    public List getLocalLastDetailPowerEventshanbian(String cbid);

    //环境类事件
    public List getLocalAllEnvironmentEvent(String cbid, String starttime, String endtime);

    public List getLocalLastEnvironmentEvent(String cbid);

    public List getLocalAllDetailEnvironmentEventtemp(String cbid, String starttime, String endtime);

    public List getLocalLastDetailEnvironmentEventtemp(String cbid);

    public List getLocalAllDetailEnvironmentEventwet(String cbid, String starttime, String endtime);

    public List getLocalLastDetailEnvironmentEventwet(String cbid);

    //设备类事件
    public List getLocalAllCtrlEvent(String cbid, String starttime, String endtime);

    public List getLocalLastCtrlEvent(String cbid);

    public List getAllCityEvent();

    public boolean getComputerroomCtrlStatus(String cbid);

    public Map getAllProvinceEvent();

    public List getAllEventTypeTree();

    public List getOneProvinceEvent(String pid, String stime, String etime);

    public List getAllCityBankEvent(String pbname);

    public List getComputerroomWetAndHumdity(String compname);

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green);

    public boolean setAllEventtypePriorty(String[] eventtypelist, String[] priortylist);

    public boolean setCaptrueSettingInfo(String onlineinterval, String tansentinterval, String uploadinterval);

}
