package efficiencyAnalysis.action;

import Util.EventObject;
import Util.PageHelper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import hibernatePOJO.EventPower;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getDetailEvironmentEventtempAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /* 根据测量地点（市行名称）获取详细的 第二页环境事件-温度
     */
    public String execute() throws Exception {
        List<EventPower> pedata = new ArrayList();
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String cbnamestr = request.getParameter("cbname");
            String starttime = request.getParameter("stime");
            String endtime = request.getParameter("etime");
            String priortystr = request.getParameter("priortylist");
            String cbnamelist[] = cbnamestr.split(",");
            String priortylist[] = priortystr.split(",");

            String limit = request.getParameter("limit");
            String offset = request.getParameter("offset");

            Integer start = Integer.parseInt(offset);
            Integer end = Integer.parseInt(offset) + Integer.parseInt(limit) - 1;

            EventDAO dao = new EventDAOImpl();

            ////////////////
            PageHelper<EventObject> pageHelper = new PageHelper<EventObject>();
            // 统计总记录数

            // 查询当前页实体对象
            pageHelper = dao.getEnvironmentEventtempObjectListPage(cbnamelist, starttime, endtime, start, end);
            pageHelper.setPage((end+1)/Integer.parseInt(limit) );

            // 统计总记录数
            Integer total = dao.getLocalAllEnvironmenttempTotal(cbnamelist, starttime, endtime);
            pageHelper.setTotal(total);

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("page", pageHelper.getPage());
            jsonObject.put("rows", pageHelper.getRows());
            jsonObject.put("total", pageHelper.getTotal());

            result = jsonObject;

        /*    if((starttime == null && endtime == null)||(starttime.equals(" ") && endtime.equals(" "))) {
                pedata = dao.getLocalLastDetailEnvironmentEventtemp(cbname);
            } else {
                pedata = dao.getLocalAllDetailEnvironmentEventtemp(cbname, starttime, endtime);
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("allpelist", pedata);

            result = JSON.toJSONString(jsonObject); // List转json*/

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            pedata = null;
        }
        return "success";
    }

}
