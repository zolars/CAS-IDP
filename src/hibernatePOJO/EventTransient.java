package hibernatePOJO;

import java.sql.Timestamp;
import java.util.Objects;

public class EventTransient {
    private int teid;
    private Integer mpid;
    private Timestamp time;
    private int eventtype;
    private int type;
    private int subtype;
    private int duration;
    private double value;
    private String discription;

    public int getTeid() {
        return teid;
    }

    public void setTeid(int teid) {
        this.teid = teid;
    }

    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
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
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(time, that.time) &&
                Objects.equals(discription, that.discription);
    }

    @Override
    public int hashCode() {

        return Objects.hash(teid, mpid, time, eventtype, type, subtype, duration, value, discription);
    }
}
