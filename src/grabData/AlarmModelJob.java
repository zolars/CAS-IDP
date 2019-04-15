package grabData;

import Util.HBSessionDaoImpl;
import alarmUtil.AlarmUtil;
import hibernatePOJO.*;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import sms.SmsUtil;
import smsplantform.smsPlantformService;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;


public class AlarmModelJob implements Job {

    private WebSocketClient client = null;

    private String getjkzbm(int cid) {

//        if(cid >= 0 && cid <= 21){
//            return "transientEvents"; //
//        } else
        if (cid >= 24 && cid <= 26) {
            return "currentHarmonicOvershoot"; //
        } else if (cid >= 174 && cid <= 176) {
            return "voltageHarmonicOvershoot"; //
        } else if (cid >= 324 && cid <= 329) {
            return "voltageDeviationOvershoot"; //
        } else if (cid >= 22 && cid <= 23) {
            return "frequencyLimit"; //
        } else if (cid == 336) {
            return "unbalanceBeyondLimit"; //
        }
        return "";
    }

    private String getjkzbmwd(int cid) {

        if (cid >= 344 && cid <= 347) {
            return "temperatureLimit"; //
        } else {
            return "";
        }
    }

    private String getjkzbmctrl(int cid) {

        if (cid == 4) {
            return "hardwareOvervoltage"; //
        } else if (cid == 5) {
            return "hardwareOvercurrent"; //
        } else if (cid == 6) {
            return "hardwareOverheating"; //
        } else if (cid == 13) {
            return "gridVoltageAnomaly"; //
        } else if (cid == 27) {
            return "outputOvercurrent"; //
        } else if (cid == 28) {
            return "abnormalCommunication"; //
        }
        return "";
    }

    /**
     * 判断当前日期是否为工作日时段
     *
     * @param
     * @return true 周一到周五; false 周末
     * @Exception 发生异常
     */
    public boolean isWorkTime(String pTime) {
        Boolean rt1 = false, rt2 = false;
        try {
            String dstr[] = pTime.split(" ");
            String day = dstr[0];
            String time = dstr[1];

            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Calendar c = Calendar.getInstance();
            c.setTime(format.parse(day));
            int dayForWeek = 0;
            if (c.get(Calendar.DAY_OF_WEEK) == 1) {
                dayForWeek = 7;
            } else {
                dayForWeek = c.get(Calendar.DAY_OF_WEEK) - 1;
            }
            //获取时间
            String formattime = "yyyy-MM-dd HH:mm:ss:SS";
            Date nowTime = new SimpleDateFormat(formattime).parse(pTime);

            Date startTime = new SimpleDateFormat(formattime).parse(day + " 08:00:00:000");
            Date endTime = new SimpleDateFormat(formattime).parse(day + " 18:00:00:000");

            if (nowTime.getTime() == startTime.getTime() || nowTime.getTime() == endTime.getTime()) {
                rt2 = true;
            }
            Calendar date = Calendar.getInstance();
            date.setTime(nowTime);

            Calendar begin = Calendar.getInstance();
            begin.setTime(startTime);

            Calendar end = Calendar.getInstance();
            end.setTime(endTime);

            if (date.after(begin) && date.before(end)) {
                rt2 = true;
            } else {
                rt2 = false;
            }

            if (dayForWeek == 6 || dayForWeek == 7) {
                rt1 = false;
            } else {
                rt1 = true;
            }

        } catch (Exception e) {
            System.out.println(e.getClass());
            e.printStackTrace();
        }

        if (rt1 && rt2) {
            return true;
        } else {
            return false;
        }

    }

//    private List<String> getZbjInfo(String  zbjid,HBSessionDaoImpl hbsessionDao){
//        Smsplant dv = (Smsplant)hbsessionDao.getFirst("FROM smsplant WHERE did ='" + zbjid + "'");
//
//    return null;
//    }


    @Override
    /*
    读取当前时间之前的30分钟内的告警事件、
    并分别根据设定的告警方式、执行短信、弹窗、平台告警
     */ public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        List<EventPower> eventpowerlist = new ArrayList<>();
        List<EventEnvironment> eventenvironmentlist = new ArrayList<>();
        List<EventCtrl> eventctrllist = new ArrayList<>();
        List<EventsType> typelist = new ArrayList<>();
        List<DictionaryCtrl> ctrltypelist = new ArrayList<>();
        List<DevicesThreshold> thresholdlist = new ArrayList<>();
        List<String> allalarmstring = new ArrayList<>();

        List<List<String>> dxptstring = new ArrayList<>();///duanxinpingtai

        try {
            System.out.println("开始执行告警模块:" + System.currentTimeMillis());

            HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());
            calendar.add(Calendar.MINUTE, -3);   // 让分钟减少3
            String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());

            Calendar calendarnow = Calendar.getInstance();
            calendarnow.setTime(new Date());
            calendarnow.set(Calendar.MINUTE, calendar.get(Calendar.MINUTE));
            String nowtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS").format(calendar.getTime());


            //1.1.获得当前市行的30分钟内的告警事件-电能事件
            //1.2.查询各个事件的告警方式、告警用户、告警时间范围
            //通过event_power.cid 找到 events_type中的type， 通过type 找到 device_threshold中的3条不同等级的记录，对应不同的tvalue[]
            //比较event_power.value 与 tvalue[] ，确定是哪一个等级的事件。tlevel
            //根据tlevel（0：不执行 1：弹窗 2：弹窗+短信/短信平台（工作日） 3.弹窗+短信/短信平台（全天））执行相应的告警

            Integer tlevel = 0;
            //读取当前时段（当前时刻到3分钟前）的电能事件时，查询其中是否存在一条value=0且事件类型为上述事件类型时，舍弃其他事件，只报该条事件。
            eventpowerlist = hbsessionDao.search("FROM EventPower where time >'" + date + "' and signature is null");

            if (eventpowerlist != null) {
                for (int i = 0; i < eventpowerlist.size(); i++) {
                    String did = eventpowerlist.get(i).getDid();
                    Integer cid = eventpowerlist.get(i).getCid();
                    Double value = eventpowerlist.get(i).getValue(); //220为基准值
                    Timestamp timestamp = eventpowerlist.get(i).getTime();
                    String timestr = timestamp.toString();
                    String time = timestr.substring(11, 19);

                    Devices dv = (Devices) hbsessionDao.getFirst("FROM Devices WHERE did ='" + did + "'");
                    if (dv.getIsSms() == 0) {
                        continue;
                    }
                    String dname = "【" + dv.getName() + "】";

                    typelist = hbsessionDao.search("From EventsType where cid ='" + cid + "'");

                    if (typelist == null) {
                        break;
                    } else {
                        //读取当前时段（当前时刻到3分钟前）的电能事件时，查询其中是否存在一条value=0且事件类型为上述事件类型时，舍弃其他事件，只报该条事件。
                        if (value.equals(0.00) && (cid.equals(350) || cid.equals(349))) {

                            String description = typelist.get(0).getDescription();
                            String preContent = "";
                            String uidstr = "";
                            String alarmString = dname;

                            List<DeviceAlarmUser> aulist =
                                    hbsessionDao.search(" from DeviceAlarmUser where level='" + tlevel + "'");

                            if (aulist != null) {
                                preContent = (String) aulist.get(0).getPrecontent();
                                uidstr = aulist.get(0).getUid();

                                String uidset[] = uidstr.split("，");

                                for (String uid : uidset) {
                                    List<User> userlist = hbsessionDao.search(" from User where uid='" + uid + "'");

                                    if (userlist != null) {
                                        //替换precontent中的事件类型# 值$ 时间% 三个信息
                                        String alarmString1 = preContent.replaceAll("#", description);
                                        String alarmString2 = alarmString1.replaceAll("&", value.toString());
                                        alarmString += alarmString2.replaceAll("%", time.toString());

                                        allalarmstring.add("\n");
                                        allalarmstring.add(alarmString);
                                    }
                                }
                            }
                        } else {
                            String type = typelist.get(0).getType();
                            String description = typelist.get(0).getDescription();

                            thresholdlist = hbsessionDao.search("From DevicesThreshold where type ='" + type + "' and" +
                                    " ismark = '1' order by level desc");

                            if (thresholdlist != null) {

                                for (int j = 0; j < thresholdlist.size(); j++) {

                                    Double fval = thresholdlist.get(j).getFloorval();
                                    Double cval = thresholdlist.get(j).getCellval();

                                    if (fval != null) {
                                        if (value < fval) {
                                            tlevel = thresholdlist.get(j).getLevel();
                                            break;
                                        }
                                    } else if (cval != null) {
                                        if (value > cval) {
                                            tlevel = thresholdlist.get(j).getLevel();
                                            break;
                                        }
                                    }
                                }

                                String preContent = "";
                                String uidstr = "";
                                String alarmString = dname;

                                List<DeviceAlarmUser> aulist = hbsessionDao.search(" from DeviceAlarmUser where " +
                                        "level='" + tlevel + "'");

                                if (aulist != null) {
                                    preContent = (String) aulist.get(0).getPrecontent();
                                    uidstr = aulist.get(0).getUid();

                                    String uidset[] = uidstr.split("，");

                                    for (String uid : uidset) {
                                        List<User> userlist = hbsessionDao.search(" from User where uid='" + uid + "'");

                                        if (userlist != null) {
                                            //替换precontent中的事件类型# 值$ 时间% 三个信息
                                            String alarmString1 = preContent.replaceAll("#", description);
                                            String alarmString2 = alarmString1.replaceAll("&", value.toString());
                                            alarmString += alarmString2.replaceAll("%", time.toString());

                                            allalarmstring.add("\n");
                                            allalarmstring.add(alarmString);

                                            //dxpt
                                            int zbj = typelist.get(0).getZbj();
                                            String syslevel = tlevel.toString();

                                            Smsplant smsplant = (Smsplant) hbsessionDao.getFirst(" from Smsplant " +
                                                    "where id='" + zbj + "'");
                                            Smsplantlevel smsplantlevel = (Smsplantlevel) hbsessionDao.getFirst(" " +
                                                    "from Smsplantlevel where syslevel like '%" + syslevel + "%'");

                                            if (!smsplant.equals("") && !smsplantlevel.equals("")) {

                                                int plantlevel = smsplantlevel.getPlantlevel();

                                                List<String> dxptstr = new ArrayList<>();

                                                dxptstr.add(smsplant.getBwt()); //bwt
                                                dxptstr.add(smsplant.getSbname()); //sbname
                                                dxptstr.add(smsplant.getSbip()); //sbip

                                                /// //time
                                                dxptstr.add(String.valueOf(plantlevel)); // //level

                                                dxptstr.add(smsplant.getStatus()); //status
                                                dxptstr.add(smsplant.getGjpro()); //gipro
                                                dxptstr.add(dname); //gjexp
                                                dxptstr.add(smsplant.getZbj());  //zbj
                                                dxptstr.add(smsplant.getExt1());  //ext1
                                                dxptstr.add(smsplant.getExt2());  //ext2
                                                dxptstr.add(smsplant.getExt3());  //ext3

                                                dxptstr.add(alarmString); //content

                                                dxptstring.add(dxptstr);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            //2.1.环境事件
            //2.2.查询各个事件的告警方式、告警用户、告警时间范围
            eventenvironmentlist = hbsessionDao.search("FROM EventEnvironment where time >'" + date + "' and " +
                    "(signature ='' or signature is null)");

            if (eventenvironmentlist != null) {
                for (int i = 0; i < eventenvironmentlist.size(); i++) {
                    String did = eventenvironmentlist.get(i).getDid();
                    Integer cid = eventenvironmentlist.get(i).getCid();
                    Double value = eventenvironmentlist.get(i).getValue();
                    Timestamp timestamp = eventenvironmentlist.get(i).getTime();
                    String timestr = timestamp.toString();
                    String time = timestr.substring(11, 19);

                    Devices dv = (Devices) hbsessionDao.getFirst("FROM Devices WHERE did ='" + did + "'");
                    if (dv.getIsSms() == 0) {
                        continue;
                    }
                    String dname = "【" + dv.getName() + "】";

                    typelist = hbsessionDao.search("From EventsType where cid ='" + cid + "'");

                    if (typelist == null) {
                        break;
                    } else {
                        String type = typelist.get(0).getType();
                        String description = typelist.get(0).getDescription();

                        thresholdlist = hbsessionDao.search("From DevicesThreshold where type ='" + type + "' and " +
                                "ismark = '1' order by level desc");

                        if (thresholdlist != null) {

                            for (int j = 0; j < thresholdlist.size(); j++) {

                                Double fval = thresholdlist.get(j).getFloorval();
                                Double cval = thresholdlist.get(j).getCellval();

                                if (fval != null) {
                                    if (value < fval) {
                                        tlevel = thresholdlist.get(j).getLevel();
                                        break;
                                    }
                                } else if (cval != null) {
                                    if (value > cval) {
                                        tlevel = thresholdlist.get(j).getLevel();
                                        break;
                                    }
                                }
                            }

                            value = (double) Math.round(value * 100) / 100; //保留两位 四舍五入

                            String preContent = "";
                            String uidstr = "";
                            String alarmString = dname;

                            List<DeviceAlarmUser> aulist =
                                    hbsessionDao.search(" from DeviceAlarmUser where level='" + tlevel + "'");

                            if (aulist != null) {
                                preContent = (String) aulist.get(0).getPrecontent();
                                uidstr = aulist.get(0).getUid();

                                String uidset[] = uidstr.split("，");

                                for (String uid : uidset) {
                                    List<User> userlist = hbsessionDao.search(" from User where uid='" + uid + "'");

                                    if (userlist != null) {
                                        //替换precontent中的事件类型# 值$ 时间% 三个信息
                                        String alarmString1 = preContent.replaceAll("#", description);
                                        String alarmString2 = alarmString1.replaceAll("&", value.toString());
                                        alarmString += alarmString2.replaceAll("%", time.toString());

                                        allalarmstring.add("\n");
                                        allalarmstring.add(alarmString);

                                        //dxpt
                                        int zbj = typelist.get(0).getZbj();
                                        String syslevel = tlevel.toString();

                                        Smsplant smsplant = (Smsplant) hbsessionDao.getFirst(" from Smsplant where " +
                                                "id='" + zbj + "'");
                                        Smsplantlevel smsplantlevel = (Smsplantlevel) hbsessionDao.getFirst(" from " +
                                                "Smsplantlevel where syslevel like '%" + syslevel + "%'");

                                        if (smsplant != null && smsplantlevel != null) {

                                            int plantlevel = smsplantlevel.getPlantlevel();

                                            List<String> dxptstr = new ArrayList<>();

                                            dxptstr.add(smsplant.getBwt()); //bwt
                                            dxptstr.add(smsplant.getSbname()); //sbname
                                            dxptstr.add(smsplant.getSbip()); //sbip

                                            /// //time
                                            dxptstr.add(String.valueOf(plantlevel)); // //level

                                            dxptstr.add(smsplant.getStatus()); //status
                                            dxptstr.add(smsplant.getGjpro()); //gipro
                                            dxptstr.add(dname); //gjexp
                                            dxptstr.add(smsplant.getZbj());  //zbj
                                            dxptstr.add(smsplant.getExt1());  //ext1
                                            dxptstr.add(smsplant.getExt2());  //ext2
                                            dxptstr.add(smsplant.getExt3());  //ext3

                                            dxptstr.add(alarmString); //content

                                            dxptstring.add(dxptstr);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }


            //3.1.设备（治理）事件
            //3.2.查询各个事件的告警方式、告警用户、告警时间范围
            eventctrllist = hbsessionDao.search("FROM EventCtrl where time >'" + date + "' and signature is null");

            if (eventctrllist != null) {
                for (int i = 0; i < eventctrllist.size(); i++) {
                    String did = eventctrllist.get(i).getDid();
                    Integer id = eventctrllist.get(i).getCid();
                    Timestamp timestamp = eventctrllist.get(i).getTime();
                    String timestr = timestamp.toString();
                    String time = timestr.substring(11, 19);

                    Devices dv = (Devices) hbsessionDao.getFirst("FROM Devices WHERE did ='" + did + "'");
                    if (dv.getIsSms() == 0) {
                        continue;
                    }
                    String dname = "【" + dv.getName() + "】";

                    ctrltypelist = hbsessionDao.search("From DictionaryCtrl where id ='" + id + "'");

                    if (ctrltypelist == null) {
                        break;
                    } else {
                        String description = ctrltypelist.get(0).getDescription();
                        tlevel = 3; //治理设备默认告警级别为3等级
                        String value = ctrltypelist.get(0).getForFalse();


                        String preContent = "";
                        String uidstr = "";
                        String alarmString = dname;

                        List<DeviceAlarmUser> aulist =
                                hbsessionDao.search(" from DeviceAlarmUser where level='" + tlevel + "'");

                        if (aulist != null) {
                            preContent = (String) aulist.get(0).getPrecontent();
                            uidstr = aulist.get(0).getUid();

                            String uidset[] = uidstr.split("，");

                            for (String uid : uidset) {
                                List<User> userlist = hbsessionDao.search(" from User where uid='" + uid + "'");

                                if (userlist != null) {
                                    //替换precontent中的事件类型# 值$ 时间% 三个信息
                                    String alarmString1 = preContent.replaceAll("#", description);
                                    String alarmString2 = alarmString1.replaceAll("&", value.toString());
                                    alarmString += alarmString2.replaceAll("%", time.toString());

                                    allalarmstring.add("\n");
                                    allalarmstring.add(alarmString);

                                    //dxpt
                                    String zbj = ctrltypelist.get(0).getZbj();
                                    String syslevel = tlevel.toString();

                                    Smsplantlevel smsplantlevel = (Smsplantlevel) hbsessionDao.getFirst(" from " +
                                            "Smsplantlevel where syslevel like '%" + syslevel + "%'");
                                    Smsplant smsplant =
                                            (Smsplant) hbsessionDao.getFirst(" from Smsplant where id='" + zbj + "'");

                                    if (smsplant != null && smsplantlevel != null) {

                                        int plantlevel = smsplantlevel.getPlantlevel();

                                        List<String> dxptstr = new ArrayList<>();

                                        dxptstr.add(smsplant.getBwt()); //bwt
                                        dxptstr.add(smsplant.getSbname()); //sbname
                                        dxptstr.add(smsplant.getSbip()); //sbip

                                        /// //time
                                        dxptstr.add(String.valueOf(plantlevel)); // //level

                                        dxptstr.add(smsplant.getStatus()); //status
                                        dxptstr.add(smsplant.getGjpro()); //gipro
                                        dxptstr.add(dname); //gjexp
                                        dxptstr.add(smsplant.getZbj());  //zbj
                                        dxptstr.add(smsplant.getExt1());  //ext1
                                        dxptstr.add(smsplant.getExt2());  //ext2
                                        dxptstr.add(smsplant.getExt3());  //ext3

                                        dxptstr.add(alarmString); //content

                                        dxptstring.add(dxptstr);
                                    }
                                }
                            }
                        }
                    }
                }
            }


            // 执行告警开始
            Integer isSms = 0;
            Integer isAlart = 0;
            Integer isPlartform = 0;
            String timeperiod = "";
            String uidstr = "";
            String govtelephone = "";
            String telephone = "";
            List<DeviceAlarmUser> aulist = hbsessionDao.search(" from DeviceAlarmUser where level='" + tlevel + "'");

            if (aulist != null) {
                isSms = (Integer) aulist.get(0).getIsSms();
                isAlart = (Integer) aulist.get(0).getIsAlert();
                isPlartform = (Integer) aulist.get(0).getIsPlantform();
                timeperiod = (String) aulist.get(0).getTimeperiod();
                uidstr = aulist.get(0).getUid();

                String uidset[] = uidstr.split("，");

                for (String uid : uidset) {
                    List<User> userlist = hbsessionDao.search(" from User where uid='" + uid + "'");

                    if (userlist != null) {
                        govtelephone = userlist.get(0).getGovtelephone();
                        telephone = userlist.get(0).getTelephone();

                        //执行告警开始
                        if (isAlart == 1) { //执行弹窗报警
                            AlarmUtil.sendMsg(allalarmstring.toString());
//                        // 与端口建立连接并发送示例告警信息
//                        try {
//                             client = new WebSocketClient("ws://localhost:9999/ws");
//                             client.send(allalarmstring.toString());
//                             client.close();
//                        } catch (Exception e) {
//                            e.printStackTrace();
//                        }
                        }
                        if (timeperiod == "1") { //若是第二等级,即timeperiod == 1
                            if (isWorkTime(nowtime)) {
                                if (isSms == 1) { //执行短信报警
                                    if (!govtelephone.equals("") && !govtelephone.equals(" ") && !govtelephone.equals(null)) {

                                        String allalarmstri = allalarmstring.toString();
                                        allalarmstri = allalarmstri.replaceAll("\n", "");
                                        allalarmstri = allalarmstri.replaceAll(",", "");
                                        allalarmstri = allalarmstri.replaceAll(" ", "");

                                        SmsUtil.sendSms(govtelephone, allalarmstri);
                                    }
                                    if (!telephone.equals("") && !telephone.equals(" ") && !telephone.equals(null)) {

                                        String allalarmstri = allalarmstring.toString();
                                        allalarmstri = allalarmstri.replaceAll("\n", "");
                                        allalarmstri = allalarmstri.replaceAll(",", "");
                                        allalarmstri = allalarmstri.replaceAll(" ", "");

                                        SmsUtil.sendSms(govtelephone, allalarmstri);
                                    }
                                }
                                if (isPlartform == 1) { //执行平台报警
                                    smsPlantformService sp = new smsPlantformService();
                                    String time = Long.toString(new Date().getTime());

                                    for (int i = 0; i < dxptstring.size(); i++) {
                                        String bwt = dxptstring.get(i).get(0);
                                        String sbname = dxptstring.get(i).get(1);
                                        String sbip = dxptstring.get(i).get(2);
                                        //time
                                        String level = dxptstring.get(i).get(3);
                                        String status = dxptstring.get(i).get(4);
                                        String gjpro = dxptstring.get(i).get(5);
                                        String gjexp = dxptstring.get(i).get(6);
                                        String zbj = dxptstring.get(i).get(7);
                                        String content = dxptstring.get(i).get(11);
                                        String ext1 = dxptstring.get(i).get(8);
                                        String ext2 = dxptstring.get(i).get(9);
                                        String ext3 = dxptstring.get(i).get(10);

                                        sp.execute(bwt, sbname, sbip, time, level, status, gjpro, gjexp, zbj, content
                                                , ext1, ext2, ext3);
                                    }
                                }
                            }
                        } else { //非第二等级
                            /*if (isSms == 1) { //执行短信报警
                                if (!govtelephone.equals("") && !govtelephone.equals(" ") && !govtelephone.equals
                                (null)) {

                                    String allalarmstri = allalarmstring.toString();
                                    allalarmstri = allalarmstri.replaceAll("\n","");
                                    allalarmstri = allalarmstri.replaceAll(",","");
                                    allalarmstri = allalarmstri.replaceAll(" ","");

                                    SmsUtil.sendSms(govtelephone, allalarmstri);
                                }
                                if (!telephone.equals("") && !telephone.equals(" ") && !telephone.equals(null)) {

                                    String allalarmstri = allalarmstring.toString();
                                    allalarmstri = allalarmstri.replaceAll("\n","");
                                    allalarmstri = allalarmstri.replaceAll(",","");
                                    allalarmstri = allalarmstri.replaceAll(" ","");

                                    SmsUtil.sendSms(govtelephone, allalarmstri);
                                }
                            }*/
                            if (isPlartform == 1) { //执行平台报警
                                smsPlantformService sp = new smsPlantformService();
                                String time = Long.toString(new Date().getTime());

                                for (int i = 0; i < dxptstring.size(); i++) {
                                    String bwt = dxptstring.get(i).get(0);
                                    String sbname = dxptstring.get(i).get(1);
                                    String sbip = dxptstring.get(i).get(2);
                                    //time
                                    String level = dxptstring.get(i).get(3);
                                    String status = dxptstring.get(i).get(4);
                                    String gjpro = dxptstring.get(i).get(5);
                                    String gjexp = dxptstring.get(i).get(6);
                                    String zbj = dxptstring.get(i).get(7);
                                    String content = dxptstring.get(i).get(11);
                                    String ext1 = dxptstring.get(i).get(8);
                                    String ext2 = dxptstring.get(i).get(9);
                                    String ext3 = dxptstring.get(i).get(10);

                                    sp.execute(bwt, sbname, sbip, time, level, status, gjpro, gjexp, zbj, content,
                                            ext1, ext2, ext3);
                                }
                            }
                        }
                    }
                }
            }
            //执行告警结束
            System.out.println("完成告警模块:" + System.currentTimeMillis());

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            eventpowerlist = null;
            eventenvironmentlist = null;
            eventctrllist = null;
            typelist = null;
            ctrltypelist = null;
            thresholdlist = null;
            allalarmstring = null;
            dxptstring = null;
        }
    }

    private static String getHostIp() {
        try {
            Enumeration<NetworkInterface> allNetInterfaces = NetworkInterface.getNetworkInterfaces();
            while (allNetInterfaces.hasMoreElements()) {
                NetworkInterface netInterface = (NetworkInterface) allNetInterfaces.nextElement();
                Enumeration<InetAddress> addresses = netInterface.getInetAddresses();
                while (addresses.hasMoreElements()) {
                    InetAddress ip = (InetAddress) addresses.nextElement();
                    if (ip != null && ip instanceof Inet4Address && !ip.isLoopbackAddress() //loopback地址即本机地址，IPv4
                            // 的loopback范围是127.0.0.0 ~ 127.255.255.255
                            && ip.getHostAddress().indexOf(":") == -1) {
                        System.out.println("本机的IP = " + ip.getHostAddress());
                        return ip.getHostAddress();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
