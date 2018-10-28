package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.CityBank;
import hibernatePOJO.Computerroom;
import hibernatePOJO.OrgnizationStructure;
import hibernatePOJO.ProvinceBank;
import systemMng.dao.OrgnizationDAO;

import java.util.List;

public class OrgnizationDAOImpl implements OrgnizationDAO {

    public List getOrgnizationTree() {

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        List<OrgnizationStructure> list = hbsessionDao.search(
                "FROM OrgnizationStructure");

        return list;
    }

    /*删除orgnizationstruct表+ province表
    */
    public Boolean delProvinceOrgnization(String pbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        rt1 = hbsessionDao.delete( "Delete FROM OrgnizationStructure Where id=?", pbid);
        rt2 = hbsessionDao.delete( "Delete FROM ProvinceBank Where pbid=?", pbid);

        return rt1 && rt2;
    }

    public Boolean delCityOrgnization(String cbid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        rt1 = hbsessionDao.delete( "Delete FROM OrgnizationStructure Where id=?", cbid);
        rt2 = hbsessionDao.delete( "Delete FROM CityBank Where cbid=?", cbid);

        return rt1 && rt2;
    }

    public Boolean delComputerroomOrgnization(String rid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        rt1 = hbsessionDao.delete( "Delete FROM OrgnizationStructure Where id=?", rid);
        rt2 = hbsessionDao.delete( "Delete FROM Computerroom Where rid=?", rid);

        return rt1 && rt2;
    }

    public Boolean updateProvinceOrgnization(String pbid, String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        String hql1 = "update OrgnizationStructure orgs set orgs.name='" + name + "' where orgs.id='" + pbid + "'";
        rt1 = hbsessionDao.update(hql1);
        String hql2 = "update ProvinceBank prov set prov.pbname='" + name +  "' where prov.pbid='" + pbid + "'";
        rt2 = hbsessionDao.update(hql2);

        return rt1 && rt2;
    }

    public Boolean updateCityOrgnization(String cbid, String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        String hql1 = "update OrgnizationStructure orgs set orgs.name='" + name + "' where orgs.id='" + cbid + "'";
        rt1 = hbsessionDao.update(hql1);
        String hql2 = "update CityBank cb set cb.cbname='" + name +  "' where cb.cbid='" + cbid + "'";
        rt2 = hbsessionDao.update(hql2);

        return rt1 && rt2;
    }

    public Boolean updateComputerroomOrgnization(String rid, String name) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        String hql1 = "update OrgnizationStructure orgs set orgs.name='" + name + "' where orgs.id='" + rid + "'";
        rt1 = hbsessionDao.update(hql1);
        String hql2 = "update Computerroom cr set cr.rname='" + name +  "' where cr.rid='" + rid + "'";
        rt2 = hbsessionDao.update(hql2);

        return rt1 && rt2;
    }

    public Boolean addProvinceOrgnization(String pbid, String province) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        ProvinceBank maxcr = (ProvinceBank) hbsessionDao.getFirst(
                "FROM ProvinceBank Order by pbid desc");
        Integer maxid = Integer.parseInt(maxcr.getPbid()) + 1;

        ProvinceBank pb = new ProvinceBank();
        pb.setPbname(province);
        pb.setPbid(maxid.toString());
        pb.setDidset("");
        pb.setTempset("");
        pb.setCbidset("");
        pb.setCompRoom("");

        rt1 = hbsessionDao.insert(pb);

        OrgnizationStructure os = new OrgnizationStructure();
        os.setName(province);
        os.setPid(pbid);
        os.setId(maxid.toString());

        rt2 = hbsessionDao.insert(os);

        return rt1 && rt2;
    }

    public Boolean addCityOrgnization(String cbid, String city){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        CityBank maxcr = (CityBank) hbsessionDao.getFirst(
                "FROM CityBank Order by cbid desc");
        Integer maxid = Integer.parseInt(maxcr.getCbid()) + 1;

        CityBank cb = new CityBank();
        cb.setCbname(city);
        cb.setCbid(maxid.toString());
        cb.setDidset("");
        cb.setTempset("");
        cb.setCompRoom("");

        rt1 = hbsessionDao.insert(cb);

        OrgnizationStructure os = new OrgnizationStructure();
        os.setName(city);
        os.setPid(cbid);
        os.setId(maxid.toString());

        rt2 = hbsessionDao.insert(os);

        return rt1 && rt2;
    }

    public Boolean addComputerroomOrgnizationUnderHeadBank(String orgid, String computerroom){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        Computerroom maxcr = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom Order by rid desc");
        Integer maxrid = Integer.parseInt(maxcr.getRid()) + 1;

        Computerroom pb = new Computerroom();
        pb.setRname(computerroom);
        pb.setRid(maxrid.toString());
        pb.setDidset("");
        pb.setTempset("");

        rt1 = hbsessionDao.insert(pb);

        OrgnizationStructure os = new OrgnizationStructure();
        os.setName(computerroom);
        os.setPid(orgid);
        os.setId(maxrid.toString());

        rt2 = hbsessionDao.insert(os);

        return rt1 && rt2;
    }

    public Boolean addComputerroomOrgnizationUnderProvinceBank(String orgid, String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        Computerroom maxcr = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom Order by rid desc");
        Integer maxrid = Integer.parseInt(maxcr.getRid()) + 1;

        Computerroom pb = new Computerroom();
        pb.setRname(computerroom);
        pb.setRid(maxrid.toString());
        pb.setDidset("");
        pb.setTempset("");

        rt1 = hbsessionDao.insert(pb);

        OrgnizationStructure os = new OrgnizationStructure();
        os.setName(computerroom);
        os.setPid(orgid);
        os.setId(maxrid.toString());

        rt2 = hbsessionDao.insert(os);

        return rt1 && rt2;
    }

    public Boolean addComputerroomOrgnizationUnderCityBank(String orgid, String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        boolean rt1, rt2;

        Computerroom maxcr = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom Order by rid desc");
        Integer maxrid = Integer.parseInt(maxcr.getRid()) + 1;

        Computerroom pb = new Computerroom();
        pb.setRname(computerroom);
        pb.setRid(maxrid.toString());
        pb.setDidset("");
        pb.setTempset("");

        rt1 = hbsessionDao.insert(pb);

        OrgnizationStructure os = new OrgnizationStructure();
        os.setName(computerroom);
        os.setPid(orgid);
        os.setId(maxrid.toString());

        rt2 = hbsessionDao.insert(os);

        return rt1 && rt2;
    }


}
