package hibernatePOJO;

import java.sql.Timestamp;
import java.util.Objects;

public class DeviceAlarmUser {
    private String id;
    private String did;
    private String uid;
    private Timestamp stime;
    private Timestamp etime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Timestamp getStime() {
        return stime;
    }

    public void setStime(Timestamp stime) {
        this.stime = stime;
    }

    public Timestamp getEtime() {
        return etime;
    }

    public void setEtime(Timestamp etime) {
        this.etime = etime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DeviceAlarmUser that = (DeviceAlarmUser) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(did, that.did) &&
                Objects.equals(uid, that.uid) &&
                Objects.equals(stime, that.stime) &&
                Objects.equals(etime, that.etime);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, did, uid, stime, etime);
    }
}
