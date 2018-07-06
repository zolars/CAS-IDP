package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "powerparm_monitor_his", schema = "Test", catalog = "")
public class PowerparmMonitorHis {
    private int ppid;
    private Integer mpid;
    private Timestamp time;
    private Double u1;
    private Double u2;
    private Double u3;
    private Double u4;
    private Double i1;
    private Double i2;
    private Double i3;
    private Double i4;
    private Double p1;
    private Double p2;
    private Double p3;
    private Double q1;
    private Double q2;
    private Double q3;
    private Double s1;
    private Double s2;
    private Double s3;
    private Double pf1;
    private Double pf2;
    private Double pf3;
    private Double cosPhi1;
    private Double cosPhi2;
    private Double cosPhi3;
    private Double iflU1;
    private Double iflU2;
    private Double iflU3;
    private Double pstU1;
    private Double pstU2;
    private Double pstU3;
    private Double pltU1;
    private Double pltU2;
    private Double pltU3;
    private String shanbian;
    private Double shunbian;
    private Double lytx;
    private Double unb;
    private Double hz;

    @Id
    @Column(name = "ppid", nullable = false)
    public int getPpid() {
        return ppid;
    }

    public void setPpid(int ppid) {
        this.ppid = ppid;
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
    @Column(name = "U1", nullable = true, precision = 0)
    public Double getU1() {
        return u1;
    }

    public void setU1(Double u1) {
        this.u1 = u1;
    }

    @Basic
    @Column(name = "U2", nullable = true, precision = 0)
    public Double getU2() {
        return u2;
    }

    public void setU2(Double u2) {
        this.u2 = u2;
    }

    @Basic
    @Column(name = "U3", nullable = true, precision = 0)
    public Double getU3() {
        return u3;
    }

    public void setU3(Double u3) {
        this.u3 = u3;
    }

    @Basic
    @Column(name = "U4", nullable = true, precision = 0)
    public Double getU4() {
        return u4;
    }

    public void setU4(Double u4) {
        this.u4 = u4;
    }

    @Basic
    @Column(name = "I1", nullable = true, precision = 0)
    public Double getI1() {
        return i1;
    }

    public void setI1(Double i1) {
        this.i1 = i1;
    }

    @Basic
    @Column(name = "I2", nullable = true, precision = 0)
    public Double getI2() {
        return i2;
    }

    public void setI2(Double i2) {
        this.i2 = i2;
    }

    @Basic
    @Column(name = "I3", nullable = true, precision = 0)
    public Double getI3() {
        return i3;
    }

    public void setI3(Double i3) {
        this.i3 = i3;
    }

    @Basic
    @Column(name = "I4", nullable = true, precision = 0)
    public Double getI4() {
        return i4;
    }

    public void setI4(Double i4) {
        this.i4 = i4;
    }

    @Basic
    @Column(name = "P1", nullable = true, precision = 0)
    public Double getP1() {
        return p1;
    }

    public void setP1(Double p1) {
        this.p1 = p1;
    }

    @Basic
    @Column(name = "P2", nullable = true, precision = 0)
    public Double getP2() {
        return p2;
    }

    public void setP2(Double p2) {
        this.p2 = p2;
    }

    @Basic
    @Column(name = "P3", nullable = true, precision = 0)
    public Double getP3() {
        return p3;
    }

    public void setP3(Double p3) {
        this.p3 = p3;
    }

    @Basic
    @Column(name = "Q1", nullable = true, precision = 0)
    public Double getQ1() {
        return q1;
    }

    public void setQ1(Double q1) {
        this.q1 = q1;
    }

    @Basic
    @Column(name = "Q2", nullable = true, precision = 0)
    public Double getQ2() {
        return q2;
    }

    public void setQ2(Double q2) {
        this.q2 = q2;
    }

    @Basic
    @Column(name = "Q3", nullable = true, precision = 0)
    public Double getQ3() {
        return q3;
    }

    public void setQ3(Double q3) {
        this.q3 = q3;
    }

    @Basic
    @Column(name = "S1", nullable = true, precision = 0)
    public Double getS1() {
        return s1;
    }

    public void setS1(Double s1) {
        this.s1 = s1;
    }

    @Basic
    @Column(name = "S2", nullable = true, precision = 0)
    public Double getS2() {
        return s2;
    }

    public void setS2(Double s2) {
        this.s2 = s2;
    }

    @Basic
    @Column(name = "S3", nullable = true, precision = 0)
    public Double getS3() {
        return s3;
    }

    public void setS3(Double s3) {
        this.s3 = s3;
    }

    @Basic
    @Column(name = "PF1", nullable = true, precision = 0)
    public Double getPf1() {
        return pf1;
    }

    public void setPf1(Double pf1) {
        this.pf1 = pf1;
    }

    @Basic
    @Column(name = "PF2", nullable = true, precision = 0)
    public Double getPf2() {
        return pf2;
    }

    public void setPf2(Double pf2) {
        this.pf2 = pf2;
    }

    @Basic
    @Column(name = "PF3", nullable = true, precision = 0)
    public Double getPf3() {
        return pf3;
    }

    public void setPf3(Double pf3) {
        this.pf3 = pf3;
    }

    @Basic
    @Column(name = "CosPHI1", nullable = true, precision = 0)
    public Double getCosPhi1() {
        return cosPhi1;
    }

    public void setCosPhi1(Double cosPhi1) {
        this.cosPhi1 = cosPhi1;
    }

    @Basic
    @Column(name = "CosPHI2", nullable = true, precision = 0)
    public Double getCosPhi2() {
        return cosPhi2;
    }

    public void setCosPhi2(Double cosPhi2) {
        this.cosPhi2 = cosPhi2;
    }

    @Basic
    @Column(name = "CosPHI3", nullable = true, precision = 0)
    public Double getCosPhi3() {
        return cosPhi3;
    }

    public void setCosPhi3(Double cosPhi3) {
        this.cosPhi3 = cosPhi3;
    }

    @Basic
    @Column(name = "Ifl_U1", nullable = true, precision = 0)
    public Double getIflU1() {
        return iflU1;
    }

    public void setIflU1(Double iflU1) {
        this.iflU1 = iflU1;
    }

    @Basic
    @Column(name = "Ifl_U2", nullable = true, precision = 0)
    public Double getIflU2() {
        return iflU2;
    }

    public void setIflU2(Double iflU2) {
        this.iflU2 = iflU2;
    }

    @Basic
    @Column(name = "Ifl_U3", nullable = true, precision = 0)
    public Double getIflU3() {
        return iflU3;
    }

    public void setIflU3(Double iflU3) {
        this.iflU3 = iflU3;
    }

    @Basic
    @Column(name = "Pst_U1", nullable = true, precision = 0)
    public Double getPstU1() {
        return pstU1;
    }

    public void setPstU1(Double pstU1) {
        this.pstU1 = pstU1;
    }

    @Basic
    @Column(name = "Pst_U2", nullable = true, precision = 0)
    public Double getPstU2() {
        return pstU2;
    }

    public void setPstU2(Double pstU2) {
        this.pstU2 = pstU2;
    }

    @Basic
    @Column(name = "Pst_U3", nullable = true, precision = 0)
    public Double getPstU3() {
        return pstU3;
    }

    public void setPstU3(Double pstU3) {
        this.pstU3 = pstU3;
    }

    @Basic
    @Column(name = "Plt_U1", nullable = true, precision = 0)
    public Double getPltU1() {
        return pltU1;
    }

    public void setPltU1(Double pltU1) {
        this.pltU1 = pltU1;
    }

    @Basic
    @Column(name = "Plt_U2", nullable = true, precision = 0)
    public Double getPltU2() {
        return pltU2;
    }

    public void setPltU2(Double pltU2) {
        this.pltU2 = pltU2;
    }

    @Basic
    @Column(name = "Plt_U3", nullable = true, precision = 0)
    public Double getPltU3() {
        return pltU3;
    }

    public void setPltU3(Double pltU3) {
        this.pltU3 = pltU3;
    }

    @Basic
    @Column(name = "shanbian", nullable = true, length = 255)
    public String getShanbian() {
        return shanbian;
    }

    public void setShanbian(String shanbian) {
        this.shanbian = shanbian;
    }

    @Basic
    @Column(name = "shunbian", nullable = true, precision = 0)
    public Double getShunbian() {
        return shunbian;
    }

    public void setShunbian(Double shunbian) {
        this.shunbian = shunbian;
    }

    @Basic
    @Column(name = "lytx", nullable = true, precision = 0)
    public Double getLytx() {
        return lytx;
    }

    public void setLytx(Double lytx) {
        this.lytx = lytx;
    }

    @Basic
    @Column(name = "unb", nullable = true, precision = 0)
    public Double getUnb() {
        return unb;
    }

    public void setUnb(Double unb) {
        this.unb = unb;
    }

    @Basic
    @Column(name = "Hz", nullable = true, precision = 0)
    public Double getHz() {
        return hz;
    }

    public void setHz(Double hz) {
        this.hz = hz;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PowerparmMonitorHis that = (PowerparmMonitorHis) o;
        return ppid == that.ppid &&
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(time, that.time) &&
                Objects.equals(u1, that.u1) &&
                Objects.equals(u2, that.u2) &&
                Objects.equals(u3, that.u3) &&
                Objects.equals(u4, that.u4) &&
                Objects.equals(i1, that.i1) &&
                Objects.equals(i2, that.i2) &&
                Objects.equals(i3, that.i3) &&
                Objects.equals(i4, that.i4) &&
                Objects.equals(p1, that.p1) &&
                Objects.equals(p2, that.p2) &&
                Objects.equals(p3, that.p3) &&
                Objects.equals(q1, that.q1) &&
                Objects.equals(q2, that.q2) &&
                Objects.equals(q3, that.q3) &&
                Objects.equals(s1, that.s1) &&
                Objects.equals(s2, that.s2) &&
                Objects.equals(s3, that.s3) &&
                Objects.equals(pf1, that.pf1) &&
                Objects.equals(pf2, that.pf2) &&
                Objects.equals(pf3, that.pf3) &&
                Objects.equals(cosPhi1, that.cosPhi1) &&
                Objects.equals(cosPhi2, that.cosPhi2) &&
                Objects.equals(cosPhi3, that.cosPhi3) &&
                Objects.equals(iflU1, that.iflU1) &&
                Objects.equals(iflU2, that.iflU2) &&
                Objects.equals(iflU3, that.iflU3) &&
                Objects.equals(pstU1, that.pstU1) &&
                Objects.equals(pstU2, that.pstU2) &&
                Objects.equals(pstU3, that.pstU3) &&
                Objects.equals(pltU1, that.pltU1) &&
                Objects.equals(pltU2, that.pltU2) &&
                Objects.equals(pltU3, that.pltU3) &&
                Objects.equals(shanbian, that.shanbian) &&
                Objects.equals(shunbian, that.shunbian) &&
                Objects.equals(lytx, that.lytx) &&
                Objects.equals(unb, that.unb) &&
                Objects.equals(hz, that.hz);
    }

    @Override
    public int hashCode() {

        return Objects.hash(ppid, mpid, time, u1, u2, u3, u4, i1, i2, i3, i4, p1, p2, p3, q1, q2, q3, s1, s2, s3, pf1, pf2, pf3, cosPhi1, cosPhi2, cosPhi3, iflU1, iflU2, iflU3, pstU1, pstU2, pstU3, pltU1, pltU2, pltU3, shanbian, shunbian, lytx, unb, hz);
    }
}
