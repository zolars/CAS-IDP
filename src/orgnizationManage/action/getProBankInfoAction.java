package orgnizationManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import orgnizationManage.dao.ProBankDAO;
import orgnizationManage.dao.impl.ProBankDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class getProBankInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据省行名称查询市行信息
     */
    public String execute() throws Exception {

        List cbdata = new ArrayList();
        List crdata = new ArrayList();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String probankname = request.getParameter("probankname");

            ProBankDAO dao = new ProBankDAOImpl();


            cbdata = dao.getCityBankDataByName(probankname);
            crdata = dao.getCompRoomDataByName(probankname);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("CityBank",cbdata);
            jsonObject.put("CompRoom",crdata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            cbdata = null;
            crdata = null;
        }
        return "success";
    }
}
