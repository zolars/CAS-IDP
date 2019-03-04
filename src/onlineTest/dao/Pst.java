package onlineTest.dao;


import java.sql.Timestamp;

public class Pst {
    private double pstU1;
    private double pstU2;
    private double pstU3;

    private Timestamp time;


    public double getPstU1() {
        return pstU1;
    }

    public void setPstU1(double pstU1) {
        this.pstU1 = pstU1;
    }

    public double getPstU2() {
        return pstU2;
    }

    public void setPstU2(double pstU2) {
        this.pstU2 = pstU2;
    }

    public double getPstU3() {
        return pstU3;
    }

    public void setPstU3(double pstU3) {
        this.pstU3 = pstU3;
    }


    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }
}
