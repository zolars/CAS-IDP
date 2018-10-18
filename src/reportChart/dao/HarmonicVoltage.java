package reportChart.dao;
import java.util.List;
public interface HarmonicVoltage {
    public List getHVresultBydt(String did, String time);
    public List getHCresultBydt(String did, String time);
    public List getHVthreshold();
    public List getHCthreshold();
    public List getVCfundBydt(String did, String time);
    public List getHVrateBydt(String did, String time);
    public List getHCrateBydt(String did, String time);
    public double getMax(List<Double> value);
    public double getMin(List<Double> value);
    public double getAve(List<Double> value);
    public double get95p(List<Double> value);
    public List getHzBydt(String did, String time);
    public List getsxdyBydt(String did, String time);
    public List getsxdythreshold(String did);
    public List getdsdysbBydt(String did, String time);
    public List getdsdysbthreshold(String did);
    public List getcsdysbBydt(String did, String time);
    public List getcsdysbthreshold(String did);
    public List getActivePowerBydt(String did, String time);
    public List getReactivePowerBydt(String did, String time);
    public List getPowerFactorBydt(String did, String time);
    public List getthdUBydt(String did, String time);
    public List getthdIBydt(String did, String time);
    public List getthduthreshold(String did);
    public List getthdithreshold(String did);
}