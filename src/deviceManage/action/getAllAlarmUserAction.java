package deviceManage.action;

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


    /* 根据设备名称查询设备告警人员信息
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String devicename = request.getParameter("devicename");

            DeviceDAO dao = new DeviceDAOImpl();

            List<DeviceAlarmUser> alrmlist = new ArrayList();
            List<String> alrmnamelist = new ArrayList();

            alrmlist = dao.getDeviceAlarmUserDataByName(devicename);

            for(int i = 0; i< alrmlist.size(); i++){
                DeviceAlarmUser tmpau = alrmlist.get(i);
                String usrid = tmpau.getUid();

                UserDAO usrdao = new UserDAOImpl();
                User user = usrdao.getOneUserInfo(usrid);

                String uname = user.getUname();

                alrmnamelist.add(uname);
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alarmusers", alrmlist);
            jsonObject.put("alarmusersname", alrmnamelist);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
