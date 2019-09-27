package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.Permission;
import hibernatePOJO.RolesPermission;
import systemMng.dao.PermissionDAO;

import java.util.ArrayList;
import java.util.List;

public class PermissionDAOImpl implements PermissionDAO {


    public List getPermissionTree() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Permission> list = hbsessionDao.search(
                "FROM Permission");

        return list;
    }

    public RolesPermission getRolesPermissionTree(String rid) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        RolesPermission rp = (RolesPermission) hbsessionDao.getFirst(
                "FROM RolesPermission where rid='" + rid + "'");

        return rp;
    }

    public Boolean setDeviceAlarmUserInfo(String level, String precontent, Integer alert,Integer sms,Integer plantform) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        String sql = "update DeviceAlarmUser set precontent='" + precontent + "', isAlert='" + alert +  "', isPlantform='" + plantform +  "', isSMS='" + sms + "' where level='" + level + "'";

        Boolean rt = hbsessionDao.update(sql);

        return rt;
    }

    public List getDeviceAlarmUserInfoByLevel(String level) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList();

        DeviceAlarmUser alarmUser = (DeviceAlarmUser) hbsessionDao.getFirst(
                "FROM DeviceAlarmUser where level='" + level + "'");

        if (alarmUser.getId() != null) {
            rtlist.add(alarmUser.getIsAlert());
            rtlist.add(alarmUser.getIsSms());
            rtlist.add(alarmUser.getIsPlantform());
            rtlist.add(alarmUser.getPrecontent());
        }

        return rtlist;
    }

    public Boolean setsysLevel(String input0,String input1, String input2,String  input3,String  input4, String input5){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        String sql0 = "update Smsplantlevel set syslevel='" + input0 + "' where id = 0";
        String sql1 = "update Smsplantlevel set syslevel='" + input1 + "' where id = 1";
        String sql2 = "update Smsplantlevel set syslevel='" + input2 + "' where id = 2";
        String sql3 = "update Smsplantlevel set syslevel='" + input3 + "' where id = 3";
        String sql4 = "update Smsplantlevel set syslevel='" + input4 + "' where id = 4";
        String sql5 = "update Smsplantlevel set syslevel='" + input5 + "' where id = 5";

        Boolean rt0 = hbsessionDao.update(sql0);
        Boolean rt1 = hbsessionDao.update(sql1);
        Boolean rt2 = hbsessionDao.update(sql2);
        Boolean rt3 = hbsessionDao.update(sql3);
        Boolean rt4 = hbsessionDao.update(sql4);
        Boolean rt5 = hbsessionDao.update(sql5);

        return rt0 && rt1 && rt2 && rt3 && rt4 && rt5;
    }

    //2019.06.20 cjy 设置报警方式
    //method: 0 ,实时报警 ； 1 ; 分析报警
    public Boolean setAlarmMethod(String alarmanalysisinterval, String alarmanalysispercentthreshold, String method){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        String sql = null;

        if(method == "0") {
            sql = "update BasicSetting set alarmmethod='" + method + "' where id = 0";
        } else if(method == "1") {
            sql = "update BasicSetting set alarmanalysisinterval='" + alarmanalysisinterval + "', alarmanalysispercentthreshold='" + alarmanalysispercentthreshold + "', alarmmethod='" + method + "' where id = 0";
        }
        Boolean rt = hbsessionDao.update(sql);

        return rt;
    }

}
