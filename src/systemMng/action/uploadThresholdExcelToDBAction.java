package systemMng.action;

import Util.HBSessionDaoImpl;
import hibernatePOJO.DevicesThreshold;
import systemMng.ImportService;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.OrgnizationDAO;
import systemMng.dao.impl.OrgnizationDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


public class uploadThresholdExcelToDBAction extends ActionSupport {
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String uploadEventFile = request.getParameter("uploadEventFile");

            OrgnizationDAO dao = new OrgnizationDAOImpl();
            Boolean rt = false;

            //得到表格中所有的数据
            List<DevicesThreshold> listExcel = ImportService.getAllByExcel(uploadEventFile);

            for (DevicesThreshold stuEntity : listExcel) {
                HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

                Integer cid = 999;//;

                List<DevicesThreshold> list = hbsessionDao.search("From DevicesThreshold where cid='"+ cid + "'");

                if(list.size() > 0) {//update
                    DevicesThreshold dt = list.get(0);
                    String sql = "update devices_threshold dt set dt.cellval='"+ dt.getCellval() + "', dt.floorval='" + dt.getFloorval() + "', dt.unit='" + dt.getUnit()
                     + "' where dt.cid='" + cid + "'";
                    rt = hbsessionDao.update(sql);

                } else {  //insert
                    DevicesThreshold dt = (DevicesThreshold) hbsessionDao.getFirst(
                                    "FROM DevicesThreshold order by dtid desc");
                    stuEntity.setDtid(dt.getDtid() + 1);
                    rt = hbsessionDao.insert(stuEntity);
                }
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("", rt);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
