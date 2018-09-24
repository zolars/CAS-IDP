package sms;

import Util.HBSessionDaoImpl;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import hibernatePOJO.EventPower;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;


public class getAlert extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private JSONObject result;

    public JSONObject getResult() {
        return result;
    }

    public void setResult(JSONObject result) {
        this.result = result;
    }

    public String execute() throws Exception {
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            List<String> alertlist = new ArrayList<>();

            System.out.println("开始执行告警(弹窗)模块:" + System.currentTimeMillis());

            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());
            calendar.set(Calendar.MINUTE, calendar.get(Calendar.MINUTE) - 15);// 让分钟减少15
            String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

            //1.获得当前市行的15分钟内的告警事件（分为四类：）
            List<EventPower> alrmtranslist = hbsessionDao.search(
                    "FROM EventTransient where time >'"+ date +"'");


            //2.查询各个事件的告警方式、告警用户、告警时间范围
            if(alrmtranslist != null){
                for(int i = 0; i < alrmtranslist.size(); i++){
                    String did = alrmtranslist.get(i).getDid();
                    String msgstr = "";//alrmtranslist.get(i).getDiscription();

                    List<Object> allist = new ArrayList<>();

                    allist = hbsessionDao.search(
                            "select ta.isSms,ta.isAlart, ta.isPlartform, tc.telephone, tb.stime, tb.etime, ta.did from Devices as ta, DeviceAlarmUser as tb, User as tc where ta.did ='"+ did +"'and tb.did ='"+ did + "' and tb.uid = tc.uid");

                    if(allist.size() > 0){
                        Object[] objects=(Object[])allist.get(0);
                       /* Integer isSms =  (Integer)objects[0];*/
                        Integer isAlart =  (Integer)objects[1];
                       /* Integer isPlartform =  (Integer)objects[2];
                        String telephone =  (String)objects[3];*/
                        Timestamp starttime =  (Timestamp)objects[4];
                        Timestamp endtime =  (Timestamp)objects[5];

                        if(isAlart== 1){ //执行弹窗报警
                            System.out.println("执行弹窗报警");
                            alertlist.add(msgstr);
                        }
                    }
                }
            }


            System.out.println("完成告警(弹窗)模块:" + System.currentTimeMillis());
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("alert", alertlist);

            result = jsonObject;

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";
    }
}
