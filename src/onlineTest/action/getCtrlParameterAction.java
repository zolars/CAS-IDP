package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import grabData.CtrlSave;
import onlineTest.dao.impl.CtrlParameter;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;


public class getCtrlParameterAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    /* 根据检测点获取当前ctrl参数
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            //获取ctrl监测点
            String did = request.getParameter("did");

            if (!did.equals("") && did != null) {
                CtrlParameter pp = CtrlSave.getCtrlMap().get(did);

                if (pp != null) {
                    JSONObject jsonObject = new JSONObject();
                    jsonObject.put("nowctrl", pp);

                    result = JSON.toJSONString(jsonObject);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
