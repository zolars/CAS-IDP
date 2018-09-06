package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import grabData.DataOnline;
import hibernatePOJO.PowerparmMonitor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;


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
            String did = request.getParameter("did");

            if(did != "") {
                PowerparmMonitor pp = DataOnline.getParmMap().get(did);

                JSONObject jsonObject = new JSONObject();
                jsonObject.put("nowpowerparm", pp);
                result = JSON.toJSONString(jsonObject); // List转json
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
