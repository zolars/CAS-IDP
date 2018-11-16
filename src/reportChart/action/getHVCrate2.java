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

public class getHVCrate2 extends ActionSupport {
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
            List hvRateResult = new ArrayList();
            List hcRateResult = new ArrayList();
            List vcfund_rate = new ArrayList();
            hvRateResult = dao.getHVrateBydt2(did, stime, etime);
            hcRateResult = dao.getHCrateBydt2(did, stime, etime);
            vcfund_rate = dao.getVCfundBydt2(did, stime, etime);
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hvRateResult",hvRateResult);
            jsonObject.put("hcRateResult",hcRateResult);
            jsonObject.put("vcfund_rate",vcfund_rate);
            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}