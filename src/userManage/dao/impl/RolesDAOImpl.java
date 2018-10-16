package userManage.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.RolesDAO;
import userManage.dao.UserDAO;

import java.util.ArrayList;
import java.util.List;

public class RolesDAOImpl implements RolesDAO {


    public List getAllRoles() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Roles> list = hbsessionDao.search(
                "FROM Roles");
        return list;
    }

    public String getMaxRolesId() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Roles role = (Roles) hbsessionDao.getFirst(
                "FROM Roles order by rid desc");
        return role.getRid();
    }

    public boolean deleteRolesInfo(String rid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM Roles Where rid=?", rid);

        return rt;
    }

    public boolean addRolesInfo(String rid, String name, String extra) {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        Roles role = new Roles();
        role.setRid(rid);
        role.setRolesname(name);
        role.setExtra(extra);

        rt = hbsessionDao.insert(role);
        return rt;
    }

    public Roles getOneRolesInfo(String rid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Roles role = (Roles) hbsessionDao.getFirst(
                "FROM Roles order where rid = '" + rid + "'");
        return role;
    }

    public boolean updateRoleInfo(String rid, String name, String extra) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;
        String hql = "update Roles role set role.rolesname='" + name +
                "', role.extra='" + extra + "' where role.rid='" + rid + "'";

        rt = hbsessionDao.update(hql);
        return rt;
    }


}
