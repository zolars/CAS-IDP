package systemMng.action;

import Util.HBSessionDaoImpl;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.DevicesThreshold;
import org.apache.struts2.ServletActionContext;
import systemMng.ImportService;

import javax.servlet.http.HttpServletRequest;
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
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String uploadEventFile = request.getParameter("uploadEventFile");
            Boolean rt = false;

            //得到表格中所有的数据
            List<DevicesThreshold> listExcel = ImportService.getAllByExcel(uploadEventFile);

            for (DevicesThreshold stuEntity : listExcel) {
                HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

                String name = stuEntity.getName();
                Integer level = stuEntity.getLevel();

                String did = stuEntity.getDid();
                String classify = stuEntity.getClassify();
                String unit = stuEntity.getUnit();
                Double cellval = stuEntity.getCellval();
                Double floorval = stuEntity.getFloorval();
                Integer ismark = stuEntity.getIsmark();

                List<DevicesThreshold> list = hbsessionDao.search("From DevicesThreshold where name='"+ name + "' and level = "+level);

                if(list != null) {    //update
                    DevicesThreshold dt = list.get(0);
                    Integer dtid = dt.getDtid();

                    String sql = "update DevicesThreshold dt set dt.did='"+ did + "', dt.classify='" + classify + "', dt.unit='" + unit + "', dt.cellval='" +
                            cellval + "', dt.floorval='" + floorval + "', dt.ismark='" + ismark + "' where dt.dtid='" + dtid + "'";
                    rt = hbsessionDao.update(sql);
                } else {     //insert
                    DevicesThreshold dt = (DevicesThreshold) hbsessionDao.getFirst(
                                    "FROM DevicesThreshold order by dtid desc");
                    stuEntity.setDtid(dt.getDtid() + 1);
                    stuEntity.setType("0");   //为了insert 后续可能删除type字段
                    rt = hbsessionDao.insert(stuEntity);
                }
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("", "导入成功");

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
