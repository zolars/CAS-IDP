package hibernatePOJO;

import java.sql.Date;
import java.util.Objects;

public class EventCtrl {
    private int teid;
    private String did;
    private Date time;
    private Integer eventType;
    private String discription;
    private String alarm;

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

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getEventType() {
        return eventType;
    }

    public void setEventType(Integer eventType) {
        this.eventType = eventType;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public String getAlarm() {
        return alarm;
    }

    public void setAlarm(String alarm) {
        this.alarm = alarm;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventCtrl eventCtrl = (EventCtrl) o;
        return teid == eventCtrl.teid &&
                Objects.equals(did, eventCtrl.did) &&
                Objects.equals(time, eventCtrl.time) &&
                Objects.equals(eventType, eventCtrl.eventType) &&
                Objects.equals(discription, eventCtrl.discription) &&
                Objects.equals(alarm, eventCtrl.alarm);
    }

    @Override
    public int hashCode() {

        return Objects.hash(teid, did, time, eventType, discription, alarm);
    }
}
