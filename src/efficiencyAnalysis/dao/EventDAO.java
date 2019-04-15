package efficiencyAnalysis.dao;


import Util.EventObject;
import Util.PageHelper;

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

    //分页查询 设备类事件数量
    public int getLocalAllPowerTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllPowerlytxTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllPowerxbTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllPowersxbphTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllPowershunbianTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllPowershanbianTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllEnvironmentTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllEnvironmenttempTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllEnvironmentwetTotal(String cbnamelist[], String starttime, String endtime);

    public int getLocalAllCtrlTotal(String cbnamelist[], String starttime, String endtime);


    public PageHelper<EventObject> getPowerEventObjectListPage(String cbnamelist[], String starttime, String endtime,
                                                               Integer start, Integer end);

    public PageHelper<EventObject> getPowerEventlytxObjectListPage(String cbnamelist[], String starttime,
                                                                   String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getPowerEventxbObjectListPage(String cbnamelist[], String starttime,
                                                                 String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getPowerEventsxbphObjectListPage(String cbnamelist[], String starttime,
                                                                    String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getPowerEventshunbianObjectListPage(String cbnamelist[], String starttime,
                                                                       String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getPowerEventshanbianObjectListPage(String cbnamelist[], String starttime,
                                                                       String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getEnvironmentEventObjectListPage(String cbnamelist[], String starttime,
                                                                     String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getEnvironmentEventtempObjectListPage(String cbnamelist[], String starttime,
                                                                         String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getEnvironmentEventwetObjectListPage(String cbnamelist[], String starttime,
                                                                        String endtime, Integer start, Integer end);

    public PageHelper<EventObject> getCtrlEventObjectListPage(String cbnamelist[], String starttime, String endtime,
                                                              Integer start, Integer end);


    public List getAllCityEvent();

    public List getCtrlDevices(String cbname);

    public List getIDPDevices(String cbname);

    public String getDeviceCtrlStatus(String did, String starttime, String endtime);

    public String getDeviceIDPStatus(String did, String starttime, String endtime);

    public String getDeviceNameCtrl(String did);

    public String getDeviceNameIDP(String did);

    public Map getAllProvinceEvent();

    public List getAllEventTypeTree();


    public List getOneProvinceEvent(String pid, String stime, String etime);

    public List getAllCityBankEvent(String pbname);

    public List getComputerroomWetAndHumdity(String compname);

    public List getComputerroomAlarm(String compname);

    public boolean setAssessInfo(Integer red_yellow, Integer yellow_green);

    public boolean setAllEventtypePriorty(String[] eventtypelist, String[] priortylist);

    public boolean setCaptrueSettingInfo(String onlineinterval, String qstinterval, String tansentinterval,
                                         String uploadinterval, String assessinterval, String alarminterval,
                                         String tempinterval, String ctrlinterval, String thresholdsaveinterval,
                                         String qstdatainterval);


}
