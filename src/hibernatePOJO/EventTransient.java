package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "event_transient", schema = "test", catalog = "")
public class EventTransient {
    private int teid;
    private Integer mpid;
    private String time;
    private int eventtype;
    private int type;
    private int subtype;
    private int duration;
    private double value;
    private String discription;

    @Id
    @Column(name = "teid", nullable = false)
    public int getTeid() {
        return teid;
    }

    public void setTeid(int teid) {
        this.teid = teid;
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
    @Column(name = "time", nullable = false, length = 255)
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Basic
    @Column(name = "eventtype", nullable = false)
    public int getEventtype() {
        return eventtype;
    }

    public void setEventtype(int eventtype) {
        this.eventtype = eventtype;
    }

    @Basic
    @Column(name = "type", nullable = false)
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Basic
    @Column(name = "subtype", nullable = false)
    public int getSubtype() {
        return subtype;
    }

    public void setSubtype(int subtype) {
        this.subtype = subtype;
    }

    @Basic
    @Column(name = "duration", nullable = false)
    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    @Basic
    @Column(name = "value", nullable = false, precision = 0)
    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    @Basic
    @Column(name = "discription", nullable = true, length = 255)
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
