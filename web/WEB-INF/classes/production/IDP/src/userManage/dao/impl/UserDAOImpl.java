package userManage.dao.impl;

import Util.HBSessionDaoImpl;

import hibernatePOJO.CityBank;
import hibernatePOJO.Computerroom;
import hibernatePOJO.ProvinceBank;
import hibernatePOJO.User;
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

    @Override
    public boolean login(User user){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        //System.out.println("sssssssssssssssssss2");
        ///System.out.println(user.getUsername()+"bbbb"+user.getPassword());
        List<User> list = hbsessionDao.search(
                "FROM User where uname = '" + user.getUname() + "' and password = '" + user.getPassword() + "'");
        //System.out.println("uuuuuuuuuuu2.5");
        if (list != null && list.size() > 0) {
            //System.out.println("uuuuuuuuuuu3");
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

   /* public List<String> getCityBank(User user, int pbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<String> cblist = new ArrayList<>();

        User usr = (User)hbsessionDao.getFirst(
                "FROM User where uid = '" + user.getUid() + "'");

        String cbidset = usr.getCbid();
        String[] cbidstr= cbidset.split(",");
        for(int i = 0; i < cbidstr.length; i++) {
            CityBank cb = (CityBank)hbsessionDao.getFirst(
                    "FROM CityBank where cbid = '" + cbidstr[i] + "'");
            cblist.add(cb.getCbname());
        }

        return cblist;
    }*/

    public List<Object> getCityBank(int pbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> cblist = new ArrayList<>();

        ProvinceBank pro = (ProvinceBank)hbsessionDao.getFirst(
                "FROM ProvinceBank where pbid = '" + pbid + "'");

        String cbidset = pro.getCbidset();
        String[] cbidstr= cbidset.split("，");
        for(int i = 0; i < cbidstr.length; i++) {
            String cbid = cbidstr[i];
            //System.out.println("cccccccccccccccccccccc"+cbid);
            CityBank cb = (CityBank)hbsessionDao.getFirst(
                    "FROM CityBank where cbid = '" + cbid + "'");
            //cblist.add(cb.getCbname());
            cblist.add((Object)cb);
        }

        return cblist;
    }

    public List<Object> getComputerroom(String cbname){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Object> crlist = new ArrayList<>();

        System.out.println("tttttttttttt  "+cbname);

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

    public List getAllUserInfo(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List crlist = new ArrayList<>();

        crlist = hbsessionDao.search( "select ta.uname as nuname,ta.chinesename as nchinesename,tc.rolesname as nrolename,ta.pbid as pbid,ta.cbid as cbid from User ta, UserRoles tb, Roles tc where ta.uid = tb.uid and tb.rid = tc.rid");

        return crlist;
    }

}
