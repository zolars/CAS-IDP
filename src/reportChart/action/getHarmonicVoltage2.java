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

public class getHarmonicVoltage2 extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;
    public String getResult() {
        return result;
    }
    public void setResult(String result) {
        this.result = result;
    }

    /* 根据设备名称、时间查询谐波电压统计报表
     */
    public String execute() throws Exception {
        List hvresult = new ArrayList();
        List thresholdResult = new ArrayList();
        List vcfund = new ArrayList();
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");
            String stime = request.getParameter("stime");
            String etime = request.getParameter("etime");
            String did = request.getParameter("did");
            HarmonicVoltage dao = new HarmonicVoltageImpl();

            hvresult = dao.getHVresultBydt2(did, stime, etime);
            thresholdResult = dao.getHVthreshold();
            vcfund = dao.getVCfundBydt2(did, stime, etime);
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hvresult", hvresult);
            jsonObject.put("thresholdResult", thresholdResult);
            jsonObject.put("vcfund", vcfund);
            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            hvresult = null;
            thresholdResult = null;
            vcfund = null;
        }
        return "success";
    }
}