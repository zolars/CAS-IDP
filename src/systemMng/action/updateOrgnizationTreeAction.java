package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.OrgnizationDAO;
import systemMng.dao.impl.OrgnizationDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class updateOrgnizationTreeAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 修改某条组织结构的名称
       若是省行，id长度为3
       若是市行，id长度为4
       若是机房，id长度为5
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String orgid = request.getParameter("nodeid");
            String newname = request.getParameter("newname");

            OrgnizationDAO dao = new OrgnizationDAOImpl();
            Boolean rt = false;

            if(orgid.length() == 3)
                rt = dao.updateProvinceOrgnization(orgid, newname);
            else if (orgid.length() == 4)
                rt = dao.updateCityOrgnization(orgid, newname);
            else if (orgid.length() == 5)
                rt = dao.updateComputerroomOrgnization(orgid, newname);

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
