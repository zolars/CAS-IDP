package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.CityBank;
import hibernatePOJO.Computerroom;
import hibernatePOJO.Roles;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.ComputerroomDAO;

import java.util.ArrayList;
import java.util.List;

public class ComputerroomDAOImpl implements ComputerroomDAO {

    public List getAllComputerroom() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Roles> list = hbsessionDao.search(
                "FROM Computerroom");

        return list;
    }

    public List getComputerroomByCity(String city) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Computerroom> list = new ArrayList<>();

        CityBank cb = (CityBank) hbsessionDao.getFirst(
                "FROM CityBank where cbid='" + city + "'");

        String comidstr = cb.getCompRoom();
        String comidset[] = comidstr.split("，");

        for (int i = 0; i < comidset.length; i++) {
            Computerroom com = (Computerroom) hbsessionDao.getFirst(
                    "FROM Computerroom where rid='" + comidset[i] + "'");
            list.add(com);
        }

        return list;
    }


}
