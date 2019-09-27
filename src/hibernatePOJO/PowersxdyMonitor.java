package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "powersxdy_monitor", schema = "test", catalog = "")
public class PowersxdyMonitor {
    private int sxid;
    private String did;
    private Timestamp time;
    private Float u1;
    private Float u2;
    private Float u3;
    private Float v1;
    private Float v2;
    private Float v3;
    private Float i1;
    private Float i2;
    private Float i3;
    private Float angleU1;
    private Float angleU2;
    private Float angleU3;
    private Float angleV1;
    private Float angleV2;
    private Float angleV3;
    private Float angleI1;
    private Float angleI2;
    private Float angleI3;
    private Float aunb;
    private Float uunb;
    private Float vunb;

    @Id
    @Column(name = "sxid", nullable = false)
    public int getSxid() {
        return sxid;
    }

    public void setSxid(int sxid) {
        this.sxid = sxid;
    }

    @Basic
    @Column(name = "did", nullable = false)
    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
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
    @Column(name = "U1", nullable = true, precision = 2)
    public Float getU1() {
        return u1;
    }

    public void setU1(Float u1) {
        this.u1 = u1;
    }

    @Basic
    @Column(name = "U2", nullable = true, precision = 2)
    public Float getU2() {
        return u2;
    }

    public void setU2(Float u2) {
        this.u2 = u2;
    }

    @Basic
    @Column(name = "U3", nullable = true, precision = 2)
    public Float getU3() {
        return u3;
    }

    public void setU3(Float u3) {
        this.u3 = u3;
    }

    @Basic
    @Column(name = "V1", nullable = true, precision = 2)
    public Float getV1() {
        return v1;
    }

    public void setV1(Float v1) {
        this.v1 = v1;
    }

    @Basic
    @Column(name = "V2", nullable = true, precision = 2)
    public Float getV2() {
        return v2;
    }

    public void setV2(Float v2) {
        this.v2 = v2;
    }

    @Basic
    @Column(name = "V3", nullable = true, precision = 2)
    public Float getV3() {
        return v3;
    }

    public void setV3(Float v3) {
        this.v3 = v3;
    }

    @Basic
    @Column(name = "I1", nullable = true, precision = 2)
    public Float getI1() {
        return i1;
    }

    public void setI1(Float i1) {
        this.i1 = i1;
    }

    @Basic
    @Column(name = "I2", nullable = true, precision = 2)
    public Float getI2() {
        return i2;
    }

    public void setI2(Float i2) {
        this.i2 = i2;
    }

    @Basic
    @Column(name = "I3", nullable = true, precision = 2)
    public Float getI3() {
        return i3;
    }

    public void setI3(Float i3) {
        this.i3 = i3;
    }

    @Basic
    @Column(name = "angleU1", nullable = true, precision = 2)
    public Float getAngleU1() {
        return angleU1;
    }

    public void setAngleU1(Float angleU1) {
        this.angleU1 = angleU1;
    }

    @Basic
    @Column(name = "angleU2", nullable = true, precision = 2)
    public Float getAngleU2() {
        return angleU2;
    }

    public void setAngleU2(Float angleU2) {
        this.angleU2 = angleU2;
    }

    @Basic
    @Column(name = "angleU3", nullable = true, precision = 2)
    public Float getAngleU3() {
        return angleU3;
    }

    public void setAngleU3(Float angleU3) {
        this.angleU3 = angleU3;
    }

    @Basic
    @Column(name = "angleV1", nullable = true, precision = 2)
    public Float getAngleV1() {
        return angleV1;
    }

    public void setAngleV1(Float angleV1) {
        this.angleV1 = angleV1;
    }

    @Basic
    @Column(name = "angleV2", nullable = true, precision = 2)
    public Float getAngleV2() {
        return angleV2;
    }

    public void setAngleV2(Float angleV2) {
        this.angleV2 = angleV2;
    }

    @Basic
    @Column(name = "angleV3", nullable = true, precision = 2)
    public Float getAngleV3() {
        return angleV3;
    }

    public void setAngleV3(Float angleV3) {
        this.angleV3 = angleV3;
    }

    @Basic
    @Column(name = "angleI1", nullable = true, precision = 2)
    public Float getAngleI1() {
        return angleI1;
    }

    public void setAngleI1(Float angleI1) {
        this.angleI1 = angleI1;
    }

    @Basic
    @Column(name = "angleI2", nullable = true, precision = 2)
    public Float getAngleI2() {
        return angleI2;
    }

    public void setAngleI2(Float angleI2) {
        this.angleI2 = angleI2;
    }

    @Basic
    @Column(name = "angleI3", nullable = true, precision = 2)
    public Float getAngleI3() {
        return angleI3;
    }

    public void setAngleI3(Float angleI3) {
        this.angleI3 = angleI3;
    }

    @Basic
    @Column(name = "Aunb", nullable = true, precision = 2)
    public Float getAunb() {
        return aunb;
    }

    public void setAunb(Float aunb) {
        this.aunb = aunb;
    }

    @Basic
    @Column(name = "Uunb", nullable = true, precision = 2)
    public Float getUunb() {
        return uunb;
    }

    public void setUunb(Float uunb) {
        this.uunb = uunb;
    }

    @Basic
    @Column(name = "Vunb", nullable = true, precision = 2)
    public Float getVunb() {
        return vunb;
    }

    public void setVunb(Float vunb) {
        this.vunb = vunb;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PowersxdyMonitor that = (PowersxdyMonitor) o;
        return sxid == that.sxid &&
                did == that.did &&
                Objects.equals(time, that.time) &&
                Objects.equals(u1, that.u1) &&
                Objects.equals(u2, that.u2) &&
                Objects.equals(u3, that.u3) &&
                Objects.equals(v1, that.v1) &&
                Objects.equals(v2, that.v2) &&
                Objects.equals(v3, that.v3) &&
                Objects.equals(i1, that.i1) &&
                Objects.equals(i2, that.i2) &&
                Objects.equals(i3, that.i3) &&
                Objects.equals(angleU1, that.angleU1) &&
                Objects.equals(angleU2, that.angleU2) &&
                Objects.equals(angleU3, that.angleU3) &&
                Objects.equals(angleV1, that.angleV1) &&
                Objects.equals(angleV2, that.angleV2) &&
                Objects.equals(angleV3, that.angleV3) &&
                Objects.equals(angleI1, that.angleI1) &&
                Objects.equals(angleI2, that.angleI2) &&
                Objects.equals(angleI3, that.angleI3) &&
                Objects.equals(aunb, that.aunb) &&
                Objects.equals(uunb, that.uunb) &&
                Objects.equals(vunb, that.vunb);
    }

    @Override
    public int hashCode() {

        return Objects.hash(sxid, did, time, u1, u2, u3, v1, v2, v3, i1, i2, i3, angleU1, angleU2, angleU3, angleV1, angleV2, angleV3, angleI1, angleI2, angleI3, aunb, uunb, vunb);
    }
}
