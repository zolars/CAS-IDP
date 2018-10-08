package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.OrgnizationStructure;
import hibernatePOJO.Permission;
import hibernatePOJO.RolesPermission;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import systemMng.dao.PermissionDAO;

import java.util.ArrayList;
import java.util.List;

public class PermissionDAOImpl implements PermissionDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    public List getPermissionTree(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Permission> list = hbsessionDao.search(
                "FROM Permission");

        return list;
    }

    public RolesPermission getRolesPermissionTree(String rid){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        RolesPermission rp = (RolesPermission)hbsessionDao.getFirst(
                "FROM RolesPermission where rid='"+ rid +"'");

        return rp;
    }

    public Boolean setDeviceAlarmUserInfo(String level, String precontent){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        String sql = "update DeviceAlarmUser dt set dt.precontent='" + precontent + "' where dt.level='" + level + "'";

        Boolean rt = hbsessionDao.update(sql);

        return rt;
    }

    public List getDeviceAlarmUserInfoByLevel(String level){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List rtlist = new ArrayList();

        DeviceAlarmUser alarmUser = (DeviceAlarmUser)hbsessionDao.getFirst(
                "FROM DeviceAlarmUser where level='"+ level +"'");

        if(alarmUser.getId() != null){
            rtlist.add(alarmUser.getIsAlert());
            rtlist.add(alarmUser.getIsSms());
            rtlist.add(alarmUser.getIsPlantform());
            rtlist.add(alarmUser.getPrecontent());
        }

        return rtlist;
    }


}
