package systemMng.dao;


import hibernatePOJO.RolesPermission;

import java.util.List;

public interface PermissionDAO {

    public List getPermissionTree();

    public RolesPermission getRolesPermissionTree(String rid);

    public Boolean setDeviceAlarmUserInfo(String level, String precontent, Integer alert,Integer sms,Integer plantform);

    public List getDeviceAlarmUserInfoByLevel(String level);

    public Boolean setsysLevel(String input0,String input1, String input2,String  input3,String  input4, String input5);
}
