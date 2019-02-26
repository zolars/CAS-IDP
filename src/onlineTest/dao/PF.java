package onlineTest.dao;


import java.sql.Timestamp;

public class PF {
    private double pf1;
    private double pf2;
    private double pf3;

    private Timestamp time;


    public double getPf1() {
        return pf1;
    }

    public void setPf1(double pf1) {
        this.pf1 = pf1;
    }

    public double getPf2() {
        return pf2;
    }

    public void setPf2(double pf2) {
        this.pf2 = pf2;
    }

    public double getPf3() {
        return pf3;
    }

    public void setPf3(double pf3) {
        this.pf3 = pf3;
    }


    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }
}
