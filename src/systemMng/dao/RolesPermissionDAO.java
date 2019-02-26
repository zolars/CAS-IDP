package systemMng.dao;


import java.util.List;

public interface RolesPermissionDAO {

    public Boolean allocPermission(String rid, String pid);

    public List<Integer> getbasicsetting();

}
