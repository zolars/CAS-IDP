package systemMng.dao;


import java.util.List;

public interface OrgnizationDAO {

    public List getOrgnizationTree();

    public Boolean delProvinceOrgnization(String pbid);

    public Boolean delCityOrgnization(String cbid);

    public Boolean delComputerroomOrgnization(String rid);

}
