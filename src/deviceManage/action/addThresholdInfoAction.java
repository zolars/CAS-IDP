package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class addThresholdInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 添加一条限值
       先根据name和level查找表中是否存在三条或以下限值记录，若存在，则获取该id，并更新；
       否则，新建一条限值记录
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String dname = request.getParameter("dname");
            String name = request.getParameter("name");
            String classify = request.getParameter("classify");
            String unit = request.getParameter("unit");
            String cellval = request.getParameter("cellval");
            String floorval = request.getParameter("floorval");
            String ismark = request.getParameter("ismark");
            String level = request.getParameter("level");

            DeviceDAO dao = new DeviceDAOImpl();

            Integer maxdtid;
            Double dcellval = null;
            Double dfloorval = null;
            if (cellval.equals("")) {
                dcellval = Double.valueOf(cellval);
            }
            if (cellval.equals("")) {
                dfloorval = Double.valueOf(floorval);
            }

            Integer iismark = Integer.valueOf(ismark);
            String did = dao.getDeviceIDByName(dname);
            Integer ilevel = Integer.valueOf(level);

            Integer dtid = dao.getOneDeviceThresholdByNameAndLevel(name, level);
            Boolean rt = false;
            JSONObject jsonObject = new JSONObject();

            if (did.equals("")) {

                jsonObject.put("提示", "设备名称不存在！");

            } else {

                if (dtid.equals(0)) { //不存在
                    maxdtid = dao.getMaxThresholdId();
                    rt = dao.addThresholdInfo(did,maxdtid + 1, name, classify, unit, dcellval, dfloorval, iismark, ilevel);
                } else {  //存在 更新
                    rt = dao.updateThresholdInfo(did, dtid, name, classify, unit, dcellval, dfloorval, iismark, ilevel);
                }

                if(rt)
                    jsonObject.put("提示", "添加成功！");
                else
                    jsonObject.put("提示", "添加失败，请重试！");

            }

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
