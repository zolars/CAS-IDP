package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class addSignatureAndAnnotationAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String execute() throws Exception {
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String teid = request.getParameter("teid");
            String sign = request.getParameter("sign");
            String annot = request.getParameter("annot");
            String ettype = request.getParameter("eventtabletype");

            String teidSet[] = teid.split(",");
            /*List<String> teidlist = new ArrayList<>();

            for(int i = 0; i < teidSet.length; i++){
                String teidVal[] = teidSet[i].split("=");
                String iteid = teidVal[1];
                if(iteid != null || iteid != ""){
                    teidlist.add(iteid);
                }
            }*/

            EventDAO dao = new EventDAOImpl();
            Boolean rt = false;
            if(ettype.equals("device")) {
                for(int i = 0 ; i < teidSet.length; i ++){
                    rt = dao.addSignAndAnnotDeviceEvent(teidSet[i], sign, annot);
                }
            } else if(ettype.equals("power")) {
                for(int i = 0 ; i < teidSet.length; i ++) {
                    rt = dao.addSignAndAnnotPowerEvent(teidSet[i], sign, annot);
                }
            } else if(ettype.equals("environment")) {
                for(int i = 0 ; i < teidSet.length; i ++) {
                    rt = dao.addSignAndAnnotEnvironEvent(teidSet[i], sign, annot);
                }
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("", rt);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
