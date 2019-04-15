package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceJobManager.DeviceManager;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class modifyOneDeviceAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 修改一个设备
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            String radioEthernet = request.getParameter("radioEthernet");
            String radioRS485 = request.getParameter("radioRS485");
            String radioRS232 = request.getParameter("radioRS232");
            String checkboxsms = request.getParameter("checkboxsms");
            String checkboxalert = request.getParameter("checkboxalert");
            String checkboxplantform = request.getParameter("checkboxplantform");
            String devname = request.getParameter("devname");
            String devtype = request.getParameter("devtype");
            String serialno = request.getParameter("serialno");
            String iPaddress = request.getParameter("IPaddress");
            String port = request.getParameter("port");
            String extra = request.getParameter("extra");

            String did = request.getParameter("did");

            DeviceDAO dao = new DeviceDAOImpl();

            String deviceType = "";

            if (radioEthernet != null) {
                deviceType = "以太网";
            } else if (radioRS485 != null) {
                deviceType = "RS485";
            } else if (radioRS232 != null) {
                deviceType = "RS232";
            }

            Integer sms = 0;
            Integer alert = 0;
            Integer plantform = 0;

            if (checkboxsms != null) {
                sms = 1;
            }
            if (checkboxalert != null) {
                alert = 1;
            }
            if (checkboxplantform != null) {
                plantform = 1;
            }

            Boolean rt2 = false, rt3 = false;
            JSONObject jsonObject = new JSONObject();


            //添加SMS平台
            if (devtype.equals("SMS")) {

                if (dao.modifyOneDeviceInfo(deviceType, devname, devtype, serialno, iPaddress, port, extra, sms,
                        alert, plantform, did)) {
                    jsonObject.put("提示", "修改成功！");
                } else {
                    jsonObject.put("提示", "修改失败，请重试！");
                }

            } else {
                rt2 = DeviceManager.checkNetwork(iPaddress, Integer.parseInt(port));

                if (rt2) {
                    rt3 = dao.modifyOneDeviceInfo(deviceType, devname, devtype, serialno, iPaddress, port, extra, sms
                            , alert, plantform, did);
                } else if (!rt2) {
                    jsonObject.put("提示", "设备不可达，修改失败！");
                }

                if (rt2 && rt3) {
                    jsonObject.put("提示", "修改成功！");
                    //type: 1-dataOnline, 2-transient, 3-overLimit, 4-threshold, 5-tempData, 6-ctrlData
                    if (devtype.equals("IDP")) {
                        DeviceManager.updateDevice(iPaddress, Integer.parseInt(port), did, 1);
                        if (extra.equals("")) {
                            DeviceManager.updateDevice(iPaddress, Integer.parseInt(extra), did, 2);
                            DeviceManager.updateDevice(iPaddress, Integer.parseInt(extra), did, 3);
                        }
                        DeviceManager.updateDevice(iPaddress, Integer.parseInt(port), did, 4);
                    } else if (devtype.equals("temp")) {
                        DeviceManager.updateDevice(iPaddress, Integer.parseInt(port), did, 5);
                    } else if (devtype.equals("ctrl")) {
                        DeviceManager.updateDevice(iPaddress, Integer.parseInt(port), did, 6);
                    }
                } else {
                    jsonObject.put("提示", "修改失败,请重试！");
                }
            }
            result = JSON.toJSONString(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
