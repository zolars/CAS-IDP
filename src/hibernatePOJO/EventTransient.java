package hibernatePOJO;

import java.sql.Timestamp;
import java.util.Objects;

public class EventTransient {
    private int teid;
    private String did;
    private Timestamp time;
    private int eventtype;
    private int type;
    private int subtype;
    private int duration;
    private double value;
    private String discription;
    private String signature;
    private String annotation;

    public int getTeid() {
        return teid;
    }

    public void setTeid(int teid) {
        this.teid = teid;
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

    public int getEventtype() {
        return eventtype;
    }

    public void setEventtype(int eventtype) {
        this.eventtype = eventtype;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getSubtype() {
        return subtype;
    }

    public void setSubtype(int subtype) {
        this.subtype = subtype;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
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
        EventTransient that = (EventTransient) o;
        return teid == that.teid &&
                eventtype == that.eventtype &&
                type == that.type &&
                subtype == that.subtype &&
                duration == that.duration &&
                Double.compare(that.value, value) == 0 &&
                Objects.equals(did, that.did) &&
                Objects.equals(time, that.time) &&
                Objects.equals(discription, that.discription) &&
                Objects.equals(signature, that.signature) &&
                Objects.equals(annotation, that.annotation);
    }

    @Override
    public int hashCode() {

        return Objects.hash(teid, did, time, eventtype, type, subtype, duration, value, discription, signature, annotation);
    }
}
