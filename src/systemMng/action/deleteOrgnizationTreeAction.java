package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.OrgnizationDAO;
import systemMng.dao.impl.OrgnizationDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class deleteOrgnizationTreeAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 删除某条组织结构
       若是省行，id长度为3
       若是市行，id长度为4
       若是机房，id长度为5
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String orgid = request.getParameter("orgid");

            OrgnizationDAO dao = new OrgnizationDAOImpl();
            Boolean rt = false;

            if(orgid.length() == 3) {
                rt = dao.delProvinceOrgnization(orgid);
            } else if (orgid.length() == 4) {
                rt = dao.delCityOrgnization(orgid);
            } else if (orgid.length() == 5) {
                rt = dao.delComputerroomOrgnization(orgid);
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("", rt);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
