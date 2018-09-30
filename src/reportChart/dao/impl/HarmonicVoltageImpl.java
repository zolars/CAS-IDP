package reportChart.dao.impl;
import Util.DBConnect;
import Util.HBSessionDaoImpl;
import hibernatePOJO.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import reportChart.dao.HarmonicVoltage;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.text.DecimalFormat;
public class HarmonicVoltageImpl implements HarmonicVoltage {
    private Session session;
    private Transaction transaction;
    private Query query;
    public List getHVresultBydt(String did,String time){
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        System.out.println(time);
        try {
            for(int i=0;i<49;i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    List<Double> value = new ArrayList<>();
                    String sql = "SELECT ep.value as value FROM event_power ep, events_type et WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'U" + state + "谐波含有率越限" + (i + 2) + "' AND ep.cid=et.cid ORDER BY ep.value";

                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        Double dvalue = Double.parseDouble(svalue);
                        value.add(dvalue);
                    }
                    if(value.size()>0){
                        double max = getMax(value);
                        double min = getMin(value);
                        double ave = getAve(value);
                        double pro = get95p(value);
                        result.add((i + 3) + "," + state + "," + max + "," + min + "," + ave + "," + pro);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(result);
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public List getHCresultBydt(String did,String time){
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        System.out.println(time);
        try {
            for(int i=0;i<49;i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    List<Double> value = new ArrayList<>();
                    String sql = "SELECT ep.value as value FROM event_power ep, events_type et WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'I" + state + "谐波有效值越限" + (i + 2) + "' AND ep.cid=et.cid ORDER BY ep.value";
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        Double dvalue = Double.parseDouble(svalue);
                        value.add(dvalue);
                    }
                    if(value.size()>0){
                        double max = getMax(value);
                        double min = getMin(value);
                        double ave = getAve(value);
                        double pro = get95p(value);
                        result.add((i + 3) + "," + state + "," + max + "," + min + "," + ave + "," + pro);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(result);
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public List getHVthreshold(){
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            for(int i=0;i<49;i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ds.value as value FROM devices_standard ds, events_type et WHERE et.description = 'U" + state + "谐波含有率越限" + (i + 2) + "' AND ds.cid=et.cid";
                    System.out.println(sql);
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()){
                        String value = rs.getString("value");
                        result.add((i + 3) + "," + state + "," +  value);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(result);
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public List getHCthreshold(){
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        try {
            for(int i=0;i<49;i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ds.value as value FROM devices_standard ds, events_type et WHERE et.description = 'I" + state + "谐波有效值越限" + (i + 2) + "' AND ds.cid=et.cid";
                    System.out.println(sql);
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()){
                        String value = rs.getString("value");
                        result.add((i + 3) + "," + state + "," +  value);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(result);
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public List getVCfundBydt(String did,String time){
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
        System.out.println(time);
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
                if(du1<220)
                    u1_passnum += 1;
                if(du2<220)
                    u2_passnum += 1;
                if(du3<220)
                    u3_passnum += 1;
                if(di1<50)
                    i1_passnum += 1;
                if(di2<50)
                    i2_passnum += 1;
                if(di3<50)
                    i3_passnum += 1;
                u1.add(du1);
                u2.add(du2);
                u3.add(du3);
                i1.add(di1);
                i2.add(di2);
                i3.add(di3);
            }
            if(u1.size()>0){
                double u1_max = getMax(u1);
                double u1_min = getMin(u1);
                double u1_ave = getAve(u1);
                double u1_pro = get95p(u1);
                double temp_u1_rate = 100.0*u1_passnum/u1.size();
                double u1_rate = Double.parseDouble(df.format(temp_u1_rate));
                if(u1_pro <= 220)
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "合格" + "," + u1.size() + "," + u1_rate);
                else
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "不合格" + "," + u1.size() + "," + u1_rate);
            }
            if(u2.size()>0){
                double u2_max = getMax(u2);
                double u2_min = getMin(u2);
                double u2_ave = getAve(u2);
                double u2_pro = get95p(u2);
                double temp_u2_rate = 100.0*u2_passnum/u2.size();
                double u2_rate = Double.parseDouble(df.format(temp_u2_rate));
                if(u2_pro <= 220)
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "合格" + "," + u2.size() + "," + u2_rate);
                else
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "不合格" + "," + u2.size() + "," + u2_rate);
            }
            if(u3.size()>0){
                double u3_max = getMax(u3);
                double u3_min = getMin(u3);
                double u3_ave = getAve(u3);
                double u3_pro = get95p(u3);
                double temp_u3_rate = 100.0*u3_passnum/u3.size();
                double u3_rate = Double.parseDouble(df.format(temp_u3_rate));
                if(u3_pro <= 220)
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "合格" + "," + u3.size() + "," + u3_rate);
                else
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "不合格" + "," + u3.size() + "," + u3_rate);
            }
            if(i1.size()>0){
                double i1_max = getMax(i1);
                double i1_min = getMin(i1);
                double i1_ave = getAve(i1);
                double i1_pro = get95p(i1);
                double temp_i1_rate = 100.0*i1_passnum/i1.size();
                double i1_rate = Double.parseDouble(df.format(temp_i1_rate));
                if(i1_pro <= 50)
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "合格" + "," + i1.size() + "," + i1_rate);
                else
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "不合格" + "," + i1.size() + "," + i1_rate);
            }
            if(i2.size()>0){
                double i2_max = getMax(i2);
                double i2_min = getMin(i2);
                double i2_ave = getAve(i2);
                double i2_pro = get95p(i2);
                double temp_i2_rate = 100.0*i2_passnum/i2.size();
                double i2_rate = Double.parseDouble(df.format(temp_i2_rate));
                if(i2_pro <= 50)
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "合格" + "," + i2.size() + "," + i2_rate);
                else
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "不合格" + "," + i2.size() + "," + i2_rate);
            }
            if(i3.size()>0){
                double i3_max = getMax(i3);
                double i3_min = getMin(i3);
                double i3_ave = getAve(i3);
                double i3_pro = get95p(i3);
                double temp_i3_rate = 100.0*i3_passnum/i3.size();
                double i3_rate = Double.parseDouble(df.format(temp_i3_rate));
                if(i3_pro <= 50)
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "合格" + "," + i3.size() + "," + i3_rate);
                else
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "不合格" + "," + i3.size() + "," + i3_rate);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(result);
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public List getHVrateBydt(String did,String time){
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        System.out.println(time);
        try {
            for(int i=0;i<49;i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ep.value as value, ds.value as threshold FROM event_power ep, events_type et, devices_standard ds WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'U" + state + "谐波含有率越限" + (i + 2) + "' AND ep.cid = et.cid AND ep.cid = ds.cid";
                    int sum=0;
                    int pass_num=0;
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        String sthreshold = rs.getString("threshold");
                        Double dvalue = Double.parseDouble(svalue);
                        Double dthreshold = Double.parseDouble(sthreshold);
                        if(dvalue<dthreshold)
                            pass_num += 1;
                        sum += 1;
                    }
                    if(sum==0)
                        result.add((i + 3) + "," + state + "," + sum + ",-");
                    else{
                        double temp_pass_rate = pass_num*100.0/sum;
                        double pass_rate = Double.parseDouble(df.format(temp_pass_rate));
                        result.add((i + 3) + "," + state + "," + sum + "," + pass_rate);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(result);
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public List getHCrateBydt(String did,String time){
        DBConnect db;
        ResultSet rs = null;
        PreparedStatement ps = null;
        db = new DBConnect();
        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        System.out.println(time);
        try {
            for(int i=0;i<49;i++) {
                for (int j = 0; j < 3; j++) {
                    char state = (char) (97 + j);
                    String sql = "SELECT ep.value as value, ds.value as threshold FROM event_power ep, events_type et, devices_standard ds WHERE ep.did = '" + did + "' AND ep.time LIKE'" + time + "%' AND et.description = 'I" + state + "谐波有效值越限" + (i + 2) + "' AND ep.cid = et.cid AND ep.cid = ds.cid";
                    int sum=0;
                    int pass_num=0;
                    ps = db.getPs(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        String svalue = rs.getString("value");
                        String sthreshold = rs.getString("threshold");
                        Double dvalue = Double.parseDouble(svalue);
                        Double dthreshold = Double.parseDouble(sthreshold);
                        if(dvalue<dthreshold)
                            pass_num += 1;
                        sum += 1;
                    }
                    if(sum==0)
                        result.add((i + 3) + "," + state + "," + sum + ",-");
                    else{
                        double temp_pass_rate = pass_num*100.0/sum;
                        double pass_rate = Double.parseDouble(df.format(temp_pass_rate));
                        result.add((i + 3) + "," + state + "," + sum + "," + pass_rate);
                    }
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(result);
        try {
            db.free();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public double getMax(List<Double> value){
        double max = value.get(0);
        for(double v:value){
            if(v>max)
                max=v;
        }
        return max;
    }
    public double getMin(List<Double> value){
        double min = value.get(0);
        for(double v:value){
            if(v<min)
                min=v;
        }
        return min;
    }
    public double getAve(List<Double> value){
        double sum = 0;
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        for(double v:value){
            sum += v;
        }
        double temp_ave = sum/(value.size());
        double ave = Double.parseDouble(df.format(temp_ave));
        return ave;
    }
    public double get95p(List<Double> value){
        int num = value.size();
        int threshold = (int)Math.floor(num*0.95);
        Collections.sort(value);
        double pro = value.get(threshold);
        return pro;
    }
}