package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.ProvinceBank;
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

        if (pb != null) {
            return pb.getPbid();
        } else return "";
    }


}
