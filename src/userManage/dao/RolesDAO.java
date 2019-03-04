package userManage.dao;


import hibernatePOJO.Roles;

import java.util.List;

public interface RolesDAO {
    /////增
    //新增一条角色
    public boolean addRolesInfo(String rid, String name, String extra);

    /////删
    public boolean deleteRolesInfo(String rid);

    public boolean deleteRolesPermission(String rid);

    /////改
    public boolean updateRoleInfo(String rid, String name, String extra);

    /////查
    public List getAllRoles();

    public String getMaxRolesId();

    public Roles getOneRolesInfo(String rid);

}
