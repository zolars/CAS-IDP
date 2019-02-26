package efficiencyAnalysis.action;

import Util.ToHex;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import efficiencyAnalysis.dao.EventDAO;
import efficiencyAnalysis.dao.impl.EventDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class getCtrlDevicesAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    /* 获取治理设备的状态
     */
    public String execute() throws Exception {
        List<String> didlist = new ArrayList<>();    //返回did list 治理模块
        List<String> rtlist = new ArrayList<>();    //save device return information list
        List<String> namelist = new ArrayList<>();  //save device name list

        List<String> didlist2 = new ArrayList<>();    //返回did list 在线监控模块
        List<String> rtlist2 = new ArrayList<>();    //save device return information list
        List<String> namelist2 = new ArrayList<>();  //save device name list
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String cbname = request.getParameter("cbname");
//            String starttime = request.getParameter("stime");
//            String endtime = request.getParameter("etime");

            String starttime = ToHex.beforeNowTime(-60);
            String endtime = ToHex.beforeNowTime(0);
            EventDAO dao = new EventDAOImpl();

            //获取治理设备
            didlist = dao.getCtrlDevices(cbname);

            if(didlist != null) {
                for(int i = 0; i < didlist.size(); i++) {
                    String did = didlist.get(i);

                    String rt = dao.getDeviceCtrlStatus(did, starttime, endtime);
                    String name = dao.getDeviceNameCtrl(did);

                    rtlist.add(rt);
                    namelist.add(name);
                }
            }

            //获取在线监控设备
            didlist2 = dao.getIDPDevices(cbname);

            if(didlist2 != null) {
                for(int i = 0; i < didlist2.size(); i++) {
                    String did = didlist2.get(i);

                    String rt = dao.getDeviceIDPStatus(did, starttime, endtime);
                    String name = dao.getDeviceNameIDP(did);

                    rtlist2.add(rt);
                    namelist2.add(name);
                }
            }

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("didlist", didlist);
            jsonObject.put("rtlist", rtlist);
            jsonObject.put("namelist",namelist);

            jsonObject.put("didlist2", didlist2);
            jsonObject.put("rtlist2", rtlist2);
            jsonObject.put("namelist2",namelist2);

            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "failure";
        } finally {
            didlist = null;
            rtlist = null;
            namelist = null;
        }
        return "success";
    }

}
