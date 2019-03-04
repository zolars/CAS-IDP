package userManage.dao;


import java.util.List;

public interface CityDAO {

    public List getAllCity();

    public List getCityByProvince(String province);
}
