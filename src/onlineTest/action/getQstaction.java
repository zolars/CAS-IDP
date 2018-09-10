package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import grabData.DataOnline;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.Vh;
import onlineTest.dao.impl.RMSDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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


    /* 根据监测点获取趋势图数据
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点,即设备ID
            String did = request.getParameter("did");

            RMSDAO rmsdao = new RMSDAOImpl();

            JSONObject jsonObject = new JSONObject();

            // 5 records
            ((RMSDAOImpl) rmsdao).getCurrentData(did);
            //getQstRMS
            List qstdata = rmsdao.getCurrentRMSData();
            //getQstTHD
            List thddata = rmsdao.getCurrentTHDData();
            //getQstCF
            List cfdata = rmsdao.getCurrentCFData();
            //getQstHZ
            List hzdata = rmsdao.getCurrentHzData(did);
            //getQstUNB%
            List unbdata = rmsdao.getCurrentUnbData(did);
            //getQstW
            List wdata = rmsdao.getCurrentWData(did);
            //getQstVA
            List vadata = rmsdao.getCurrentVAData(did);
            //getQstVar
            List vardata = rmsdao.getCurrentVarData(did);
            //getQstPF
            List pfdata = rmsdao.getCurrentPFData(did);
            //getQstDPF
            List dpfdata = rmsdao.getCurrentDPFData(did);
            //getQstTAN
            List tandata = rmsdao.getCurrentTanData(did);
            //getQstPST
            List pstdata = rmsdao.getCurrentPstData(did);
            //getQstPLT
            List pltdata = rmsdao.getCurrentPltData(did);
            //getQstVh
            List Vhdata = rmsdao.getCurrentVhData(did);

            //getQstAh
            // PowerparmMonitor pp = DataOnline.getParmMap().get(did);
           // PowerxbMonitor pxb = DataOnline.getXbMap().get(did);

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
            jsonObject.put("allVh", Vhdata);
            //jsonObject.put("allAh", Vhdata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
