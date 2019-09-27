package deviceManage.dao.impl;


import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceThresholdDAO;
import hibernatePOJO.DevicesThreshold;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DeviceThresholdDAOImpl implements DeviceThresholdDAO {


    public List searchFuzzyDeviceThreshold(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DevicesThreshold> list = hbsessionDao.search(
                "FROM DevicesThreshold where name like '" + name + "%'");

        return list;
    }

    public List getOneDeviceThreshold(String did){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DevicesThreshold> crlist = hbsessionDao.search(
                "FROM DevicesThreshold where did ='" + did + "'");

        return crlist;
    }

    // 2019 /9 /19 cjy : unused function
//    public List getOneofOneDeviceThreshold(Integer dtid){
//        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
//        List crlist = new ArrayList<>();
//        String sql0 = "select ta.dtid as dtid, tb.description as name, ta.classify as type, ta.unit as unit, ta.cellval as cellval, ta.floorval as floorval, ta.isMark as ismark, ta.level as level " +
//                "from devices_threshold as ta, events_type as tb where ta.type = tb.type and ta.dtid = '"+ dtid +"'";
//
//        String sql = "FROM DevicesThreshold as ta, EventsType as tb where ta.type = tb.type and ta.dtid = '"+ dtid +"'";
//
//        List pplist = hbsessionDao.search(sql);
//
//        if(pplist != null) {
//            for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
//                Object obj = pplist.get(ppidx);
//
//            }
//        }
//
////        try {
////            ps = db.getPs(sql);
////            rs = ps.executeQuery();
////            while (rs.next()) {
////                List list = new ArrayList();
////                list.add(rs.getString("dtid"));
////                list.add(rs.getString("name"));
////                list.add(rs.getString("type"));
////                list.add(rs.getString("unit"));
////                list.add(rs.getString("cellval"));
////                list.add(rs.getString("floorval"));
////                list.add(rs.getString("ismark"));
////                list.add(rs.getString("level"));
////
////                crlist.add(list);
////            }
////        }catch (SQLException e) {
////            // TODO Auto-generated catch block
////            e.printStackTrace();
////        }
////        try {
////            db.free();
////        } catch (SQLException e) {
////            // TODO Auto-generated catch block
////            e.printStackTrace();
////        }
//        return crlist;
//    }

}
