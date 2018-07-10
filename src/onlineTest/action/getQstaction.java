package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import onlineTest.dao.CFDAO;
import onlineTest.dao.PowerParameterDAO;
import onlineTest.dao.RMSDAO;
import onlineTest.dao.THDDAO;
import onlineTest.dao.impl.CFDAOImpl;
import onlineTest.dao.impl.PowerParameterDAOImpl;
import onlineTest.dao.impl.RMSDAOImpl;
import onlineTest.dao.impl.THDDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

//import net.sf.json.JSON;
//import net.sf.json.JSONArray;


public class getQstaction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据用户名查询用户id，依据用户id找到用户可查看界面的权限、及用户可访问的行级结构树状串
     */
    public String execute() throws Exception { //getUserTree() throws Exception{
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String monitorpoint = request.getParameter("monitorpointid");

            RMSDAO rmsdao = new RMSDAOImpl();
            THDDAO thddao = new THDDAOImpl();
            CFDAO cfdao = new CFDAOImpl();
            PowerParameterDAO ppdao = new PowerParameterDAOImpl();

            JSONObject jsonObject = new JSONObject();

            //getQstRMS
            List qstdata = new ArrayList();
            qstdata = rmsdao.getCurrentRMSData(monitorpoint);
            //getQstTHD
            List thddata = new ArrayList();
            thddata = thddao.getCurrentTHDData(monitorpoint);
            //getQstCF
            List cfdata = new ArrayList();
            cfdata = cfdao.getCurrentCFData(monitorpoint);
            //getQstHZ
            List hzdata = new ArrayList();
            hzdata = ppdao.getCurrentHzData(monitorpoint);
            //getQstUNB%
            List unbdata = new ArrayList();
            unbdata = ppdao.getCurrentUnbData(monitorpoint);
            //getQstW
            List wdata = new ArrayList();
            wdata = ppdao.getCurrentWData(monitorpoint);
            //getQstVA
            List vadata = new ArrayList();
            vadata = ppdao.getCurrentVAData(monitorpoint);
            //getQstVar
            List vardata = new ArrayList();
            vardata = ppdao.getCurrentVarData(monitorpoint);
            //getQstPF
            List pfdata = new ArrayList();
            pfdata = ppdao.getCurrentPFData(monitorpoint);
            //getQstDPF
            List dpfdata = new ArrayList();
            dpfdata = ppdao.getCurrentDPFData(monitorpoint);
            //getQstTAN
            List tandata = new ArrayList();
            tandata = ppdao.getCurrentTanData(monitorpoint);
            //getQstPST
            List pstdata = new ArrayList();
            pstdata = ppdao.getCurrentPstData(monitorpoint);
            //getQstPLT
            List pltdata = new ArrayList();
            pltdata = ppdao.getCurrentPltData(monitorpoint);

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
        return "success";//ERROR;
    }

}
