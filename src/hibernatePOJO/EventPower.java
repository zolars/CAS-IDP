package hibernatePOJO;

import java.sql.Timestamp;
import java.util.Objects;

public class EventPower {
    private int teid;
    private int cid;
    private double value;
    private Double limit;
    private Integer status;
    private String did;
    private Timestamp time;
    private int duration;
    private String signature;
    private String annotation;

    public int getTeid() {
        return teid;
    }

    public void setTeid(int teid) {
        this.teid = teid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public Double getLimit() {
        return limit;
    }

    public void setLimit(Double limit) {
        this.limit = limit;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getAnnotation() {
        return annotation;
    }

    public void setAnnotation(String annotation) {
        this.annotation = annotation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventPower that = (EventPower) o;
        return teid == that.teid &&
                cid == that.cid &&
                Double.compare(that.value, value) == 0 &&
                duration == that.duration &&
                Objects.equals(limit, that.limit) &&
                Objects.equals(status, that.status) &&
                Objects.equals(did, that.did) &&
                Objects.equals(time, that.time) &&
                Objects.equals(signature, that.signature) &&
                Objects.equals(annotation, that.annotation);
    }

    @Override
    public int hashCode() {

        return Objects.hash(teid, cid, value, limit, status, did, time, duration, signature, annotation);
    }
}
