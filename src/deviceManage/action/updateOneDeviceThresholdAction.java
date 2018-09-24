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


    /*
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String dtid = request.getParameter("dtid");
            String name = request.getParameter("name");
            String type = request.getParameter("type");
            String unit = request.getParameter("unit");
            String standval = request.getParameter("standval");
            String cellval = request.getParameter("cellval");
            String floorval = request.getParameter("floorval");
            String ismark = request.getParameter("ismark");
            String alarmcontent = request.getParameter("alarmcontent");

            Double dstandval = Double.valueOf(standval);
            Double dcellval = Double.valueOf(cellval);
            Double dfloorval = Double.valueOf(floorval);
            Integer iismark = Integer.valueOf(ismark);

            DeviceDAO dao = new DeviceDAOImpl();

            Boolean rt = dao.updateDeviceThreshold(dtid, name, type, unit, dstandval, dcellval, dfloorval, iismark, alarmcontent);

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
