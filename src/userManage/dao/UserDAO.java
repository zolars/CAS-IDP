package userManage.dao;


import Util.HBSessionDaoImpl;
import hibernatePOJO.ProvinceBank;
import hibernatePOJO.User;

import java.util.List;
import java.util.Map;

public interface UserDAO {

    public boolean login(User user);
    public String getUserId(User user);
   // public Map<String,Map<String,List>> getUserTree(User user, int prov);
    //public List<List<List>> getUserTree(User user, int prov);
    public String getProBank(int pbid);
   // public List<String> getCityBank(User user, int pbid);
    public List<Object> getCityBank(int pbid);
    public List<Object> getComputerroom(String cbname);

    public List getAllUserInfo();
}
