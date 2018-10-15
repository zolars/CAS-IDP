package reportChart.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import reportChart.dao.HarmonicVoltage;
import reportChart.dao.impl.HarmonicVoltageImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class getSynthesis extends ActionSupport {
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
            String time = request.getParameter("time");
            String did = request.getParameter("did");
            HarmonicVoltage dao = new HarmonicVoltageImpl();
            List hzresult = new ArrayList();
            List sxdyresult = new ArrayList();
            List sxdyThresholdResult = new ArrayList();
            List dsdysbresult = new ArrayList();
            List dsdysbThresholdResult = new ArrayList();
            List csdysbresult = new ArrayList();
            List csdysbThresholdResult = new ArrayList();
            List activePowerResult = new ArrayList();
            List reactivePowerResult = new ArrayList();
            List powerFactorResult = new ArrayList();

            hzresult = dao.getHzBydt(did,time);
            sxdyresult = dao.getsxdyBydt(did,time);
            sxdyThresholdResult = dao.getsxdythreshold(did);
            dsdysbresult = dao.getdsdysbBydt(did,time);
            dsdysbThresholdResult = dao.getdsdysbthreshold(did);
            csdysbresult = dao.getcsdysbBydt(did,time);
            csdysbThresholdResult = dao.getcsdysbthreshold(did);
            activePowerResult = dao.getActivePowerBydt(did,time);
            reactivePowerResult = dao.getReactivePowerBydt(did,time);
            powerFactorResult = dao.getPowerFactorBydt(did,time);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hzresult",hzresult);
            jsonObject.put("sxdyresult",sxdyresult);
            jsonObject.put("sxdyThresholdResult",sxdyThresholdResult);
            jsonObject.put("dsdysbresult",dsdysbresult);
            jsonObject.put("dsdysbThresholdResult",dsdysbThresholdResult);
            jsonObject.put("csdysbresult",csdysbresult);
            jsonObject.put("csdysbThresholdResult",csdysbThresholdResult);
            jsonObject.put("activePowerResult",activePowerResult);
            jsonObject.put("reactivePowerResult",reactivePowerResult);
            jsonObject.put("powerFactorResult",powerFactorResult);

            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}