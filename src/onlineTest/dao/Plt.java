package onlineTest.dao;


import java.sql.Timestamp;

public class Plt {
    private double pltU1;
    private double pltU2;
    private double pltU3;

    private Timestamp time;


    public double getPltU1() {
        return pltU1;
    }

    public void setPltU1(double pltU1) {
        this.pltU1 = pltU1;
    }

    public double getPltU2() {
        return pltU2;
    }

    public void setPltU2(double pltU2) {
        this.pltU2 = pltU2;
    }

    public double getPltU3() {
        return pltU3;
    }

    public void setPltU3(double pltU3) {
        this.pltU3 = pltU3;
    }


    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }
}
