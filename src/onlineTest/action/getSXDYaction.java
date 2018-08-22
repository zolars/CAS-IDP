package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import grabData.DataOutput;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import onlineTest.dao.SXDYDAO;
import onlineTest.dao.impl.SXDYDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getSXDYaction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据监测点设备获取当前三相电压数据
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String monitorpoint = request.getParameter("monitorpointid");

            PowersxdyMonitor pp = new PowersxdyMonitor();

            pp.setSxid(DataOutput.varsxdy.getSxid());
            pp.setMpid(DataOutput.varsxdy.getMpid());
            pp.setTime(DataOutput.varsxdy.getTime());
            pp.setU1(DataOutput.varsxdy.getU1());
            pp.setU2(DataOutput.varsxdy.getU2());
            pp.setU3(DataOutput.varsxdy.getU3());
            pp.setV1(DataOutput.varsxdy.getV1());
            pp.setV2(DataOutput.varsxdy.getV2());
            pp.setV3(DataOutput.varsxdy.getV3());
            pp.setI1(DataOutput.varsxdy.getI1());
            pp.setI2(DataOutput.varsxdy.getI2());
            pp.setI3(DataOutput.varsxdy.getI3());
            pp.setAngleU1(DataOutput.varsxdy.getAngleU1());
            pp.setAngleU2(DataOutput.varsxdy.getAngleU2());
            pp.setAngleU3(DataOutput.varsxdy.getAngleU3());
            pp.setAngleV1(DataOutput.varsxdy.getAngleV1());
            pp.setAngleV2(DataOutput.varsxdy.getAngleV2());
            pp.setAngleV3(DataOutput.varsxdy.getAngleV3());
            pp.setAngleI1(DataOutput.varsxdy.getAngleI1());
            pp.setAngleI2(DataOutput.varsxdy.getAngleI2());
            pp.setAngleI3(DataOutput.varsxdy.getAngleI3());
            pp.setAunb(DataOutput.varsxdy.getAunb());
            pp.setUunb(DataOutput.varsxdy.getUunb());
            pp.setVunb(DataOutput.varsxdy.getVunb());

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("nowpowersxdy", pp);
            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
