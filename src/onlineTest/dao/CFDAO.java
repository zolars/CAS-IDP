package onlineTest.dao;


import java.util.List;

public interface CFDAO {

    /*
    rms data order： u1、u2、u3、v1、v2、v3、i1、i2、i3
     */
    public List<Object> getCurrentCFData(String monitorpoint);

    /*public List<Object> getCurrentRMSu2Data(String monitorpoint);
    public List<Object> getCurrentRMSu3Data(String monitorpoint);
    public List<Object> getCurrentRMSv1Data(String monitorpoint);
    public List<Object> getCurrentRMSv2Data(String monitorpoint);
    public List<Object> getCurrentRMSv3Data(String monitorpoint);
    public List<Object> getCurrentRMSi1Data(String monitorpoint);
    public List<Object> getCurrentRMSi2Data(String monitorpoint);
    public List<Object> getCurrentRMSi3Data(String monitorpoint);*/
}
