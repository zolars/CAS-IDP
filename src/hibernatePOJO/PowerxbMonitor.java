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
    private String u1Xb;
    private String u2Vb;
    private String u3Xb;
    private String u4Xb;
    private String i1Xb;
    private String i2Xb;
    private String i3Xb;
    private String i4Xb;
    private String cishu;

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
    @Column(name = "U1xb", nullable = true, length = 255)
    public String getU1Xb() {
        return u1Xb;
    }

    public void setU1Xb(String u1Xb) {
        this.u1Xb = u1Xb;
    }

    @Basic
    @Column(name = "U2vb", nullable = true, length = 255)
    public String getU2Vb() {
        return u2Vb;
    }

    public void setU2Vb(String u2Vb) {
        this.u2Vb = u2Vb;
    }

    @Basic
    @Column(name = "U3xb", nullable = true, length = 255)
    public String getU3Xb() {
        return u3Xb;
    }

    public void setU3Xb(String u3Xb) {
        this.u3Xb = u3Xb;
    }

    @Basic
    @Column(name = "U4xb", nullable = true, length = 255)
    public String getU4Xb() {
        return u4Xb;
    }

    public void setU4Xb(String u4Xb) {
        this.u4Xb = u4Xb;
    }

    @Basic
    @Column(name = "I1xb", nullable = true, length = 255)
    public String getI1Xb() {
        return i1Xb;
    }

    public void setI1Xb(String i1Xb) {
        this.i1Xb = i1Xb;
    }

    @Basic
    @Column(name = "I2xb", nullable = true, length = 255)
    public String getI2Xb() {
        return i2Xb;
    }

    public void setI2Xb(String i2Xb) {
        this.i2Xb = i2Xb;
    }

    @Basic
    @Column(name = "I3xb", nullable = true, length = 255)
    public String getI3Xb() {
        return i3Xb;
    }

    public void setI3Xb(String i3Xb) {
        this.i3Xb = i3Xb;
    }

    @Basic
    @Column(name = "I4xb", nullable = true, length = 255)
    public String getI4Xb() {
        return i4Xb;
    }

    public void setI4Xb(String i4Xb) {
        this.i4Xb = i4Xb;
    }

    @Basic
    @Column(name = "cishu", nullable = false, length = 2)
    public String getCishu() {
        return cishu;
    }

    public void setCishu(String cishu) {
        this.cishu = cishu;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PowerxbMonitor that = (PowerxbMonitor) o;
        return xbid == that.xbid &&
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(time, that.time) &&
                Objects.equals(u1Xb, that.u1Xb) &&
                Objects.equals(u2Vb, that.u2Vb) &&
                Objects.equals(u3Xb, that.u3Xb) &&
                Objects.equals(u4Xb, that.u4Xb) &&
                Objects.equals(i1Xb, that.i1Xb) &&
                Objects.equals(i2Xb, that.i2Xb) &&
                Objects.equals(i3Xb, that.i3Xb) &&
                Objects.equals(i4Xb, that.i4Xb) &&
                Objects.equals(cishu, that.cishu);
    }

    @Override
    public int hashCode() {

        return Objects.hash(xbid, mpid, time, u1Xb, u2Vb, u3Xb, u4Xb, i1Xb, i2Xb, i3Xb, i4Xb, cishu);
    }
}
