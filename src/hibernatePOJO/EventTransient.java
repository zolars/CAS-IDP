package hibernatePOJO;

import java.util.Objects;

public class EventTransient {
    private int teid;
    private int mpid;
    private String time;
    private Integer type;
    private Integer duration;
    private Double value;
    private Integer subtype;

    public int getTeid() {
        return teid;
    }

    public void setTeid(int teid) {
        this.teid = teid;
    }

    public int getMpid() {
        return mpid;
    }

    public void setMpid(int mpid) {
        this.mpid = mpid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }

    public Integer getSubtype() {
        return subtype;
    }

    public void setSubtype(Integer subtype) {
        this.subtype = subtype;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventTransient that = (EventTransient) o;
        return teid == that.teid &&
                mpid == that.mpid &&
                Objects.equals(time, that.time) &&
                Objects.equals(type, that.type) &&
                Objects.equals(duration, that.duration) &&
                Objects.equals(value, that.value) &&
                Objects.equals(subtype, that.subtype);
    }

    @Override
    public int hashCode() {

        return Objects.hash(teid, mpid, time, type, duration, value, subtype);
    }
}
