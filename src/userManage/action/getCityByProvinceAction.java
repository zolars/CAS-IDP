package userManage.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.CityDAO;
import userManage.dao.impl.CityDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class getCityByProvinceAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据省行id查询所属的市行
     */
    public String execute() throws Exception {
        List allcity = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String province = request.getParameter("province");

            CityDAO dao = new CityDAOImpl();
            allcity = dao.getCityByProvince(province);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allcity", allcity);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            allcity = null;
        }
        return "success";
    }

}
