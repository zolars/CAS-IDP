package userManage.dao.impl;

import Util.DBConnect;
import Util.HBSessionDaoImpl;

import hibernatePOJO.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import userManage.dao.UserDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

        return (list != null && list.size() > 0);
    }

    public String getUserId(User user){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        String uid = "";
        User usr = (User)hbsessionDao.getFirst(
                "FROM User where uname = '" + user.getUname() + "'");
        uid = usr.getUid();
        return uid;
    }

    public UserRoles getUserRolesByUid(String uid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        UserRoles usr = (UserRoles)hbsessionDao.getFirst(
                "FROM UserRoles where uid = '" + uid + "'");

        return usr;
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

    public List getComputerroom(String cbname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Computerroom> crlist = new ArrayList<>();

        CityBank cb = (CityBank)hbsessionDao.getFirst(
                "FROM CityBank where cbname = '" + cbname+ "'");

        String comroomset = cb.getCompRoom();
        String[] coroomstr= comroomset.split("，");
        for(int i = 0; i < coroomstr.length; i++) {
            Computerroom cp = (Computerroom)hbsessionDao.getFirst(
                    "FROM Computerroom where rid = '" + coroomstr[i] + "'");
            crlist.add(cp);
        }

        return crlist;
    }

    public String getProBankName(String pbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        ProvinceBank prov = (ProvinceBank) hbsessionDao.getFirst(
                "FROM ProvinceBank where pbid = '" + pbid + "'");

        return prov.getPbname();
    }

    public String getCityBankName(String cbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        CityBank prov = (CityBank) hbsessionDao.getFirst(
                "FROM CityBank where cbid = '" + cbid + "'");

        return prov.getCbname();
    }


    public String getComputerroomName(String rid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Computerroom prov = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom where rid = '" + rid + "'");

        return prov.getRname();
    }

    public String getRoleName(String rid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        Roles prov = (Roles) hbsessionDao.getFirst(
                "FROM Roles where rid = '" + rid + "'");

        return prov.getRolesname();
    }

    public List<List>  getAllUserInfo(){

        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        boolean result = false;

        db = new DBConnect();
        String sql = "select ta.uid as nuid, ta.uname as nuname,ta.chinesename as nchinesename,ta.password as npassword,ta.pbid as pbid, ta.cbid as cbid,ta.rid as comprid,tb.rid as nrolename,ta.telephone as telephone, ta.govtelephone as govtelephone from user ta left outer join user_roles tb on ta.uid = tb.uid";

        try {
            List<List> crlist = new ArrayList<>();

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                List list = new ArrayList();
                list.add(rs.getString("nuid"));
                list.add(rs.getString("nuname"));
                list.add(rs.getString("nchinesename"));
                //list.add(rs.getString("npassword"));

                list.add(rs.getString("pbid"));
                list.add(rs.getString("cbid"));
                list.add(rs.getString("comprid"));

                list.add(rs.getString("nrolename"));

                list.add(rs.getString("telephone"));
                list.add(rs.getString("govtelephone"));

                crlist.add((List)list);
            }
            return crlist;

        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return  new ArrayList<>();
    }

    public User getOneUserInfo(String uid){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        User ur = (User)hbsessionDao.getFirst("FROM User where uid = '" + uid+ "'");

        return ur;
    }

    public boolean deleteUserInfo(String uid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM User Where uid=?", uid);

        return rt;
    }

    public boolean deleteUserRoles(String uid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        rt = hbsessionDao.delete( "Delete FROM UserRoles Where uid=?", uid);

        return rt;
    }

    public boolean addUserInfo(String uid,String account,String password,String name,String telephone,String govtelephone, String province, String city, String computerroom){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        User user = new User();
        user.setUid(uid);
        user.setUname(account);
        user.setChinesename(name);
        user.setPassword(password);
        user.setTelephone(telephone);
        user.setGovtelephone(govtelephone);

        user.setCbid(city);
        user.setPbid(province);
        user.setRid(computerroom);

        rt = hbsessionDao.insert(user);
        return rt;
    }

    public boolean addUserRolesInfo(String uid, String roles){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt;

        UserRoles userrole = new UserRoles();
        userrole.setUid(uid);
        userrole.setRid(roles);

        rt = hbsessionDao.insert(userrole);
        return rt;
    }

    /* 1.user表修改
       2.userroles表修改
       注意：需要验证是否为管理员或者用户自己
     */
    public boolean updateUserInfo(String uid, String password, String name, String chinesename, String telephone, String govtelephone, String roles, String province, String city, String computerroom, String temuser){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt = false;

        //获取当前用户，判断是否可以更改信息
        User ur = (User)hbsessionDao.getFirst("FROM User where uid = '" + temuser+ "'");
        if((uid.equals(temuser)) || (ur.getRid().equals("1"))){ //可以修改

            User newur = new User();
            newur.setUid(uid);
            newur.setUname(name);
            newur.setChinesename(chinesename);
            newur.setPassword(password);
            newur.setTelephone(telephone);
            newur.setGovtelephone(govtelephone);

            newur.setPbid(province);
            newur.setCbid(city);
            newur.setRid(computerroom);

            String hql = "update User newur set newur.uname='" + name +"', newur.chinesename='" + chinesename +"', newur.password='" + password +"'," +
                    "newur.telephone='" + telephone +"', newur.govtelephone='" + govtelephone + "', newur.pbid='" + province + "'"+
                    ", newur.cbid='" + city + "', newur.rid='" + computerroom + "'"+
                    " where newur.uid='" + uid + "'";

            rt = hbsessionDao.update(hql);

            UserRoles newurole = new UserRoles();
            newurole.setUid(uid);
            newurole.setRid(roles);

            String hql2 = "update UserRoles newurole set newurole.rid='" + roles +
                    "' where newurole.uid='" + uid + "'";

            rt = hbsessionDao.update(hql2);

        }

        return rt;
    }

    public List<Object> getUserDynamicMenu(User user){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<Object> crlist = new ArrayList<>();

        crlist = hbsessionDao.search(
                "select tc.pid from User as ta, UserRoles as tb, RolesPermission as tc where ta.uid = tb.uid and tb.rid = tc.rid and ta.uid = "+ user.getUid());

        if(crlist.size() > 0){
            String pidset = crlist.get(0).toString();
            String[] pidstr= pidset.split(",");
            crlist.clear();

            for(int i = 0; i < pidstr.length; i++) {
                crlist.add(pidstr[i]);
            }
        }

        return crlist;
    }

    public String getMaxUserId(){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        User ur = (User) hbsessionDao.getFirst(
                "FROM User order by uid desc");

        return ur.getUid();
    }
}
