package deviceManage.dao.impl;

import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceDAO;
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


}
