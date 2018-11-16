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

public class getSynthesis2 extends ActionSupport {
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
            request.setCharacterEncoding("utf-8");
            String stime = request.getParameter("stime");
            String etime = request.getParameter("etime");
            String did = request.getParameter("did");
            HarmonicVoltage dao = new HarmonicVoltageImpl();
            List hzresult = new ArrayList();
            List hzpcresult = new ArrayList();
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

            hzresult = dao.getHzBydt2(did, stime, etime);
            hzpcresult = dao.getHzpcBydt2(did, stime, etime);
            sxdyresult = dao.getsxdyBydt2(did, stime, etime);
            sxdyThresholdResult = dao.getsxdythreshold(did);
            dypcresult = dao.getDypcBydt2(did, stime, etime);
            dypcThresholdResult = dao.getDypcthreshold(did);
            dsdysbresult = dao.getdsdysbBydt2(did, stime, etime);
            dsdysbThresholdResult = dao.getdsdysbthreshold(did);
            csdysbresult = dao.getcsdysbBydt2(did, stime, etime);
            csdysbThresholdResult = dao.getcsdysbthreshold(did);
            activePowerResult = dao.getActivePowerBydt2(did, stime, etime);
            reactivePowerResult = dao.getReactivePowerBydt2(did, stime, etime);
            powerFactorResult = dao.getPowerFactorBydt2(did, stime, etime);
            thdUResult = dao.getthdUBydt2(did, stime, etime);
            thdIResult = dao.getthdIBydt2(did, stime, etime);
            thdUThresholdResult = dao.getthduthreshold(did);
            thdIThresholdResult = dao.getthdithreshold(did);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hzresult", hzresult);
            jsonObject.put("hzpcresult", hzpcresult);
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

            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}