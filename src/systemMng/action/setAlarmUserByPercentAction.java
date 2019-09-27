package systemMng.action;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.PermissionDAO;
import systemMng.dao.impl.PermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;


public class setAlarmUserByPercentAction extends ActionSupport {
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    //2019.06.20 cjy : alarm analysis function
    /* 设置某个level的告警内容
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String level = request.getParameter("alarmlevel");
            String precontent = request.getParameter("content");
            String checkboxalert2 = request.getParameter("checkboxalert2");
            String checkboxsms2 = request.getParameter("checkboxsms2");
            String checkboxplantform2 = request.getParameter("checkboxplantform2");

            String alarmanalysisinterval = request.getParameter("alarmanalysisinterval"); //报警 分析时间段
            String alarmanalysispercentthreshold = request.getParameter("alarmanalysispercentthreshold"); //报警 百分比 阈值

            Integer alert = 0;
            Integer sms = 0;
            Integer plantform = 0;
            if(checkboxalert2 != null) {
                if (checkboxalert2.equals("on")) {
                    alert = 1;
                }
            }
            if(checkboxsms2 != null) {
                if (checkboxsms2.equals("on")) {
                    sms = 1;
                }
            }
            if(checkboxplantform2 != null){
               if(checkboxplantform2.equals("on")) {
                   plantform = 1;
               }
            }


            PermissionDAO dao = new PermissionDAOImpl();
            Boolean rt1 = dao.setDeviceAlarmUserInfo(level, precontent, alert, sms, plantform);
            Boolean rt2 = dao.setAlarmMethod(alarmanalysisinterval,alarmanalysispercentthreshold,"1"); //1 : 分析报警

            JSONObject jsonObject = new JSONObject();


            if(rt1 && rt2) {
                jsonObject.put("提示","设置成功");
            } else if(rt1 == false) {
                jsonObject.put("提示","报警参数设置失败");
            } else if(rt2 == false) {
                jsonObject.put("提示","报警方式设置失败");
            }

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
