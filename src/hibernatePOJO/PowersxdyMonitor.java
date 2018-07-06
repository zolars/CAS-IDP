package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "powersxdy_monitor", schema = "Test", catalog = "")
public class PowersxdyMonitor {
    private String sxid;
    private int mpid;
    private Timestamp time;
    private Double u1;
    private Double u2;
    private Double u3;
    private Double v1;
    private Double v2;
    private Double v3;
    private Double a1;
    private Double a2;
    private Double a3;
    private Double angleU1;
    private Double angleU2;
    private Double angleU3;
    private Double angleV1;
    private Double angleV2;
    private Double angleV3;
    private Double angleA1;
    private Double angleA2;
    private Double angleA3;

    @Id
    @Column(name = "sxid", nullable = false, length = 255)
    public String getSxid() {
        return sxid;
    }

    public void setSxid(String sxid) {
        this.sxid = sxid;
    }

    @Basic
    @Column(name = "mpid", nullable = false)
    public int getMpid() {
        return mpid;
    }

    public void setMpid(int mpid) {
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
    @Column(name = "V1", nullable = true, precision = 0)
    public Double getV1() {
        return v1;
    }

    public void setV1(Double v1) {
        this.v1 = v1;
    }

    @Basic
    @Column(name = "V2", nullable = true, precision = 0)
    public Double getV2() {
        return v2;
    }

    public void setV2(Double v2) {
        this.v2 = v2;
    }

    @Basic
    @Column(name = "V3", nullable = true, precision = 0)
    public Double getV3() {
        return v3;
    }

    public void setV3(Double v3) {
        this.v3 = v3;
    }

    @Basic
    @Column(name = "A1", nullable = true, precision = 0)
    public Double getA1() {
        return a1;
    }

    public void setA1(Double a1) {
        this.a1 = a1;
    }

    @Basic
    @Column(name = "A2", nullable = true, precision = 0)
    public Double getA2() {
        return a2;
    }

    public void setA2(Double a2) {
        this.a2 = a2;
    }

    @Basic
    @Column(name = "A3", nullable = true, precision = 0)
    public Double getA3() {
        return a3;
    }

    public void setA3(Double a3) {
        this.a3 = a3;
    }

    @Basic
    @Column(name = "angleU1", nullable = true, precision = 0)
    public Double getAngleU1() {
        return angleU1;
    }

    public void setAngleU1(Double angleU1) {
        this.angleU1 = angleU1;
    }

    @Basic
    @Column(name = "angleU2", nullable = true, precision = 0)
    public Double getAngleU2() {
        return angleU2;
    }

    public void setAngleU2(Double angleU2) {
        this.angleU2 = angleU2;
    }

    @Basic
    @Column(name = "angleU3", nullable = true, precision = 0)
    public Double getAngleU3() {
        return angleU3;
    }

    public void setAngleU3(Double angleU3) {
        this.angleU3 = angleU3;
    }

    @Basic
    @Column(name = "angleV1", nullable = true, precision = 0)
    public Double getAngleV1() {
        return angleV1;
    }

    public void setAngleV1(Double angleV1) {
        this.angleV1 = angleV1;
    }

    @Basic
    @Column(name = "angleV2", nullable = true, precision = 0)
    public Double getAngleV2() {
        return angleV2;
    }

    public void setAngleV2(Double angleV2) {
        this.angleV2 = angleV2;
    }

    @Basic
    @Column(name = "angleV3", nullable = true, precision = 0)
    public Double getAngleV3() {
        return angleV3;
    }

    public void setAngleV3(Double angleV3) {
        this.angleV3 = angleV3;
    }

    @Basic
    @Column(name = "angleA1", nullable = true, precision = 0)
    public Double getAngleA1() {
        return angleA1;
    }

    public void setAngleA1(Double angleA1) {
        this.angleA1 = angleA1;
    }

    @Basic
    @Column(name = "angleA2", nullable = true, precision = 0)
    public Double getAngleA2() {
        return angleA2;
    }

    public void setAngleA2(Double angleA2) {
        this.angleA2 = angleA2;
    }

    @Basic
    @Column(name = "angleA3", nullable = true, precision = 0)
    public Double getAngleA3() {
        return angleA3;
    }

    public void setAngleA3(Double angleA3) {
        this.angleA3 = angleA3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PowersxdyMonitor that = (PowersxdyMonitor) o;
        return mpid == that.mpid &&
                Objects.equals(sxid, that.sxid) &&
                Objects.equals(time, that.time) &&
                Objects.equals(u1, that.u1) &&
                Objects.equals(u2, that.u2) &&
                Objects.equals(u3, that.u3) &&
                Objects.equals(v1, that.v1) &&
                Objects.equals(v2, that.v2) &&
                Objects.equals(v3, that.v3) &&
                Objects.equals(a1, that.a1) &&
                Objects.equals(a2, that.a2) &&
                Objects.equals(a3, that.a3) &&
                Objects.equals(angleU1, that.angleU1) &&
                Objects.equals(angleU2, that.angleU2) &&
                Objects.equals(angleU3, that.angleU3) &&
                Objects.equals(angleV1, that.angleV1) &&
                Objects.equals(angleV2, that.angleV2) &&
                Objects.equals(angleV3, that.angleV3) &&
                Objects.equals(angleA1, that.angleA1) &&
                Objects.equals(angleA2, that.angleA2) &&
                Objects.equals(angleA3, that.angleA3);
    }

    @Override
    public int hashCode() {

        return Objects.hash(sxid, mpid, time, u1, u2, u3, v1, v2, v3, a1, a2, a3, angleU1, angleU2, angleU3, angleV1, angleV2, angleV3, angleA1, angleA2, angleA3);
    }
}
