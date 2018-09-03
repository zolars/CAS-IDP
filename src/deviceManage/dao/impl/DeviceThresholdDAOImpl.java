package deviceManage.dao.impl;

import Util.HBSessionDaoImpl;
import deviceManage.dao.DeviceThresholdDAO;
import hibernatePOJO.DevicesThreshold;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class DeviceThresholdDAOImpl implements DeviceThresholdDAO {

    private Session session;
    private Transaction transaction;
    private Query query;


    public List searchFuzzyDeviceThreshold(String name){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DevicesThreshold> list = hbsessionDao.search(
                "FROM DevicesThreshold where name like '" + name + "%'");

        return list;
    }

    public List getOneDeviceThreshold(String did){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DevicesThreshold> list = hbsessionDao.search(
                "FROM DevicesThreshold where did='" + did + "'");

        return list;

    }

    public List getOneofOneDeviceThreshold(Integer dtid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<DevicesThreshold> list = hbsessionDao.search(
                "FROM DevicesThreshold where dtid=" + dtid + "");

        return list;
    }

}
