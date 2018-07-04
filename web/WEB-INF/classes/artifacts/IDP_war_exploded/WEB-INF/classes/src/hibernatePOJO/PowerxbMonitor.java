package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "powerxb_monitor", schema = "Test", catalog = "")
public class PowerxbMonitor {
    private int xbid;
    private Integer mpid;
    private Timestamp time;
    private Double u1Xb;
    private Double u2Xb;
    private Double u3Xb;
    private Double u4Xb;
    private Double i1Xb;
    private Double i2Xb;
    private Double i3Xb;
    private Double i4Xb;
    private double cishu;

    @Id
    @Column(name = "xbid", nullable = false)
    public int getXbid() {
        return xbid;
    }

    public void setXbid(int xbid) {
        this.xbid = xbid;
    }

    @Basic
    @Column(name = "mpid", nullable = true)
    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
    }

    @Basic
    @Column(name = "time", nullable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "U1xb", nullable = true, precision = 0)
    public Double getU1Xb() {
        return u1Xb;
    }

    public void setU1Xb(Double u1Xb) {
        this.u1Xb = u1Xb;
    }

    @Basic
    @Column(name = "U2xb", nullable = true, precision = 0)
    public Double getU2Xb() {
        return u2Xb;
    }

    public void setU2Xb(Double u2Xb) {
        this.u2Xb = u2Xb;
    }

    @Basic
    @Column(name = "U3xb", nullable = true, precision = 0)
    public Double getU3Xb() {
        return u3Xb;
    }

    public void setU3Xb(Double u3Xb) {
        this.u3Xb = u3Xb;
    }

    @Basic
    @Column(name = "U4xb", nullable = true, precision = 0)
    public Double getU4Xb() {
        return u4Xb;
    }

    public void setU4Xb(Double u4Xb) {
        this.u4Xb = u4Xb;
    }

    @Basic
    @Column(name = "I1xb", nullable = true, precision = 0)
    public Double getI1Xb() {
        return i1Xb;
    }

    public void setI1Xb(Double i1Xb) {
        this.i1Xb = i1Xb;
    }

    @Basic
    @Column(name = "I2xb", nullable = true, precision = 0)
    public Double getI2Xb() {
        return i2Xb;
    }

    public void setI2Xb(Double i2Xb) {
        this.i2Xb = i2Xb;
    }

    @Basic
    @Column(name = "I3xb", nullable = true, precision = 0)
    public Double getI3Xb() {
        return i3Xb;
    }

    public void setI3Xb(Double i3Xb) {
        this.i3Xb = i3Xb;
    }

    @Basic
    @Column(name = "I4xb", nullable = true, precision = 0)
    public Double getI4Xb() {
        return i4Xb;
    }

    public void setI4Xb(Double i4Xb) {
        this.i4Xb = i4Xb;
    }

    @Basic
    @Column(name = "cishu", nullable = false, precision = 0)
    public double getCishu() {
        return cishu;
    }

    public void setCishu(double cishu) {
        this.cishu = cishu;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PowerxbMonitor that = (PowerxbMonitor) o;
        return xbid == that.xbid &&
                Double.compare(that.cishu, cishu) == 0 &&
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(time, that.time) &&
                Objects.equals(u1Xb, that.u1Xb) &&
                Objects.equals(u2Xb, that.u2Xb) &&
                Objects.equals(u3Xb, that.u3Xb) &&
                Objects.equals(u4Xb, that.u4Xb) &&
                Objects.equals(i1Xb, that.i1Xb) &&
                Objects.equals(i2Xb, that.i2Xb) &&
                Objects.equals(i3Xb, that.i3Xb) &&
                Objects.equals(i4Xb, that.i4Xb) ;
    }

    @Override
    public int hashCode() {

        return Objects.hash(xbid, mpid, time, u1Xb, u2Xb, u3Xb, u4Xb, i1Xb, i2Xb, i3Xb, i4Xb, cishu);
    }
}
