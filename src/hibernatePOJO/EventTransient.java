package hibernatePOJO;

import java.util.Objects;

public class EventTransient {
    private int teid;
    private Integer mpid;
    private String time;
    private int type;
    private int duration;
    private double value;
    private int subtype;
    private String discription;
    private Integer eventtype;

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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
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

    public int getSubtype() {
        return subtype;
    }

    public void setSubtype(int subtype) {
        this.subtype = subtype;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public Integer getEventtype() {
        return eventtype;
    }

    public void setEventtype(Integer eventtype) {
        this.eventtype = eventtype;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventTransient that = (EventTransient) o;
        return teid == that.teid &&
                type == that.type &&
                duration == that.duration &&
                Double.compare(that.value, value) == 0 &&
                subtype == that.subtype &&
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(time, that.time) &&
                Objects.equals(discription, that.discription) &&
                Objects.equals(eventtype, that.eventtype);
    }

    @Override
    public int hashCode() {

        return Objects.hash(teid, mpid, time, type, duration, value, subtype, discription, eventtype);
    }
}
