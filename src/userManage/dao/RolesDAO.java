package userManage.dao;


import hibernatePOJO.Roles;

import java.util.List;

public interface RolesDAO {

    public List getAllRoles();

    public String getMaxRolesId();

    public boolean deleteRolesInfo(String rid);

    public boolean addRolesInfo(String rid, String name, String extra);

    public Roles getOneRolesInfo(String rid);

    public boolean updateRoleInfo(String rid, String name, String extra);


}
