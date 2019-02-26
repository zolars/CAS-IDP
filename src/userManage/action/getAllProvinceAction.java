package userManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.ProvinceDAO;
import userManage.dao.impl.ProvinceDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;



public class getAllProvinceAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 查询所有省行list
     */
    public String execute() throws Exception {
        List allprovince = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            ProvinceDAO dao = new ProvinceDAOImpl();
            allprovince = dao.getAllProvince();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allprovince", allprovince);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            allprovince = null;
        }
        return "success";
    }

}
