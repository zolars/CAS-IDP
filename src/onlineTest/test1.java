package onlineTest;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import grabData.DataOutput;
import hibernatePOJO.PowerparmMonitor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

public class test1 {

    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");


            PowerparmMonitor pp = new PowerparmMonitor();

            pp.setP1(DataOutput.var.getP1());
            pp.setP2(DataOutput.var.getP2());
            pp.setP3(DataOutput.var.getP3());
            pp.setU1(DataOutput.var.getU1());
            pp.setU2(DataOutput.var.getU2());
            pp.setU3(DataOutput.var.getU3());
            pp.setU4(DataOutput.var.getU4());



            //System.out.println("sssssssssssssssss"+ DataOutput.var.getTime());
            //System.out.println("sssssssssssssssss"+ DataOutput.var.getP1());
           // System.out.println("sssssssssssssssss"+ DataOutput.var.getP2());

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("nowpowerparm", pp);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
