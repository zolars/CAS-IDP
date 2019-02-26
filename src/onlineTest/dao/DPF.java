package onlineTest.dao;


import java.sql.Timestamp;

public class DPF {
    private double dpf1;
    private double dpf2;
    private double dpf3;

    private Timestamp time;


    public double getDpf1() {
        return dpf1;
    }

    public void setDpf1(double dpf1) {
        this.dpf1 = dpf1;
    }

    public double getDpf2() {
        return dpf2;
    }

    public void setDpf2(double dpf2) {
        this.dpf2 = dpf2;
    }

    public double getDpf3() {
        return dpf3;
    }

    public void setDpf3(double dpf3) {
        this.dpf3 = dpf3;
    }


    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }
}
