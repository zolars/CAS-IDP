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
public class getHVCrate extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;
    public String getResult() {
        return result;
    }
    public void setResult(String result) {
        this.result = result;
    }

    public String execute() throws Exception {
        List hvRateResult = new ArrayList();
        List hcRateResult = new ArrayList();
        List vcfund_rate = new ArrayList();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");
            String time = request.getParameter("time");
            String did = request.getParameter("did");
            HarmonicVoltage dao = new HarmonicVoltageImpl();

            hvRateResult = dao.getHVrateBydt(did,time);
            hcRateResult = dao.getHCrateBydt(did,time);
            vcfund_rate = dao.getVCfundBydt(did,time);
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hvRateResult",hvRateResult);
            jsonObject.put("hcRateResult",hcRateResult);
            jsonObject.put("vcfund_rate",vcfund_rate);
            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            hvRateResult = null;
            hcRateResult = null;
            vcfund_rate = null;
        }
        return "success";
    }
}