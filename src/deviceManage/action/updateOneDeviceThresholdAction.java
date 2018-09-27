package deviceManage.action;

import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;


public class updateOneDeviceThresholdAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 更新一个阈值的记录
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String dtid = request.getParameter("dtid");
            String type = request.getParameter("type");
            String unit = request.getParameter("unit");
           // String standval = request.getParameter("standval");
            String cellval = request.getParameter("cellval");
            String floorval = request.getParameter("floorval");
            String ismark = request.getParameter("ismark");
            String level = request.getParameter("level");

           // Double dstandval = Double.valueOf(standval);
            Double dcellval = 0.00;
            Double dfloorval = 0.00;
            Integer iismark = 1;
            Integer ilevel = 1;

            if(cellval != "")
                dcellval = Double.valueOf(cellval);
            if(floorval != "")
                dfloorval = Double.valueOf(floorval);
            if(ismark != "")
                iismark = Integer.valueOf(ismark);
            if(level != "")
                ilevel = Integer.valueOf(level);


            DeviceDAO dao = new DeviceDAOImpl();

            Boolean rt = dao.updateDeviceThreshold(dtid, type, unit, dcellval, dfloorval, iismark, ilevel);

            JSONObject jsonObject = new JSONObject();

            if(rt)
                jsonObject.put("提示", "修改成功！");
            else
                jsonObject.put("提示", "修改失败，请重试！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
