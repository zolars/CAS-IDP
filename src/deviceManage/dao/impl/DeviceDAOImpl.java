package deviceManage.dao.impl;

import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceDAO;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.Devices;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class DeviceDAOImpl implements DeviceDAO {

    private Session session;
    private Transaction transaction;
    private Query query;

    public List getDeviceDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Devices> list = hbsessionDao.search(
                "FROM Devices where name = '" + name+ "'");

        return list;
    }

    public List getDeviceAlarmUserDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices dv = (Devices)hbsessionDao.getFirst(
                "FROM Devices where name = '" + name+ "'");

        List<DeviceAlarmUser> list = hbsessionDao.search(
                "FROM DeviceAlarmUser where did = '" + dv.getDid() + "'");

        return list;
    }

    public List getDeviceAlarmUserNameDataByName(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Devices dv = (Devices)hbsessionDao.getFirst(
                "FROM Devices where name = '" + name+ "'");

        List<DeviceAlarmUser> list = hbsessionDao.search(
                "FROM DeviceAlarmUser where did = '" + dv.getDid() + "'");

        return list;
    }

    public Boolean deleteDeviceAlarmUser(String id){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM DeviceAlarmUser Where id=?", id);

        return rt;
    }

}
