package webServiceAPI.service;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import grabData.CtrlSave;
import grabData.DataOnline;
import hibernatePOJO.EventCtrl;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.impl.CtrlParameter;
//import org.eclipse.jdt.internal.compiler.util.HashtableOfLong;

import javax.jws.WebService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebService
public class getDataImpl implements getDataInterface {

    @Override
    public String getOnlineData(String aka, String cid) {
        String result = null;
        if (aka != "") {

            PowersxdyMonitor pp = DataOnline.getSxdyMap().get(aka);
            PowerxbMonitor xb = DataOnline.getXbMap().get(aka);
            PowerparmMonitor param = DataOnline.getParmMap().get(aka);
            CtrlParameter ctrlmap = CtrlSave.getCtrlMap().get(cid); //治理实时数据

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("nowpowersxdy", pp);
            jsonObject.put("nowpowerxb", xb);
            jsonObject.put("nowpowerparm", param);
            jsonObject.put("ctrlmap", ctrlmap); //治理实时数据
            result = JSON.toJSONString(jsonObject); // List转json
            System.out.println("已经执行到这里啦！！！！！！！！！！！！！！！！！！！！！！！！！");
            System.out.println(result);
        }
        return result;
    }

}
