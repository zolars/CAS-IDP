package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.OrgnizationStructure;
import hibernatePOJO.Permission;
import hibernatePOJO.RolesPermission;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import systemMng.dao.PermissionDAO;

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

    public Boolean setDeviceAlarmUserInfo(String level, Integer isSMS, Integer isPlantform, Integer isAlert, String precontent){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        String sql = "update DeviceAlarmUser dt set dt.isAlert='"+ isAlert + "', dt.isSms='" + isSMS + "', dt.isPlantform='" + isPlantform +  "', dt.precontent='" + precontent + "' where dt.level='" + level + "'";

        Boolean rt = hbsessionDao.update(sql);

        return rt;
    }


}
