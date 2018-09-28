package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getPowerEventAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据测量地点（市行名称）获取设备事件
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String cbname = request.getParameter("cbname");
            String starttime = request.getParameter("stime");
            String endtime = request.getParameter("etime");
            String priortystr = request.getParameter("priortylist");
            String priortylist[] = priortystr.split(",");

            EventDAO dao = new EventDAOImpl();

            List pedata = new ArrayList();

            if((starttime.equals(" ") && endtime.equals(" ")) || (starttime == null && endtime == null))
                pedata = dao.getLocalLastPowerEvent(cbname);

            else
                pedata = dao.getLocalAllPowerEvent(cbname, starttime, endtime);

            for (int i = 0 ; i < pedata.size(); i++) {
                String ep = (String)pedata.get(i);
                List<String> eplist = java.util.Arrays.asList(ep.split(","));

                String cid= (String)eplist.get(6);
                String cidn = cid.substring(1, 2);

                Boolean has = false;

                for (int j = 0 ; j < priortylist.length; j++) {
                    if (cidn.equals(priortylist[j]))
                        has = true;
                }

                if(!has)
                    pedata.remove(i);
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allpelist", pedata);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
