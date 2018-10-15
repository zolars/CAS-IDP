package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.ProvinceBank;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.ProvinceDAO;

import java.util.List;

public class ProvinceDAOImpl implements ProvinceDAO {

    public List getAllProvince() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<ProvinceBank> list = hbsessionDao.search(
                "FROM ProvinceBank");

        return list;
    }

    public String getProvinceIdByName(String name) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        ProvinceBank pb = (ProvinceBank) hbsessionDao.getFirst(
                "FROM ProvinceBank where pbname='" + name + "'");

        return pb.getPbid();
    }


}
