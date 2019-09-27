package deviceJobManager;

import hibernatePOJO.Devices;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.util.Map;

/*2019-03-04 wubo*/
public class CheckConnection implements Job {
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        //第一次没有连接上且网络连接正常，则再次连接
        //检查网络连接是为了防止添加多个设备
        for(Map.Entry<Devices,Boolean> e:DeviceManager.getFirstConnection().entrySet()){
            Devices d=e.getKey();
            int port=Integer.parseInt(d.getPort());
            String did=d.getDid().toString();
            if(e.getValue()==false && DeviceManager.checkNetwork(d.getiPaddress(),port)){
                if(d.getType().equals("IDP")){
                    DeviceManager.addDevice(d.getiPaddress(),port,did,1);
                }
                else if(d.getType().equals("temp")){
                    DeviceManager.addDevice(d.getiPaddress(),port,did,5);
                }
                else if(d.getType().equals("ctrl")){
                    DeviceManager.addDevice(d.getiPaddress(),port,did,6);
                }
                else{
                    ;
                }
            }
        }
    }
}
