package userManage.dao;


import hibernatePOJO.User;
import hibernatePOJO.UserRoles;

import java.util.List;

public interface UserDAO {

    /////增
    //新建用户
    public boolean addUserInfo(String uid,String account,String password,String name,String telephone,String govtelephone, String province, String city, String computerroom);
    //新建一条用户和角色的对应记录
    public boolean addUserRolesInfo(String uid, String roles);

    /////删
    public boolean deleteUserInfo(String uid);

    public boolean deleteUserRoles(String uid);
    /////改
    public boolean updateUserInfo(String uid, String password, String name, String chinesename, String telephone, String govtelephone, String roles, String province, String city, String computerroom, String temuser);

    public boolean updateUserInfoWithoutPasswd(String uid, String name, String chinesename, String telephone, String govtelephone, String roles, String province, String city, String computerroom, String temuser);

    /////查
    //登录验证
    public boolean login(User user);
    //查询所有用户的账号信息，包括暂时未分配角色的用户的账号信息
    public List<List> getAllUserInfo();
    //根据用户名获取用户ID
    public String getUserId(User user);

    public String getProBank(int pbid);

    public List<Object> getCityBank(String pbname, String uname);

    public List getComputerroom(String cbname, String uname);

    public String getProBankName(String pbid);

    public String getCityBankName(String pbid);

    public String getComputerroomName(String cbname);

    public String getRoleName(String rid);

    public List<Object> getUserDynamicMenu(User user);

    public User getOneUserInfo(String uid);

    public String getMaxUserId();

    public UserRoles getUserRolesByUid(String uid);

    public Boolean checkUnameIsOccupiedForAdd(String uname);

    public Boolean checkUnameIsOccupiedForUpdate(String uid, String uname);

}
