package reportChart.dao.impl;

import Util.DBConnect;
import reportChart.dao.HarmonicVoltage;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.text.DecimalFormat;

public class HarmonicVoltageImpl implements HarmonicVoltage {

    public List getHVresultBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 1; i <= 49; i++) {
                for (int j = 1; j <= 3; j++) {
                    char state = (char) (96 + j);
                    List<Double> value = new ArrayList<>();
                   //String sql = "SELECT ep.value as value FROM event_power ep, events_type et WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'U" + state + "谐波含有率越限" + (i + 2) + "' AND ep.cid=et.cid ORDER BY ep.value";
                    String sql = "SELECT ep." + "U" + j + "xb_" + i + " as value FROM powerxb_monitor ep WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%'";

                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        Double dvalue = Double.parseDouble(svalue);
                        value.add(dvalue);
                    }
                    if (value.size() > 0) {
                        double max = getMax(value);
                        double min = getMin(value);
                        double ave = getAve(value);
                        double pro = get95p(value);
                        result.add((i + 2) + "," + state + "," + max + "," + min + "," + ave + "," + pro);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getHCresultBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 1; i <= 49; i++) {
                for (int j = 1; j <= 3; j++) {
                    char state = (char) (96 + j);
                    List<Double> value = new ArrayList<>();
                   // String sql = "SELECT ep.value as value FROM event_power ep, events_type et WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'I" + state + "谐波有效值越限" + (i + 2) + "' AND ep.cid=et.cid ORDER BY ep.value";
                    String sql = "SELECT ep." + "I" + j + "va_" + i + " as value FROM powerxb_monitor ep WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%'";

                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        Double dvalue = Double.parseDouble(svalue);
                        value.add(dvalue);
                    }
                    if (value.size() > 0) {
                        double max = getMax(value);
                        double min = getMin(value);
                        double ave = getAve(value);
                        double pro = get95p(value);
                        result.add((i + 2) + "," + state + "," + max + "," + min + "," + ave + "," + pro);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getHVthreshold() {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            for (int i = 0; i < 49; i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ds.value as value FROM devices_standard ds, events_type et WHERE et.description = 'U" + state + "谐波含有率越限" + (i + 2) + "' AND ds.cid=et.cid";

                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String value = rs.getString("value");
                        result.add((i + 3) + "," + state + "," +  value);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getHCthreshold() {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            for (int i = 0; i < 49; i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ds.value as value FROM devices_standard ds, events_type et WHERE et.description = 'I" + state + "谐波有效值越限" + (i + 2) + "' AND ds.cid=et.cid";

                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String value = rs.getString("value");
                        result.add((i + 3) + "," + state + "," +  value);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getVCfundBydt(String did, String time) {

        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        int u1_passnum = 0;
        int u2_passnum = 0;
        int u3_passnum = 0;
        int i1_passnum = 0;
        int i2_passnum = 0;
        int i3_passnum =0;

        try {
            List<Double> u1 = new ArrayList<>();
            List<Double> u2 = new ArrayList<>();
            List<Double> u3 = new ArrayList<>();
            List<Double> i1 = new ArrayList<>();
            List<Double> i2 = new ArrayList<>();
            List<Double> i3 = new ArrayList<>();
            String sql = "SELECT pm.U1 as u1, pm.U2 as u2, pm.U3 as u3, pm.I1 as i1, pm.I2 as i2, pm.I3 as i3 FROM powerparm_monitor pm WHERE pm.did = '" + did + "' AND pm.time LIKE'" + time + "%'";
            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String su1 = rs.getString("u1");
                String su2 = rs.getString("u2");
                String su3 = rs.getString("u3");
                String si1 = rs.getString("i1");
                String si2 = rs.getString("i2");
                String si3 = rs.getString("i3");
                Double du1 = Double.parseDouble(su1);
                Double du2 = Double.parseDouble(su2);
                Double du3 = Double.parseDouble(su3);
                Double di1 = Double.parseDouble(si1);
                Double di2 = Double.parseDouble(si2);
                Double di3 = Double.parseDouble(si3);

                if (du1 < 220) {
                    u1_passnum += 1;
                }
                if (du2 < 220) {
                    u2_passnum += 1;
                }
                if (du3 < 220) {
                    u3_passnum += 1;
                }
                if (di1 < 50) {
                    i1_passnum += 1;
                }
                if (di2 < 50) {
                    i2_passnum += 1;
                }
                if (di3 < 50) {
                    i3_passnum += 1;
                }
                u1.add(du1);
                u2.add(du2);
                u3.add(du3);
                i1.add(di1);
                i2.add(di2);
                i3.add(di3);
            }
            if (u1.size() > 0) {
                double u1_max = getMax(u1);
                double u1_min = getMin(u1);
                double u1_ave = getAve(u1);
                double u1_pro = get95p(u1);
                double temp_u1_rate = 100.0 * u1_passnum / u1.size();
                double u1_rate = Double.parseDouble(df.format(temp_u1_rate));
                if (u1_pro <= 220) {
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "合格" + "," + u1.size() + "," + u1_rate);
                } else {
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "不合格" + "," + u1.size() + "," + u1_rate);
                }
            }
            if (u2.size() > 0) {
                double u2_max = getMax(u2);
                double u2_min = getMin(u2);
                double u2_ave = getAve(u2);
                double u2_pro = get95p(u2);
                double temp_u2_rate = 100.0 * u2_passnum / u2.size();
                double u2_rate = Double.parseDouble(df.format(temp_u2_rate));
                if (u2_pro <= 220) {
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "合格" + "," + u2.size() + "," + u2_rate);
                } else {
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "不合格" + "," + u2.size() + "," + u2_rate);
                }
            }
            if (u3.size() > 0) {
                double u3_max = getMax(u3);
                double u3_min = getMin(u3);
                double u3_ave = getAve(u3);
                double u3_pro = get95p(u3);
                double temp_u3_rate = 100.0 * u3_passnum / u3.size();
                double u3_rate = Double.parseDouble(df.format(temp_u3_rate));
                if(u3_pro <= 220) {
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "合格" + "," + u3.size() + "," + u3_rate);
                } else {
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "不合格" + "," + u3.size() + "," + u3_rate);
                }
            }
            if (i1.size() > 0) {
                double i1_max = getMax(i1);
                double i1_min = getMin(i1);
                double i1_ave = getAve(i1);
                double i1_pro = get95p(i1);
                double temp_i1_rate = 100.0 * i1_passnum / i1.size();
                double i1_rate = Double.parseDouble(df.format(temp_i1_rate));
                if (i1_pro <= 50) {
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "合格" + "," + i1.size() + "," + i1_rate);
                } else {
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "不合格" + "," + i1.size() + "," + i1_rate);
                }
            }
            if (i2.size() > 0) {
                double i2_max = getMax(i2);
                double i2_min = getMin(i2);
                double i2_ave = getAve(i2);
                double i2_pro = get95p(i2);
                double temp_i2_rate = 100.0 * i2_passnum / i2.size();
                double i2_rate = Double.parseDouble(df.format(temp_i2_rate));
                if(i2_pro <= 50) {
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "合格" + "," + i2.size() + "," + i2_rate);
                } else {
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "不合格" + "," + i2.size() + "," + i2_rate);
                }
            }
            if (i3.size()>0) {
                double i3_max = getMax(i3);
                double i3_min = getMin(i3);
                double i3_ave = getAve(i3);
                double i3_pro = get95p(i3);
                double temp_i3_rate = 100.0 * i3_passnum / i3.size();
                double i3_rate = Double.parseDouble(df.format(temp_i3_rate));
                if (i3_pro <= 50) {
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "合格" + "," + i3.size() + "," + i3_rate);
                } else {
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "不合格" + "," + i3.size() + "," + i3_rate);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getHVrateBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
         
        try {
            for (int i = 0; i < 49; i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ep.value as value, ds.value as threshold FROM event_power ep, events_type et, devices_standard ds WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'U" + state + "谐波含有率越限" + (i + 2) + "' AND ep.cid = et.cid AND ep.cid = ds.cid";
                    int sum = 0;
                    int pass_num = 0;
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        String sthreshold = rs.getString("threshold");
                        Double dvalue = Double.parseDouble(svalue);
                        Double dthreshold = Double.parseDouble(sthreshold);
                        if (dvalue < dthreshold) {
                            pass_num += 1;
                        }
                        sum += 1;
                    }
                    if (sum == 0) {
                        result.add((i + 3) + "," + state + "," + sum + ",-");
                    } else {
                        double temp_pass_rate = pass_num * 100.0 / sum;
                        double pass_rate = Double.parseDouble(df.format(temp_pass_rate));
                        result.add((i + 3) + "," + state + "," + sum + "," + pass_rate);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getHCrateBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
         
        try {
            for (int i = 0; i < 49; i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ep.value as value, ds.value as threshold FROM event_power ep, events_type et, devices_standard ds WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'I" + state + "谐波有效值越限" + (i + 2) + "' AND ep.cid = et.cid AND ep.cid = ds.cid";
                    int sum = 0;
                    int pass_num = 0;
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        String sthreshold = rs.getString("threshold");
                        Double dvalue = Double.parseDouble(svalue);
                        Double dthreshold = Double.parseDouble(sthreshold);
                        if (dvalue < dthreshold) {
                            pass_num += 1;
                        }
                        sum += 1;
                    }
                    if (sum == 0) {
                        result.add((i + 3) + "," + state + "," + sum + ",-");
                    } else {
                        double temp_pass_rate = pass_num * 100.0 / sum;
                        double pass_rate = Double.parseDouble(df.format(temp_pass_rate));
                        result.add((i + 3) + "," + state + "," + sum + "," + pass_rate);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getHzBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        int passnum = 0;
        try {
            List<Double> hz = new ArrayList<>();
            String sql = "SELECT ppm.Hz as hz FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE'" + time + "%'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String shz = rs.getString("hz");
                Double dhz = Double.parseDouble(shz);
                if (dhz <= 50) {
                    passnum += 1;
                }
                hz.add(dhz);
            }
            if (hz.size() > 0) {
                double max = getMax(hz);
                double min = getMin(hz);
                double ave = getAve(hz);
                double pro = get95p(hz);
                double passRate = 100.0 * passnum / hz.size();
                result.add(max + "," + min + "," + ave + "," + pro + "," + hz.size() + "," + passRate);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getHzpcBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        int passnum = 0;
        try {
            List<Double> hzpc = new ArrayList<>();
            String sql = "SELECT ppm.Ifl_sum as hzpc FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE'" + time + "%'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String shzpc = rs.getString("hzpc");
                Double dhzpc = Double.parseDouble(shzpc);
                if (dhzpc <= 50) {
                    passnum += 1;
                }
                hzpc.add(dhzpc);
            }
            if (hzpc.size() > 0) {
                double max = getMax(hzpc);
                double min = getMin(hzpc);
                double ave = getAve(hzpc);
                double pro = get95p(hzpc);
                double passRate = 100.0 * passnum / hzpc.size();
                result.add(max + "," + min + "," + ave + "," + pro);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getsxdyBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            List<Double> sxdy = new ArrayList<>();
            String sql = "SELECT psm.Uunb as sxdy FROM powersxdy_monitor psm WHERE psm.did = '" + did + "' AND psm.time LIKE'" + time + "%'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String ssxdy = rs.getString("sxdy");
                Double dsxdy = Double.parseDouble(ssxdy);
                sxdy.add(dsxdy);
            }
            if (sxdy.size() > 0) {
                double max = getMax(sxdy);
                double min = getMin(sxdy);
                double ave = getAve(sxdy);
                double pro = get95p(sxdy);
                result.add(max + "," + min + "," + ave + "," + pro);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getsxdythreshold(String did) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            String sql = "SELECT dt.cellval as cellval FROM devices_threshold dt WHERE dt.did = '" + did + "' AND dt.name = '三相电压负序不平衡度' AND dt.level = '1'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String scellval = rs.getString("cellval");
                Double cellval = Double.parseDouble(scellval);
                result.add(cellval);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getDypcBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();

        try {
            for (int i = 0; i < 3; i++) {
                List<Double> dypc = new ArrayList<>();
                String sql = "SELECT ppm.Ifl_U" + (i + 1) + " as Ifl_U" + (i + 1) + " FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String sdypc = rs.getString("Ifl_U" + (i + 1));
                    Double ddypc = Double.parseDouble(sdypc);
                    dypc.add(ddypc);
                }
                if (dypc.size() > 0) {
                    double max = getMax(dypc);
                    double min = getMin(dypc);
                    double ave = getAve(dypc);
                    double pro = get95p(dypc);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getDypcthreshold(String did) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            Double cellval = null, cfloorval = null;


            String sql = "SELECT dt.cellval as cellval FROM devices_threshold dt WHERE dt.did = '" + did + "' AND dt.name = '电压偏差越上限' AND dt.level = '1'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String scellval = rs.getString("cellval");
                cellval = Double.parseDouble(scellval);
            }

            String sql2 = "SELECT dt.floorval as floorval FROM devices_threshold dt WHERE dt.did = '" + did + "' AND dt.name = '电压偏差越下限' AND dt.level = '1'";

            ps = db.getPs(sql2);
            rs = ps.executeQuery();
            while (rs.next()) {
                String sfloorval = rs.getString("floorval");
                cfloorval = Double.parseDouble(sfloorval);
            }

            result.add(cfloorval + "-" + cellval);

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getdsdysbBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 0; i < 3; i++) {
                List<Double> shortu = new ArrayList<>();
                String sql = "SELECT ppm.Pst_U" + (i + 1) + " as short_u" + (i + 1) + " FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String sshortu = rs.getString("short_u" + (i + 1));
                    Double dshortu = Double.parseDouble(sshortu);
                    shortu.add(dshortu);
                }
                if (shortu.size() > 0) {
                    double max = getMax(shortu);
                    double min = getMin(shortu);
                    double ave = getAve(shortu);
                    double pro = get95p(shortu);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getdsdysbthreshold(String did) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            String sql = "SELECT dt.cellval as cellval FROM devices_threshold dt WHERE dt.did = '" + did + "' AND dt.name = '短时闪变' AND dt.level = '1'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String scellval = rs.getString("cellval");
                Double cellval = Double.parseDouble(scellval);
                result.add(cellval);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getcsdysbBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 0; i < 3; i++) {
                List<Double> longu = new ArrayList<>();
                String sql = "SELECT ppm.Plt_U" + (i + 1) + " as long_u" + (i + 1) + " FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String slongu = rs.getString("long_u" + (i + 1));
                    Double dlongu = Double.parseDouble(slongu);
                    longu.add(dlongu);
                }
                if (longu.size() > 0) {
                    double max = getMax(longu);
                    double min = getMin(longu);
                    double ave = getAve(longu);
                    double pro = get95p(longu);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getcsdysbthreshold(String did) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            String sql = "SELECT dt.cellval as cellval FROM devices_threshold dt WHERE dt.did = '" + did + "' AND dt.name = '长时闪变' AND dt.level = '1'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String scellval = rs.getString("cellval");
                Double cellval = Double.parseDouble(scellval);
                result.add(cellval);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getActivePowerBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 0; i < 3; i++) {
                List<Double> activePower = new ArrayList<>();
                String sql = "SELECT ppm.P" + (i + 1) + " as activePower" + (i + 1) + " FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String sactivePower = rs.getString("activePower" + (i + 1));
                    Double dactivePower = Double.parseDouble(sactivePower);
                    activePower.add(dactivePower);
                }
                if (activePower.size() > 0) {
                    double max = getMax(activePower);
                    double min = getMin(activePower);
                    double ave = getAve(activePower);
                    double pro = get95p(activePower);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getReactivePowerBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 0; i < 3; i++) {
                List<Double> reactivePower = new ArrayList<>();
                String sql = "SELECT ppm.Q" + (i + 1) + " as reactivePower" + (i + 1) + " FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String sreactivePower = rs.getString("reactivePower" + (i + 1));
                    Double dreactivePower = Double.parseDouble(sreactivePower);
                    reactivePower.add(dreactivePower);
                }
                if (reactivePower.size() > 0) {
                    double max = getMax(reactivePower);
                    double min = getMin(reactivePower);
                    double ave = getAve(reactivePower);
                    double pro = get95p(reactivePower);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getPowerFactorBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 0; i < 3; i++) {
                List<Double> powerFactor = new ArrayList<>();
                String sql = "SELECT ppm.S" + (i + 1) + " as powerFactor" + (i + 1) + " FROM powerparm_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String spowerFactor = rs.getString("powerFactor" + (i + 1));
                    Double dpowerFactor = Double.parseDouble(spowerFactor);
                    powerFactor.add(dpowerFactor);
                }
                if (powerFactor.size() > 0) {
                    double max = getMax(powerFactor);
                    double min = getMin(powerFactor);
                    double ave = getAve(powerFactor);
                    double pro = get95p(powerFactor);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getthdUBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
         
        try {
            for (int i = 0; i < 3; i++) {
                List<Double> thd = new ArrayList<>();
                String sql = "SELECT ppm.THDU" + (i + 1) + " as thduFactor" + (i + 1) + " FROM powerxb_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String sthduFactor = rs.getString("thduFactor" + (i + 1));
                    Double dthduFactor = Double.parseDouble(sthduFactor);
                    thd.add(dthduFactor);
                }
                if (thd.size() > 0) {
                    double max = getMax(thd);
                    double min = getMin(thd);
                    double ave = getAve(thd);
                    double pro = get95p(thd);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getthdIBydt(String did, String time) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();

        try {
            for (int i = 0; i < 3; i++) {
                List<Double> thd = new ArrayList<>();
                String sql = "SELECT ppm.THDI" + (i + 1) + " as thdiFactor" + (i + 1) + " FROM powerxb_monitor ppm WHERE ppm.did = '" + did + "' AND ppm.time LIKE '" + time + "%'";
                ps = db.getPs(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String sthdiFactor = rs.getString("thdiFactor" + (i + 1));
                    Double dthdiFactor = Double.parseDouble(sthdiFactor);
                    thd.add(dthdiFactor);
                }
                if (thd.size() > 0) {
                    double max = getMax(thd);
                    double min = getMin(thd);
                    double ave = getAve(thd);
                    double pro = get95p(thd);
                    result.add((i + 1) + "," + max + "," + min + "," + ave + "," + pro);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getthduthreshold(String did) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            String sql = "SELECT ds.cellval as value FROM devices_threshold ds WHERE ds.name = '电压总谐波含有率' AND ds.level = '1' AND ds.did='" + did + "'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String value = rs.getString("value");
                result.add(value);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public List getthdithreshold(String did) {
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            String sql = "SELECT ds.cellval as value FROM devices_threshold ds WHERE ds.name = '电流总谐波含有率' AND ds.level = '1' AND ds.did='" + did + "'";

            ps = db.getPs(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String value = rs.getString("value");
                result.add(value);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    public double getMax(List<Double> value) {
        double max = value.get(0);
        for (double v:value) {
            if (v > max) {
                max = v;
            }
        }
        return max;
    }

    public double getMin(List<Double> value) {
        double min = value.get(0);
        for (double v:value) {
            if (v < min) {
                min = v;
            }
        }
        return min;
    }

    public double getAve(List<Double> value) {
        double sum = 0;
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        for (double v:value) {
            sum += v;
        }
        double temp_ave = sum / (value.size());
        double ave = Double.parseDouble(df.format(temp_ave));
        return ave;
    }

    public double get95p(List<Double> value) {
        int num = value.size();
        int threshold = (int) Math.floor(num * 0.95);
        Collections.sort(value);
        double pro = value.get(threshold);
        return pro;
    }
}