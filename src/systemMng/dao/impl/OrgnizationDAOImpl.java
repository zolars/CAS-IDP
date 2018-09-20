package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.OrgnizationStructure;
import hibernatePOJO.Permission;
import hibernatePOJO.RolesPermission;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import systemMng.dao.OrgnizationDAO;
import systemMng.dao.PermissionDAO;

import java.util.List;

public class OrgnizationDAOImpl implements OrgnizationDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;


    public List getOrgnizationTree(){

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<OrgnizationStructure> list = hbsessionDao.search(
                "FROM OrgnizationStructure");

        return list;
    }

    /*删除orgnizationstruct表+ province表
    * */
    public Boolean delProvinceOrgnization(String pbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        rt1 = hbsessionDao.delete( "Delete FROM OrgnizationStructure Where id=?", pbid);
        rt2 = hbsessionDao.delete( "Delete FROM ProvinceBank Where pbid=?", pbid);

        return rt1 && rt2;
    }

    public Boolean delCityOrgnization(String cbid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        rt1 = hbsessionDao.delete( "Delete FROM OrgnizationStructure Where id=?", cbid);
        rt2 = hbsessionDao.delete( "Delete FROM CityBank Where cbid=?", cbid);

        return rt1 && rt2;
    }

    public Boolean delComputerroomOrgnization(String rid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        rt1 = hbsessionDao.delete( "Delete FROM OrgnizationStructure Where id=?", rid);
        rt2 = hbsessionDao.delete( "Delete FROM Computerroom Where rid=?", rid);

        return rt1 && rt2;
    }


}
