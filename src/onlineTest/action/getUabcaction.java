package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.impl.RMSDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getUabcaction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据监测点获取U数据
     */
    public String execute() throws Exception {

        List thddata = new ArrayList();

        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            //获取监测点,即设备ID
            String did = request.getParameter("did");

            RMSDAO rmsdao = new RMSDAOImpl();

            JSONObject jsonObject = new JSONObject();

            thddata = rmsdao.getCurrentTHDData(did);

            jsonObject.put("allU", thddata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {

        }
        return "success";
    }

}
