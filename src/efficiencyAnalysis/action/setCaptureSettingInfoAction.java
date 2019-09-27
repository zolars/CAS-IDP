package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceJobManager.JobManager;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;


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
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String onlineinterval = request.getParameter("onlineinterval");
            String qstinterval = request.getParameter("qstinterval");
            String tempinterval = request.getParameter("tempinterval");
            String tansentinterval = request.getParameter("tansentinterval");
            String uploadinterval = request.getParameter("uploadinterval");
            String assessinterval = request.getParameter("assessinterval");
            String alarminterval = request.getParameter("alarminterval");
            String ctrlinterval = request.getParameter("ctrlinterval");
            String thresholdsaveinterval = request.getParameter("thresholdsaveinterval");
            String qstdatainterval = request.getParameter("qstdatainterval");

            Integer intonlineinterval = Integer.parseInt(onlineinterval); //A
            Integer intqstinterval = Integer.parseInt(qstinterval);  //B
            Integer inttempinterval = Integer.parseInt(tempinterval); //C
            Integer inttansentinterval = Integer.parseInt(tansentinterval); //D E

            Integer intctrlinterval = Integer.parseInt(ctrlinterval); //F
            Integer intalarminterval = Integer.parseInt(alarminterval); //G
            Integer intassessinterval = Integer.parseInt(assessinterval); //H
            Integer intthresholdsaveinterval = Integer.parseInt(thresholdsaveinterval); //I

           // Integer intuploadinterval = Integer.parseInt(uploadinterval); //J
           // Integer intqstdatainterval = Integer.parseInt(qstdatainterval); //这个不需要改job 前端可以直接显示

            EventDAO dao = new EventDAOImpl();

            boolean rt = dao.setCaptrueSettingInfo(onlineinterval, qstinterval, tansentinterval, uploadinterval,assessinterval,alarminterval,tempinterval,ctrlinterval,thresholdsaveinterval,qstdatainterval);
            JSONObject jsonObject = new JSONObject();

            if (rt) {
                jsonObject.put("提示", "设置成功！");
                JobManager.updateJob("A",3,intonlineinterval);
                JobManager.updateJob("B",3,intqstinterval);
                JobManager.updateJob("C",3,inttempinterval);
                JobManager.updateJob("D",2,inttansentinterval);
                JobManager.updateJob("E",2,inttansentinterval);

                JobManager.updateJob("F",3,intctrlinterval);
                JobManager.updateJob("G",2,intalarminterval);
                JobManager.updateJob("H",1,intassessinterval);
                JobManager.updateJob("I",3,intthresholdsaveinterval);

               // JobManager.updateJob("J",1,intuploadinterval);
            } else {
                jsonObject.put("提示", "设置失败，请重试！");
            }

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
