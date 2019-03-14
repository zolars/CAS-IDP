package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.impl.RMSDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
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
        //getQstRMS
        List qstdata = new ArrayList();
        //getQstTHD
        List thddata = new ArrayList();
        //getQstHZ
        List hzdata = new ArrayList();
        //getQstUNB%
        List unbdata = new ArrayList();
        //getQstW
        List wdata = new ArrayList();
        //getQstVA
        List vadata = new ArrayList();
        //getQstVar
        List vardata = new ArrayList();
        //getQstPF
        List pfdata = new ArrayList();
        //getQstPST
        List pstdata = new ArrayList();
        //getQstPLT
        List pltdata = new ArrayList();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            //获取监测点,即设备ID
            String did = request.getParameter("did");

            RMSDAO rmsdao = new RMSDAOImpl();

            JSONObject jsonObject = new JSONObject();

            //1 records
            //getQstRMS
            qstdata = rmsdao.getCurrentRMSData(did);
            //getQstTHD
            thddata = rmsdao.getCurrentTHDData(did);
            //getQstHZ
            hzdata = rmsdao.getCurrentHzData(did);
            //getQstUNB%
            unbdata = rmsdao.getCurrentUnbData(did);
            //getQstW
            wdata = rmsdao.getCurrentWData(did);
            //getQstVA
            vadata = rmsdao.getCurrentVAData(did);
            //getQstVar
            vardata = rmsdao.getCurrentVarData(did);
            //getQstPF
            pfdata = rmsdao.getCurrentPFData(did);
            //getQstDPF
            //List dpfdata = rmsdao.getCurrentDPFData(did);
            //getQstTAN
            //List tandata = rmsdao.getCurrentTanData(did);
            //getQstPST
            pstdata = rmsdao.getCurrentPstData(did);
            //getQstPLT
            pltdata = rmsdao.getCurrentPltData(did);

            // PowerparmMonitor pp = DataOnline.getParmMap().get(did);
            // PowerxbMonitor pxb = DataOnline.getXbMap().get(did);

            jsonObject.put("allRMS", qstdata);
            jsonObject.put("allTHD", thddata);
            jsonObject.put("allHZ", hzdata);

            jsonObject.put("allW", wdata);
            jsonObject.put("allVA", vadata);
            jsonObject.put("allVAR", vardata);
            jsonObject.put("allPF", pfdata);
            jsonObject.put("allUNB", unbdata);
            //jsonObject.put("allDPF", dpfdata);
            //jsonObject.put("allTAN", tandata);
            jsonObject.put("allPST", pstdata);
            jsonObject.put("allPLT", pltdata);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            qstdata = null;
            thddata = null;
            hzdata = null;
            unbdata = null;
            wdata = null;
            vadata = null;
            vardata = null;
            pfdata = null;
            pstdata = null;
            pltdata = null;
        }
        return "success";
    }

}
