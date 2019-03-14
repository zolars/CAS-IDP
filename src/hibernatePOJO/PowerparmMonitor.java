package hibernatePOJO;

import java.sql.Timestamp;
import java.util.Objects;

public class PowerparmMonitor {
    private int ppid;
    private String did;
    private Timestamp time;
    private Float u1;
    private Float u2;
    private Float u3;
    private Float u4;
    private Float i1;
    private Float i2;
    private Float i3;
    private Float i4;
    private Float p1;
    private Float p2;
    private Float p3;
    private Float psum;
    private Float q1;
    private Float q2;
    private Float q3;
    private Float qsum;
    private Float s1;
    private Float s2;
    private Float s3;
    private Float ssum;
    private Float pf1;
    private Float pf2;
    private Float pf3;
    private Float pFsum;
    private Float cosPhi1;
    private Float cosPhi2;
    private Float cosPhi3;
    private Float iflU1;
    private Float iflU2;
    private Float iflU3;
    private Float iflSum;
    private Float pstU1;
    private Float pstU2;
    private Float pstU3;
    private Float pltU1;
    private Float pltU2;
    private Float pltU3;
    private Float hz;

    public int getPpid() {
        return ppid;
    }

    public void setPpid(int ppid) {
        this.ppid = ppid;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public Float getU1() {
        return u1;
    }

    public void setU1(Float u1) {
        this.u1 = u1;
    }

    public Float getU2() {
        return u2;
    }

    public void setU2(Float u2) {
        this.u2 = u2;
    }

    public Float getU3() {
        return u3;
    }

    public void setU3(Float u3) {
        this.u3 = u3;
    }

    public Float getU4() {
        return u4;
    }

    public void setU4(Float u4) {
        this.u4 = u4;
    }

    public Float getI1() {
        return i1;
    }

    public void setI1(Float i1) {
        this.i1 = i1;
    }

    public Float getI2() {
        return i2;
    }

    public void setI2(Float i2) {
        this.i2 = i2;
    }

    public Float getI3() {
        return i3;
    }

    public void setI3(Float i3) {
        this.i3 = i3;
    }

    public Float getI4() {
        return i4;
    }

    public void setI4(Float i4) {
        this.i4 = i4;
    }

    public Float getP1() {
        return p1;
    }

    public void setP1(Float p1) {
        this.p1 = p1;
    }

    public Float getP2() {
        return p2;
    }

    public void setP2(Float p2) {
        this.p2 = p2;
    }

    public Float getP3() {
        return p3;
    }

    public void setP3(Float p3) {
        this.p3 = p3;
    }

    public Float getPsum() {
        return psum;
    }

    public void setPsum(Float psum) {
        this.psum = psum;
    }

    public Float getQ1() {
        return q1;
    }

    public void setQ1(Float q1) {
        this.q1 = q1;
    }

    public Float getQ2() {
        return q2;
    }

    public void setQ2(Float q2) {
        this.q2 = q2;
    }

    public Float getQ3() {
        return q3;
    }

    public void setQ3(Float q3) {
        this.q3 = q3;
    }

    public Float getQsum() {
        return qsum;
    }

    public void setQsum(Float qsum) {
        this.qsum = qsum;
    }

    public Float getS1() {
        return s1;
    }

    public void setS1(Float s1) {
        this.s1 = s1;
    }

    public Float getS2() {
        return s2;
    }

    public void setS2(Float s2) {
        this.s2 = s2;
    }

    public Float getS3() {
        return s3;
    }

    public void setS3(Float s3) {
        this.s3 = s3;
    }

    public Float getSsum() {
        return ssum;
    }

    public void setSsum(Float ssum) {
        this.ssum = ssum;
    }

    public Float getPf1() {
        return pf1;
    }

    public void setPf1(Float pf1) {
        this.pf1 = pf1;
    }

    public Float getPf2() {
        return pf2;
    }

    public void setPf2(Float pf2) {
        this.pf2 = pf2;
    }

    public Float getPf3() {
        return pf3;
    }

    public void setPf3(Float pf3) {
        this.pf3 = pf3;
    }

    public Float getpFsum() {
        return pFsum;
    }

    public void setpFsum(Float pFsum) {
        this.pFsum = pFsum;
    }

    public Float getCosPhi1() {
        return cosPhi1;
    }

    public void setCosPhi1(Float cosPhi1) {
        this.cosPhi1 = cosPhi1;
    }

    public Float getCosPhi2() {
        return cosPhi2;
    }

    public void setCosPhi2(Float cosPhi2) {
        this.cosPhi2 = cosPhi2;
    }

    public Float getCosPhi3() {
        return cosPhi3;
    }

    public void setCosPhi3(Float cosPhi3) {
        this.cosPhi3 = cosPhi3;
    }

    public Float getIflU1() {
        return iflU1;
    }

    public void setIflU1(Float iflU1) {
        this.iflU1 = iflU1;
    }

    public Float getIflU2() {
        return iflU2;
    }

    public void setIflU2(Float iflU2) {
        this.iflU2 = iflU2;
    }

    public Float getIflU3() {
        return iflU3;
    }

    public void setIflU3(Float iflU3) {
        this.iflU3 = iflU3;
    }

    public Float getIflSum() {
        return iflSum;
    }

    public void setIflSum(Float iflSum) {
        this.iflSum = iflSum;
    }

    public Float getPstU1() {
        return pstU1;
    }

    public void setPstU1(Float pstU1) {
        this.pstU1 = pstU1;
    }

    public Float getPstU2() {
        return pstU2;
    }

    public void setPstU2(Float pstU2) {
        this.pstU2 = pstU2;
    }

    public Float getPstU3() {
        return pstU3;
    }

    public void setPstU3(Float pstU3) {
        this.pstU3 = pstU3;
    }

    public Float getPltU1() {
        return pltU1;
    }

    public void setPltU1(Float pltU1) {
        this.pltU1 = pltU1;
    }

    public Float getPltU2() {
        return pltU2;
    }

    public void setPltU2(Float pltU2) {
        this.pltU2 = pltU2;
    }

    public Float getPltU3() {
        return pltU3;
    }

    public void setPltU3(Float pltU3) {
        this.pltU3 = pltU3;
    }

    public Float getHz() {
        return hz;
    }

    public void setHz(Float hz) {
        this.hz = hz;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PowerparmMonitor that = (PowerparmMonitor) o;
        return ppid == that.ppid &&
                Objects.equals(did, that.did) &&
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
                Objects.equals(psum, that.psum) &&
                Objects.equals(q1, that.q1) &&
                Objects.equals(q2, that.q2) &&
                Objects.equals(q3, that.q3) &&
                Objects.equals(qsum, that.qsum) &&
                Objects.equals(s1, that.s1) &&
                Objects.equals(s2, that.s2) &&
                Objects.equals(s3, that.s3) &&
                Objects.equals(ssum, that.ssum) &&
                Objects.equals(pf1, that.pf1) &&
                Objects.equals(pf2, that.pf2) &&
                Objects.equals(pf3, that.pf3) &&
                Objects.equals(pFsum, that.pFsum) &&
                Objects.equals(cosPhi1, that.cosPhi1) &&
                Objects.equals(cosPhi2, that.cosPhi2) &&
                Objects.equals(cosPhi3, that.cosPhi3) &&
                Objects.equals(iflU1, that.iflU1) &&
                Objects.equals(iflU2, that.iflU2) &&
                Objects.equals(iflU3, that.iflU3) &&
                Objects.equals(iflSum, that.iflSum) &&
                Objects.equals(pstU1, that.pstU1) &&
                Objects.equals(pstU2, that.pstU2) &&
                Objects.equals(pstU3, that.pstU3) &&
                Objects.equals(pltU1, that.pltU1) &&
                Objects.equals(pltU2, that.pltU2) &&
                Objects.equals(pltU3, that.pltU3) &&
                Objects.equals(hz, that.hz);
    }

    @Override
    public int hashCode() {

        return Objects.hash(ppid, did, time, u1, u2, u3, u4, i1, i2, i3, i4, p1, p2, p3, psum, q1, q2, q3, qsum, s1, s2, s3, ssum, pf1, pf2, pf3, pFsum, cosPhi1, cosPhi2, cosPhi3, iflU1, iflU2, iflU3, iflSum, pstU1, pstU2, pstU3, pltU1, pltU2, pltU3, hz);
    }
}
