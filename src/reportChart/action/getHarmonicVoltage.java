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
public class getHarmonicVoltage extends ActionSupport {
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
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");
            String time = request.getParameter("time");
            String did = request.getParameter("did");
            HarmonicVoltage dao = new HarmonicVoltageImpl();
            List hvresult = new ArrayList();
            List thresholdResult = new ArrayList();
            List vcfund = new ArrayList();
            hvresult = dao.getHVresultBydt(did, time);
            thresholdResult = dao.getHCthreshold();
            vcfund = dao.getVCfundBydt(did, time);
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hvresult", hvresult);
            jsonObject.put("thresholdResult", thresholdResult);
            jsonObject.put("vcfund", vcfund);
            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}