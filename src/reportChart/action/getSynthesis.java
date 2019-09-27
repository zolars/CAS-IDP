package reportChart.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import reportChart.dao.HarmonicVoltage;
import reportChart.dao.impl.HarmonicVoltageImpl;

import javax.servlet.http.HttpServletRequest;
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

    public String execute() throws Exception {
        List hzresult = new ArrayList();
        List hzpcresult = new ArrayList();
        List hzpcThresholdResult = new ArrayList();
        List sxdyresult = new ArrayList();
        List sxdyThresholdResult = new ArrayList();
        List dsdysbresult = new ArrayList();
        List dsdysbThresholdResult = new ArrayList();
        List csdysbresult = new ArrayList();
        List csdysbThresholdResult = new ArrayList();
        List dypcresult = new ArrayList();
        List dypcThresholdResult = new ArrayList();
        List activePowerResult = new ArrayList();
        List reactivePowerResult = new ArrayList();
        List powerFactorResult = new ArrayList();
        List thdUResult = new ArrayList();
        List thdIResult = new ArrayList();
        List thdUThresholdResult = new ArrayList();
        List thdIThresholdResult = new ArrayList();
        List powerthresholdResult = new ArrayList();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");
            String time = request.getParameter("time");
            String did = request.getParameter("did");
            HarmonicVoltage dao = new HarmonicVoltageImpl();

            hzresult = dao.getHzBydt(did, time);
            hzpcresult = dao.getHzpcBydt(did, time);
            hzpcThresholdResult = dao.getHzpcthreshold();
            sxdyresult = dao.getsxdyBydt(did, time);
            sxdyThresholdResult = dao.getsxdythreshold();
            dypcresult = dao.getDypcBydt(did, time);
            dypcThresholdResult = dao.getDypcthreshold();
            dsdysbresult = dao.getdsdysbBydt(did, time);
            dsdysbThresholdResult = dao.getdsdysbthreshold();
            csdysbresult = dao.getcsdysbBydt(did, time);
            csdysbThresholdResult = dao.getcsdysbthreshold();
            activePowerResult = dao.getActivePowerBydt(did, time);
            reactivePowerResult = dao.getReactivePowerBydt(did, time);
            powerFactorResult = dao.getPowerFactorBydt(did, time);
            thdUResult = dao.getthdUBydt(did, time);
            thdIResult = dao.getthdIBydt(did, time);
            thdUThresholdResult = dao.getthduthreshold();
            thdIThresholdResult = dao.getthdithreshold();
            powerthresholdResult=dao.getpowerthreshold();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hzresult", hzresult);
            jsonObject.put("hzpcresult", hzpcresult);
            jsonObject.put("hzpcThresholdResult", hzpcThresholdResult);
            jsonObject.put("sxdyresult", sxdyresult);
            jsonObject.put("sxdyThresholdResult", sxdyThresholdResult);
            jsonObject.put("dypcresult", dypcresult);
            jsonObject.put("dypcThresholdResult", dypcThresholdResult);
            jsonObject.put("dsdysbresult", dsdysbresult);
            jsonObject.put("dsdysbThresholdResult", dsdysbThresholdResult);
            jsonObject.put("csdysbresult", csdysbresult);
            jsonObject.put("csdysbThresholdResult", csdysbThresholdResult);
            jsonObject.put("activePowerResult", activePowerResult);
            jsonObject.put("reactivePowerResult", reactivePowerResult);
            jsonObject.put("powerFactorResult", powerFactorResult);
            jsonObject.put("thdUResult", thdUResult);
            jsonObject.put("thdIResult", thdIResult);
            jsonObject.put("thdUThresholdResult", thdUThresholdResult);
            jsonObject.put("thdIThresholdResult", thdIThresholdResult);
            jsonObject.put("powerthresholdResult", powerthresholdResult);


            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            hzresult = null;
            hzpcresult = null;
            hzpcThresholdResult = null;
            sxdyresult = null;
            sxdyThresholdResult = null;
            dypcresult = null;
            dypcThresholdResult = null;
            dsdysbresult = null;
            dsdysbThresholdResult = null;
            csdysbresult = null;
            csdysbThresholdResult = null;
            activePowerResult = null;
            reactivePowerResult = null;
            powerFactorResult = null;
            thdUResult = null;
            thdIResult = null;
            thdUThresholdResult = null;
            thdIThresholdResult = null;

        }
        return "success";
    }
}