package orgnizationManage.action;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import orgnizationManage.dao.ProBankDAO;
import orgnizationManage.dao.impl.ProBankDAOImpl;
import onlineTest.dao.PowerParameterDAO;
import onlineTest.dao.impl.PowerParameterDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import com.alibaba.fastjson.JSONObject;

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
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String probankname = request.getParameter("probankname");

            ProBankDAO dao = new ProBankDAOImpl();

            List cbdata = new ArrayList();
            List crdata = new ArrayList();

            cbdata = dao.getCityBankDataByName(probankname);
            crdata = dao.getCompRoomDataByName(probankname);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("CityBank",cbdata);
            jsonObject.put("CompRoom",crdata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}
