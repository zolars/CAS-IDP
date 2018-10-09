package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class addThresholdInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 添加一条设备限值
       先根据name和level查找表中是否存在三条或以下限值记录，若存在，则获取该id，并更新；
       否则，新建一条限值记录
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String dname = request.getParameter("dname");
            String name = request.getParameter("name");
           // String type = request.getParameter("type");
            String unit = request.getParameter("unit");
            String cellval = request.getParameter("cellval");
            String floorval = request.getParameter("floorval");
            String ismark = request.getParameter("ismark");
            String level = request.getParameter("level");

            DeviceDAO dao = new DeviceDAOImpl();

            Integer maxdtid;
            Double dcellval = Double.valueOf(cellval);
            Double dfloorval = Double.valueOf(floorval);
            Integer iismark = Integer.valueOf(ismark);
            String did = dao.getDeviceIDByName(dname);
            Integer ilevel = Integer.valueOf(level);

            String dtid = dao.getOneDeviceThresholdByNameAndLevel(name, level);

            if(dtid.equals("")) //不存在
                maxdtid = dao.getMaxThresholdId();
            else{
                maxdtid = Integer.parseInt(dtid);
            }

            String type = dao.getTypeByName(name);

            Boolean rt = dao.addThresholdInfo(did,maxdtid+1, name, type, unit, dcellval, dfloorval, iismark, ilevel);
            JSONObject jsonObject = new JSONObject();

            if(rt)
                jsonObject.put("提示", "添加成功！");
            else
                jsonObject.put("提示", "添加失败，请重试！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
