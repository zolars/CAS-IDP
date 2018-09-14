package efficiencyAnalysis.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import hibernatePOJO.EventPower;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class setAllEventtypePriortyAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 循环设置每个事件类型的优先级
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String priortystr = request.getParameter("priortylist");
            String eventtypestr = request.getParameter("eventtypelist");

            String priortylist[] = priortystr.split(",");
            String eventtypelist[] = eventtypestr.split(",");

            EventDAO dao = new EventDAOImpl();
            Boolean rt = false;

            if((priortylist.length == eventtypelist.length)&&(priortylist.length > 0)&&(priortylist.length > 0))
                 rt = dao.setAllEventtypePriorty(eventtypelist, priortylist);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("", rt);

            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
