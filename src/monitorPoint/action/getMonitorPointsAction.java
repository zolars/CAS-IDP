package monitorPoint.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import monitorPoint.dao.MonitorPointDAO;
import monitorPoint.dao.impl.MonitorPointDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getMonitorPointsAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据机房名称查询检测点设备
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String computerroom = request.getParameter("computerroom");

            MonitorPointDAO dao = new MonitorPointDAOImpl();

            List mpdata = new ArrayList();

            mpdata = dao.getLocalAllMonitorPoint(computerroom);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allmpdata", mpdata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
