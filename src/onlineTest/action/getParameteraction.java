package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import grabData.DataOutput;
import hibernatePOJO.PowerparmMonitor;
import onlineTest.dao.PowerParameterDAO;
import onlineTest.dao.impl.PowerParameterDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;



public class getParameteraction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据检测点获取当前电能参数
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            String monitorpoint = request.getParameter("monitorpointid");

            PowerparmMonitor pp = new PowerparmMonitor();

            pp.setPpid(DataOutput.var.getPpid());
            pp.setMpid(DataOutput.var.getMpid());
            pp.setTime(DataOutput.var.getTime());
            pp.setU1(DataOutput.var.getU1());
            pp.setU2(DataOutput.var.getU2());
            pp.setU3(DataOutput.var.getU3());
            pp.setU4(DataOutput.var.getU4());
            pp.setI1(DataOutput.var.getI1());
            pp.setI2(DataOutput.var.getI2());
            pp.setI3(DataOutput.var.getI3());
            pp.setI4(DataOutput.var.getI4());
            pp.setP1(DataOutput.var.getP1());
            pp.setP2(DataOutput.var.getP2());
            pp.setP3(DataOutput.var.getP3());
            pp.setPsum(DataOutput.var.getPsum());
            pp.setQ1(DataOutput.var.getQ1());
            pp.setQ2(DataOutput.var.getQ2());
            pp.setQ3(DataOutput.var.getQ3());
            pp.setQsum(DataOutput.var.getQsum());
            pp.setS1(DataOutput.var.getS1());
            pp.setS2(DataOutput.var.getS2());
            pp.setS3(DataOutput.var.getS3());
            pp.setSsum(DataOutput.var.getSsum());
            pp.setPf1(DataOutput.var.getPf1());
            pp.setPf2(DataOutput.var.getPf2());
            pp.setPf3(DataOutput.var.getPf3());
            pp.setpFsum(DataOutput.var.getpFsum());
            pp.setCosPhi1(DataOutput.var.getCosPhi1());
            pp.setCosPhi2(DataOutput.var.getCosPhi2());
            pp.setCosPhi3(DataOutput.var.getCosPhi3());
            pp.setIflU1(DataOutput.var.getIflU1());
            pp.setIflU2(DataOutput.var.getIflU2());
            pp.setIflU3(DataOutput.var.getIflU3());
            pp.setPstU1(DataOutput.var.getPstU1());
            pp.setPstU2(DataOutput.var.getPstU2());
            pp.setPstU3(DataOutput.var.getPstU3());
            pp.setPltU1(DataOutput.var.getPltU1());
            pp.setPltU2(DataOutput.var.getPltU2());
            pp.setPltU3(DataOutput.var.getPltU3());
            pp.setHz(DataOutput.var.getHz());

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("nowpowerparm", pp);
            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
