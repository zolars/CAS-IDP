package reportChart.dao;
import hibernatePOJO.DevicesThreshold;
import java.util.List;
public interface HarmonicVoltage {
    public List getHVresultBydt(String did, String time);
    public List getHCresultBydt(String did,String time);
    public List getHVthreshold();
    public List getHCthreshold();
    public List getVCfundBydt(String did,String time);
    public List getHVrateBydt(String did,String time);
    public List getHCrateBydt(String did,String time);
    public double getMax(List<Double> value);
    public double getMin(List<Double> value);
    public double getAve(List<Double> value);
    public double get95p(List<Double> value);
}