package reportChart.dao;

import java.util.List;

public interface HarmonicVoltage {
    public List getHVresultBydt(String did, String time);

    public List getHVresultBydt2(String did, String stime, String etime);

    public List getHCresultBydt(String did, String time);

    public List getHCresultBydt2(String did, String stime, String etime);

    public List getHVthreshold();

    public List getHCthreshold();

    public List getVCfundBydt(String did, String time);

    public List getVCfundBydt2(String did, String stime, String etime);

    public List getHVrateBydt(String did, String time);

    public List getHVrateBydt2(String did, String stime, String etime);

    public List getHCrateBydt(String did, String time);

    public List getHCrateBydt2(String did, String stime, String etime);

    public double getMax(List<Double> value);

    public double getMin(List<Double> value);

    public double getAve(List<Double> value);

    public double get95p(List<Double> value);

    public List getHzBydt(String did, String time);

    public List getHzpcBydt(String did, String time);

    public List getHzpcthreshold();

    public List getsxdyBydt(String did, String time);

    public List getsxdythreshold();

    public List getDypcBydt(String did, String time);

    public List getDypcthreshold();

    public List getdsdysbBydt(String did, String time);

    public List getdsdysbthreshold();

    public List getcsdysbBydt(String did, String time);

    public List getcsdysbthreshold();

    public List getActivePowerBydt(String did, String time);

    public List getReactivePowerBydt(String did, String time);

    public List getPowerFactorBydt(String did, String time);

    public List getthdUBydt(String did, String time);

    public List getthdIBydt(String did, String time);

    public List getHzBydt2(String did, String stime, String etime);

    public List getHzpcBydt2(String did, String stime, String etime);

    public List getsxdyBydt2(String did, String stime, String etime);

    public List getDypcBydt2(String did, String stime, String etime);

    public List getdsdysbBydt2(String did, String stime, String etime);

    public List getcsdysbBydt2(String did, String stime, String etime);

    public List getActivePowerBydt2(String did, String stime, String etime);

    public List getReactivePowerBydt2(String did, String stime, String etime);

    public List getPowerFactorBydt2(String did, String stime, String etime);

    public List getthdUBydt2(String did, String stime, String etime);

    public List getthdIBydt2(String did, String stime, String etime);

    public List getthduthreshold();

    public List getthdithreshold();

    public List getpowerthreshold();
}