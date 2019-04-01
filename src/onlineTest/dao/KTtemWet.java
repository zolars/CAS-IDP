package onlineTest.dao;


import java.sql.Timestamp;

public class KTtemWet {
    private double wet;
    private double tem;

    private Timestamp time;


    public double getTem() {
        return tem;
    }

    public void setTem(double tem) {
        this.tem = tem;
    }

    public double getWet() {
        return wet;
    }

    public void setWet(double wet) {
        this.wet = wet;
    }


    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }
}
