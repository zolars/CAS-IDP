package userManage.dao;


import hibernatePOJO.User;

import java.util.List;

public interface UserDAO {

    public boolean login(User user);

    public String getUserId(User user);

    public String getProBank(int pbid);

    public List<Object> getCityBank(int pbid);

    public List<Object> getComputerroom(String cbname);

    public List<Object> getUserDynamicMenu(User user);

    public List<Object[]> getAllUserInfo();

    public boolean deleteUserInfo(String uid);

    public boolean addUserInfo(String account,String password,String name,String telephone,String govtelephone, String province, String city);

}
