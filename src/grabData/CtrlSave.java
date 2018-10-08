package grabData;

import hibernatePOJO.*;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CtrlSave {
    private static List<DictionaryCtrl> dic = null;
    private static Map<String, EventCtrl> eventCtrlMap = new HashMap<>();

    public static void ctrlSave(String did, int eventType) {
        EventCtrl var = eventCtrlMap.get(did);
        //当前时间、检测设备id、maxID
        Timestamp currenttime = new Timestamp(System.currentTimeMillis());
        var.setTime(currenttime);
        var.setDid(did);
        var.setSubtype(eventType);
        //var.setDiscription(dic.get(eventType).getDescription());
        var.setValue(dic.get(eventType).getForFalse());
    }

    public static List<DictionaryCtrl> getDic() {
        return dic;
    }

    public static void setDic(List<DictionaryCtrl> dic) {
        CtrlSave.dic = dic;
    }

    public static Map<String, EventCtrl> getEventCtrlMap() {
        return eventCtrlMap;
    }
}


