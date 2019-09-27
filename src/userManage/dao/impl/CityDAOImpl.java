package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.CityBank;
import hibernatePOJO.ProvinceBank;
import userManage.dao.CityDAO;

import java.util.ArrayList;
import java.util.List;

public class CityDAOImpl implements CityDAO {

    public List getAllCity() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<CityBank> list = hbsessionDao.search(
                "FROM CityBank");

        return list;
    }

    public List getCityByProvince(String province) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<CityBank> list = new ArrayList<>();

        ProvinceBank pb = (ProvinceBank) hbsessionDao.getFirst(
                "FROM ProvinceBank where pbid='" + province + "'");

        String cbidstr = pb.getCbidset();

        if (cbidstr != null && !cbidstr.equals("")) {
            String cbidset[] = cbidstr.split("，");

            for (int i = 0; i < cbidset.length; i++) {
                CityBank cb = (CityBank) hbsessionDao.getFirst(
                        "FROM CityBank where cbid='" + cbidset[i] + "'");
                list.add(cb);
            }
        }

        return list;
    }


}
