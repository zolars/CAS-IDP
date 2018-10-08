package grabData;


import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
// import io.netty.channel.Channel;

import java.sql.Timestamp;
import java.util.HashMap;
// import java.util.List;
import java.util.Map;

public class TemperatureSave {

    //存各个监测点的实时数据String
    private static Map<String, TemperatureMonitor> tempDataMap = new HashMap<>();

    // 使用modbus协议读取数据并直接存储
    public static void tempSave(String did, Map<String, Float> dataset) {
        TemperatureMonitor tempData = tempDataMap.get(did);
        //当前时间、检测设备id、maxID
        Timestamp currenttime = new Timestamp(System.currentTimeMillis());
        tempData.setTime(currenttime);

        tempData.setDid(did);

        tempData.setTemperature(dataset.get("temperature"));
        tempData.setHumidity(dataset.get("humidity"));
    }

    public static Map<String, TemperatureMonitor> getTempDataMap() {
        return tempDataMap;
    }
}


