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
    private Double angle1;
    private Double angle2;
    private Double angle3;

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
    @Column(name = "angle1", nullable = true, precision = 0)
    public Double getAngle1() {
        return angle1;
    }

    public void setAngle1(Double angle1) {
        this.angle1 = angle1;
    }

    @Basic
    @Column(name = "angle2", nullable = true, precision = 0)
    public Double getAngle2() {
        return angle2;
    }

    public void setAngle2(Double angle2) {
        this.angle2 = angle2;
    }

    @Basic
    @Column(name = "angle3", nullable = true, precision = 0)
    public Double getAngle3() {
        return angle3;
    }

    public void setAngle3(Double angle3) {
        this.angle3 = angle3;
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
                Objects.equals(angle1, that.angle1) &&
                Objects.equals(angle2, that.angle2) &&
                Objects.equals(angle3, that.angle3);
    }

    @Override
    public int hashCode() {

        return Objects.hash(sxid, mpid, time, u1, u2, u3, v1, v2, v3, a1, a2, a3, angle1, angle2, angle3);
    }
}
