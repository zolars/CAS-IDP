package grabData;

import com.alibaba.fastjson.JSON;
import hibernatePOJO.*;
import io.netty.channel.Channel;

import java.sql.Timestamp;
import java.util.List;

public class CtrlSave {
    private static List<Dictionary_Ctrl> dic = null;
    private static EventCtrl var = new EventCtrl();

    public static void ctrlSave(String did, String event) {

        //当前时间、检测设备id、maxID
        Timestamp currenttime = new Timestamp(System.currentTimeMillis());
        var.setTime(currenttime);

        var.setDid(did);

        var.setEvent(event);

    }

    public static List<Dictionary_Ctrl> getDic() {
        return dic;
    }

    public static void setDic(List<Dictionary_Ctrl> dic) {
        CtrlSave.dic = dic;
    }

    public static EventCtrl getCtrlMonitor() { return var; }
}


