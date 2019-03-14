package systemMng.dao;


import java.util.List;

public interface OrgnizationDAO {

    public List getOrgnizationTree();

    public Boolean delProvinceOrgnization(String pbid);

    public Boolean delCityOrgnization(String cbid);

    public Boolean delComputerroomOrgnization(String rid);

    public Boolean updateProvinceOrgnization(String pbid, String name);

    public Boolean updateCityOrgnization(String cbid, String name);

    public Boolean updateComputerroomOrgnization(String rid, String name);

    public Boolean addProvinceOrgnization(String pbid, String province);

    public Boolean addCityOrgnization(String cbid, String city);

    public Boolean addComputerroomOrgnizationUnderHeadBank(String orgid, String computerroom);

    public Boolean addComputerroomOrgnizationUnderProvinceBank(String orgid, String computerroom);

    public Boolean addComputerroomOrgnizationUnderCityBank(String orgid, String computerroom);


}
