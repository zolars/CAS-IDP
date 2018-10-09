package systemMng.action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import hibernatePOJO.DeviceAlarmUser;
import hibernatePOJO.User;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


public class getAllAlarmUserAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }


    /* 查询all设备告警人员信息
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            DeviceDAO dao = new DeviceDAOImpl();

            List<DeviceAlarmUser> alrmlist = new ArrayList();
            List rtlist = new ArrayList();

            alrmlist = dao.getDeviceAlarmUserData();

            for(int i = 0; i< alrmlist.size(); i++){

                DeviceAlarmUser tmpau = alrmlist.get(i);

                String level = tmpau.getLevel().toString();
                String uidstr = tmpau.getUid();
                String uidset[] = uidstr.split("，");

                for(int j = 0; j < uidset.length; j++){
                    List<String> list = new ArrayList();
                    list.add(level);
                    list.add(uidset[j]);

                    rtlist.add(list);
                }
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alarmusers", rtlist);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
