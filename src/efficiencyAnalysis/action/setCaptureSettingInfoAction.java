package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class setCaptureSettingInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 设置数据上传时效等信息
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String onlineinterval = request.getParameter("onlineinterval");
            String tansentinterval = request.getParameter("tansentinterval");
            String uploadinterval = request.getParameter("uploadinterval");

            EventDAO dao = new EventDAOImpl();

            boolean rt = dao.setCaptrueSettingInfo(onlineinterval, tansentinterval, uploadinterval);
            JSONObject jsonObject = new JSONObject();

            if(rt)
                jsonObject.put("提示", "设置成功！");
            else
                jsonObject.put("提示", "设置失败，请重试！");

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
