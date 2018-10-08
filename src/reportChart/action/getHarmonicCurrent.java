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
public class getHarmonicCurrent extends ActionSupport {
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
            List hcresult = new ArrayList();
            List thresholdResult = new ArrayList();
            List vcfund = new ArrayList();
            hcresult = dao.getHCresultBydt(did,time);
            thresholdResult = dao.getHCthreshold();
            vcfund = dao.getVCfundBydt(did,time);
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("hcresult",hcresult);
            jsonObject.put("thresholdResult",thresholdResult);
            jsonObject.put("vcfund",vcfund);
            result = JSON.toJSONString(jsonObject); // List转json
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}