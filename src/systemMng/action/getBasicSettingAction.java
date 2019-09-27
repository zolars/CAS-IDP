package systemMng.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;
import systemMng.dao.RolesPermissionDAO;
import systemMng.dao.impl.RolesPermissionDAOImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


public class getBasicSettingAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 查询趋势图刷新频率信息
     */
    public String execute() throws Exception {
        List<Integer> list = new ArrayList<>();
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            RolesPermissionDAO dao = new RolesPermissionDAOImpl();

            list = dao.getbasicsetting();

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("basiclist", list);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        } finally {
            list = null;
        }
        return "success";
    }

}
