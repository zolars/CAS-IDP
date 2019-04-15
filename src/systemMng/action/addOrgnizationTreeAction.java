package systemMng.action;


import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.OrgnizationDAO;
import systemMng.dao.impl.OrgnizationDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class addOrgnizationTreeAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    /* 添加某个组织结构的子节点名称
       若是省行，id长度为3
       若是市行，id长度为4
       若是机房，id长度为5
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String orgid = request.getParameter("nodeid");
            String province = request.getParameter("province");
            String city = request.getParameter("city");
            String computerroom = request.getParameter("computerroom");

            OrgnizationDAO dao = new OrgnizationDAOImpl();
            Boolean rt = false;

            if (orgid.length() == 1) {
                if (province.length() > 0) rt = dao.addProvinceOrgnization(orgid, province);
                else if (computerroom.length() > 0)
                    rt = dao.addComputerroomOrgnizationUnderHeadBank(orgid, computerroom);
            } else if (orgid.length() == 3) {
                if (city.length() > 0) rt = dao.addCityOrgnization(orgid, city);
                else if (computerroom.length() > 0)
                    rt = dao.addComputerroomOrgnizationUnderProvinceBank(orgid, computerroom);
            } else if (orgid.length() == 4) {
                if (computerroom.length() > 0) rt = dao.addComputerroomOrgnizationUnderCityBank(orgid, computerroom);
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
