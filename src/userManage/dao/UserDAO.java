package userManage.dao;


import hibernatePOJO.User;
import hibernatePOJO.UserRoles;

import java.util.List;

public interface UserDAO {

    public boolean login(User user);

    public String getUserId(User user);

    public String getProBank(int pbid);

    public List<Object> getCityBank(int pbid);

    public List<Object> getComputerroom(String cbname);

    public List<Object> getUserDynamicMenu(User user);

    public List<Object[]> getAllUserInfo();

    public User getOneUserInfo(String uid);

    public boolean deleteUserInfo(String uid);

    public boolean addUserInfo(String account,String password,String name,String telephone,String govtelephone, String province, String city);

    public boolean updateUserInfo(String uid, String password, String name, String chinesename, String telephone, String govtelephone, String roles, String province, String city, String computerroom);

    public UserRoles getUserRolesByUid(String uid);

}
