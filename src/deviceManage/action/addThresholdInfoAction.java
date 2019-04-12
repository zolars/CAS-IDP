package deviceManage.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import deviceManage.dao.DeviceDAO;
import deviceManage.dao.impl.DeviceDAOImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class addThresholdInfoAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getDidByName(String name) {
        if (name.equals("频率上限值")) {
            return "4";
        } else if (name.equals("频率下限值")) {
            return "5";
        } else if (name.equals("电压偏差越上限")) {
            return "9";
        } else if (name.equals("电压偏差越下限")) {
            return "8";
        } else if (name.equals("短时闪变")) {
            return "10";
        } else if (name.equals("长时闪变")) {
            return "11";
        } else if (name.equals("三相电压负序不平衡度")) {
            return "112";
        } else if (name.equals("电压暂升阈值")) {
            return "2";
        } else if (name.equals("电压暂降阈值")) {
            return "1";
        } else if (name.equals("电压短时中断阈值")) {
            return "3";
        } else if (name.equals("电压总谐波含有率")) {
            return "7";
        } else if (name.equals("电流总谐波含有率")) {
            return "6";
        } else if (name.equals("电压总谐波含有率限值2")) {
            return "62";
        } else if (name.equals("电压总谐波含有率限值3")) {
            return "63";
        } else if (name.equals("电压总谐波含有率限值4")) {
            return "64";
        } else if (name.equals("电压总谐波含有率限值5")) {
            return "65";
        } else if (name.equals("电压总谐波含有率限值6")) {
            return "66";
        } else if (name.equals("电压总谐波含有率限值7")) {
            return "67";
        } else if (name.equals("电压总谐波含有率限值8")) {
            return "68";
        } else if (name.equals("电压总谐波含有率限值9")) {
            return "69";
        } else if (name.equals("电压总谐波含有率限值10")) {
            return "70";
        } else if (name.equals("电压总谐波含有率限值11")) {
            return "71";
        } else if (name.equals("电压总谐波含有率限值12")) {
            return "72";
        } else if (name.equals("电压总谐波含有率限值13")) {
            return "73";
        } else if (name.equals("电压总谐波含有率限值14")) {
            return "74";
        } else if (name.equals("电压总谐波含有率限值15")) {
            return "75";
        } else if (name.equals("电压总谐波含有率限值16")) {
            return "76";
        } else if (name.equals("电压总谐波含有率限值17")) {
            return "77";
        } else if (name.equals("电压总谐波含有率限值18")) {
            return "78";
        } else if (name.equals("电压总谐波含有率限值19")) {
            return "79";
        } else if (name.equals("电压总谐波含有率限值20")) {
            return "80";
        } else if (name.equals("电压总谐波含有率限值21")) {
            return "81";
        } else if (name.equals("电压总谐波含有率限值22")) {
            return "82";
        } else if (name.equals("电压总谐波含有率限值23")) {
            return "83";
        } else if (name.equals("电压总谐波含有率限值24")) {
            return "84";
        } else if (name.equals("电压总谐波含有率限值25")) {
            return "85";
        } else if (name.equals("电压总谐波含有率限值26")) {
            return "86";
        } else if (name.equals("电压总谐波含有率限值27")) {
            return "87";
        } else if (name.equals("电压总谐波含有率限值28")) {
            return "88";
        } else if (name.equals("电压总谐波含有率限值29")) {
            return "89";
        } else if (name.equals("电压总谐波含有率限值30")) {
            return "90";
        } else if (name.equals("电压总谐波含有率限值31")) {
            return "91";
        } else if (name.equals("电压总谐波含有率限值32")) {
            return "92";
        } else if (name.equals("电压总谐波含有率限值33")) {
            return "93";
        } else if (name.equals("电压总谐波含有率限值34")) {
            return "94";
        } else if (name.equals("电压总谐波含有率限值35")) {
            return "95";
        } else if (name.equals("电压总谐波含有率限值36")) {
            return "96";
        } else if (name.equals("电压总谐波含有率限值37")) {
            return "97";
        } else if (name.equals("电压总谐波含有率限值38")) {
            return "98";
        } else if (name.equals("电压总谐波含有率限值39")) {
            return "99";
        } else if (name.equals("电压总谐波含有率限值40")) {
            return "100";
        } else if (name.equals("电压总谐波含有率限值41")) {
            return "101";
        } else if (name.equals("电压总谐波含有率限值42")) {
            return "102";
        } else if (name.equals("电压总谐波含有率限值43")) {
            return "103";
        } else if (name.equals("电压总谐波含有率限值44")) {
            return "104";
        } else if (name.equals("电压总谐波含有率限值45")) {
            return "105";
        } else if (name.equals("电压总谐波含有率限值46")) {
            return "106";
        } else if (name.equals("电压总谐波含有率限值47")) {
            return "107";
        } else if (name.equals("电压总谐波含有率限值48")) {
            return "108";
        } else if (name.equals("电压总谐波含有率限值49")) {
            return "109";
        } else if (name.equals("电压总谐波含有率限值50")) {
            return "110";
        } else if (name.equals("电流总谐波有效值限值2")) {
            return "12";
        } else if (name.equals("电流总谐波有效值限值3")) {
            return "13";
        } else if (name.equals("电流总谐波有效值限值4")) {
            return "14";
        } else if (name.equals("电流总谐波有效值限值5")) {
            return "15";
        } else if (name.equals("电流总谐波有效值限值6")) {
            return "16";
        } else if (name.equals("电流总谐波有效值限值7")) {
            return "17";
        } else if (name.equals("电流总谐波有效值限值8")) {
            return "18";
        } else if (name.equals("电流总谐波有效值限值9")) {
            return "19";
        } else if (name.equals("电流总谐波有效值限值10")) {
            return "20";
        } else if (name.equals("电流总谐波有效值限值11")) {
            return "21";
        } else if (name.equals("电流总谐波有效值限值12")) {
            return "22";
        } else if (name.equals("电流总谐波有效值限值13")) {
            return "23";
        } else if (name.equals("电流总谐波有效值限值14")) {
            return "24";
        } else if (name.equals("电流总谐波有效值限值15")) {
            return "25";
        } else if (name.equals("电流总谐波有效值限值16")) {
            return "26";
        } else if (name.equals("电流总谐波有效值限值17")) {
            return "27";
        } else if (name.equals("电流总谐波有效值限值18")) {
            return "28";
        } else if (name.equals("电流总谐波有效值限值19")) {
            return "29";
        } else if (name.equals("电流总谐波有效值限值20")) {
            return "30";
        } else if (name.equals("电流总谐波有效值限值21")) {
            return "31";
        } else if (name.equals("电流总谐波有效值限值22")) {
            return "32";
        } else if (name.equals("电流总谐波有效值限值23")) {
            return "33";
        } else if (name.equals("电流总谐波有效值限值24")) {
            return "34";
        } else if (name.equals("电流总谐波有效值限值25")) {
            return "35";
        } else if (name.equals("电流总谐波有效值限值26")) {
            return "36";
        } else if (name.equals("电流总谐波有效值限值27")) {
            return "37";
        } else if (name.equals("电流总谐波有效值限值28")) {
            return "38";
        } else if (name.equals("电流总谐波有效值限值29")) {
            return "39";
        } else if (name.equals("电流总谐波有效值限值30")) {
            return "40";
        } else if (name.equals("电流总谐波有效值限值31")) {
            return "41";
        } else if (name.equals("电流总谐波有效值限值32")) {
            return "42";
        } else if (name.equals("电流总谐波有效值限值33")) {
            return "43";
        } else if (name.equals("电流总谐波有效值限值34")) {
            return "44";
        } else if (name.equals("电流总谐波有效值限值35")) {
            return "45";
        } else if (name.equals("电流总谐波有效值限值36")) {
            return "46";
        } else if (name.equals("电流总谐波有效值限值37")) {
            return "47";
        } else if (name.equals("电流总谐波有效值限值38")) {
            return "48";
        } else if (name.equals("电流总谐波有效值限值39")) {
            return "49";
        } else if (name.equals("电流总谐波有效值限值40")) {
            return "50";
        } else if (name.equals("电流总谐波有效值限值41")) {
            return "51";
        } else if (name.equals("电流总谐波有效值限值42")) {
            return "52";
        } else if (name.equals("电流总谐波有效值限值43")) {
            return "53";
        } else if (name.equals("电流总谐波有效值限值44")) {
            return "54";
        } else if (name.equals("电流总谐波有效值限值45")) {
            return "55";
        } else if (name.equals("电流总谐波有效值限值46")) {
            return "56";
        } else if (name.equals("电流总谐波有效值限值47")) {
            return "57";
        } else if (name.equals("电流总谐波有效值限值48")) {
            return "58";
        } else if (name.equals("电流总谐波有效值限值49")) {
            return "59";
        } else if (name.equals("电流总谐波有效值限值50")) {
            return "60";
        } else if (name.equals("温度过高")) {
            return "113";
        } else if (name.equals("温度过低")) {
            return "114";
        } else if (name.equals("湿度过高")) {
            return "115";
        } else if (name.equals("湿度过低")) {
            return "116";
        }
        return "0";
    }


    /* 添加一条限值
       先根据name和level查找表中是否存在三条或以下限值记录，若存在，则获取该id，并更新；
       否则，新建一条限值记录
     */
    public String execute() throws Exception {
        try { //获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");

            Boolean rt = false;
            JSONObject jsonObject = new JSONObject();

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
            if (!cellval.equals("")) {
                dcellval = Double.valueOf(cellval);
            }
            if (!floorval.equals("")) {
                dfloorval = Double.valueOf(floorval);
            }
            Integer iismark = Integer.valueOf(ismark);
            Integer ilevel = Integer.valueOf(level);
            String did = dao.getDeviceIDByName(dname);

            if (did.equals("")) {
                jsonObject.put("提示", "设备名称不存在！");
            } else {
                Integer dtid = dao.getOneDeviceThresholdByNameAndLevel(name, level);
                if (dtid.equals(0)) { //不存在的才插入，已存在的就只能修改
                    maxdtid = dao.getMaxThresholdId();
                    String type = getDidByName(name);
                    rt = dao.addThresholdInfo(did, maxdtid + 1, name, classify, unit, dcellval, dfloorval, iismark, ilevel, type);
                }

                if (rt) {
                    jsonObject.put("提示", "添加成功！");
                } else {
                    jsonObject.put("提示", "添加失败，请重试！");
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
