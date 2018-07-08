package userManage.dao.impl;

import Util.HBSessionDaoImpl;

import hibernatePOJO.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.UserDAO;

import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    @Override
    public boolean login(User user){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<User> list = hbsessionDao.search(
                "FROM User where uname = '" + user.getUname() + "' and password = '" + user.getPassword() + "'");

        if (list != null && list.size() > 0) {
            return true;
        }
        return false;
    }

    public String getUserId(User user){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        String uid = "";
        User usr = (User)hbsessionDao.getFirst(
                "FROM User where uname = '" + user.getUname() + "'");
        uid = usr.getUid();
        return uid;
    }

    /*
    json [省级，[市级，机房]] 只显示所属的市级银行
    先通过pbid、cbid是否为空判断属于哪类用户（admin账户(2) 省级账户(1) 市级账户(0)）
    市级银行账户,返回一条记录json:[100,[[1001,[1,2]],[1002,[3]],[1003,[4,5,6]]]]
    admin账户或省级银行账户 只选取当前点击进入的省的,返回多条记录json:[100,[1001,1002,1003]],[200,[2001]],[300,[3001,3002]]
     */

    public String getProBank(int pbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        ProvinceBank prov = (ProvinceBank) hbsessionDao.getFirst(
                "FROM ProvinceBank where pbid = '" + pbid + "'");

        return prov.getPbname();
    }

    public List<Object> getCityBank(int pbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> cblist = new ArrayList<>();

        ProvinceBank pro = (ProvinceBank)hbsessionDao.getFirst(
                "FROM ProvinceBank where pbid = '" + pbid + "'");

        String cbidset = pro.getCbidset();
        String[] cbidstr= cbidset.split("，");
        for(int i = 0; i < cbidstr.length; i++) {
            String cbid = cbidstr[i];

            CityBank cb = (CityBank)hbsessionDao.getFirst(
                    "FROM CityBank where cbid = '" + cbid + "'");

            cblist.add((Object)cb);
        }

        return cblist;
    }

    public List<Object> getComputerroom(String cbname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        CityBank cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbname = '" + cbname+ "'");

        String comroomset = cb.getCompRoom();
        String[] coroomstr= comroomset.split(",");
        for(int i = 0; i < coroomstr.length; i++) {
            Computerroom cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + coroomstr[i] + "'");
            crlist.add((Object)cp);
        }

        return crlist;
    }

    public List<Object[]>  getAllUserInfo(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object[]> crlist = new ArrayList<>();

        crlist = hbsessionDao.search( "select ta.uid as nuid, ta.uname as nuname,ta.chinesename as nchinesename,tc.rolesname as nrolename,ta.pbid as pbid,ta.cbid as cbid," +
                " ta.telephone as telephone, ta.govtelephone as govtelephone from User ta, UserRoles tb, Roles tc where ta.uid = tb.uid and tb.rid = tc.rid");
       /*  for (Object[] objects : crlist) {
           System.out.println("nuid："+objects[0]); //在对象数组中的位置与选择属性顺序一致
            System.out.println("nuname："+objects[1]); //在对象数组中的位置与选择属性顺序一致
            System.out.println("nchinesename："+objects[2]);
            System.out.println("nrolename:"+objects[3]);
            System.out.println("pbid:"+objects[4]);
            System.out.println("cbid:"+objects[5]);
            System.out.println("telephone:"+objects[6]);
            System.out.println("govtelephone:"+objects[7]);
        }*/
        return crlist;
    }

    public boolean deleteUserInfo(String uid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM User Where uid=?", uid);

        return rt;
    }

    public boolean addUserInfo(String account,String password,String name,String telephone,String govtelephone, String province, String city){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        User user = new User();
        user.setUid("3");
        user.setUname(account);
        user.setChinesename(name);
        user.setPassword(password);
        user.setTelephone(telephone);
        user.setGovtelephone(govtelephone);

        user.setCbid(city);
        user.setPbid(province);

        rt = hbsessionDao.insert(user);
        return rt;
    }

    public List<Object> getUserDynamicMenu(User user){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Object> crlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "select tc.pid from User as ta, UserRoles as tb, RolesPermission as tc where ta.uid = tb.uid and tb.rid = tc.rid and ta.uid = "+ user.getUid());

        String pidset = crlist.get(0).toString();
        String[] pidstr= pidset.split(",");
        crlist.clear();

        for(int i = 0; i < pidstr.length; i++) {
            crlist.add(pidstr[i]);
        }
        return crlist;
    }

}
