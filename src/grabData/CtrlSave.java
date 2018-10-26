package grabData;

import hibernatePOJO.EventCtrl;

import java.sql.Timestamp;
import java.util.*;

public class CtrlSave {
    private static Map<String, List<EventCtrl>> eventCtrlMap = new HashMap<>();

    private static List<Integer> dataResolve(String data) {
        List<Integer> cid = new ArrayList<>();
        int count = 0;
        for (int i = 0; i < data.length(); i += 2) {
            String binary = Integer.toBinaryString(Integer.valueOf(data.substring(i, i + 2), 16));

            for (int j = 0; j < binary.length(); j++) {
                if (binary.length() - j >= 0) {
                    if (binary.charAt(binary.length() - j - 1) == '1') {
                        cid.add(count + j + 1);
                    }
                }
            }
            count += 8;
        }
        return cid;
    }

    public static void ctrlSave(String did, String data) {
        eventCtrlMap = new HashMap<>();
        eventCtrlMap.put(did, new ArrayList<>());

        List<Integer> cidList = dataResolve(data);

        //当前时间、检测设备id、maxID
        Timestamp currenttime = new Timestamp(System.currentTimeMillis());

        Iterator<Integer> it = cidList.iterator();
        while (it.hasNext()) {
            int cid = it.next();

            EventCtrl event = new EventCtrl();
            event.setTime(currenttime);
            event.setCid(cid);
            event.setDid(did);

            System.out.print(event.getCid() + ":");

            // int i = eventCtrlMap.get(did).size() - 1;
            boolean k = true;

            Iterator<EventCtrl> it2 = eventCtrlMap.get(did).iterator();
            while (it2.hasNext()) {
                EventCtrl eventprevious = it2.next();
                if (event.getCid() == eventprevious.getCid()) {
                    k = false;
                }
            }

            if (k)
                eventCtrlMap.get(did).add(event);
        }
        System.out.println();
    }

    public static Map<String, List<EventCtrl>> getEventCtrlMap() {
        return eventCtrlMap;
    }
}


