package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.impl.RMSDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;



public class getQstaction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据监测点获取所有的趋势图数据
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String monitorpoint = request.getParameter("monitorpointid");

            RMSDAO rmsdao = new RMSDAOImpl();

            JSONObject jsonObject = new JSONObject();

            // 5 records
            ((RMSDAOImpl) rmsdao).getCurrentData(monitorpoint);
            //getQstRMS
            List qstdata = rmsdao.getCurrentRMSData();
            //getQstTHD
            List thddata = rmsdao.getCurrentTHDData();
            //getQstCF
            List cfdata = rmsdao.getCurrentCFData();
            //getQstHZ
            List hzdata = rmsdao.getCurrentHzData(monitorpoint);
            //getQstUNB%
            List unbdata = rmsdao.getCurrentUnbData(monitorpoint);
            //getQstW
            List wdata = rmsdao.getCurrentWData(monitorpoint);
            //getQstVA
            List vadata = rmsdao.getCurrentVAData(monitorpoint);
            //getQstVar
            List vardata = rmsdao.getCurrentVarData(monitorpoint);
            //getQstPF
            List pfdata = rmsdao.getCurrentPFData(monitorpoint);
            //getQstDPF
            List dpfdata = rmsdao.getCurrentDPFData(monitorpoint);
            //getQstTAN
            List tandata = rmsdao.getCurrentTanData(monitorpoint);
            //getQstPST
            List pstdata = rmsdao.getCurrentPstData(monitorpoint);
            //getQstPLT
            List pltdata = rmsdao.getCurrentPltData(monitorpoint);

            jsonObject.put("allRMS", qstdata);
            jsonObject.put("allTHD", thddata);
            jsonObject.put("allCF", cfdata);
            jsonObject.put("allHZ", hzdata);
            jsonObject.put("allUNB", unbdata);
            jsonObject.put("allW", wdata);
            jsonObject.put("allVA", vadata);
            jsonObject.put("allVAR", vardata);
            jsonObject.put("allPF", pfdata);
            jsonObject.put("allDPF", dpfdata);
            jsonObject.put("allTAN", tandata);
            jsonObject.put("allPST", pstdata);
            jsonObject.put("allPLT", pltdata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
