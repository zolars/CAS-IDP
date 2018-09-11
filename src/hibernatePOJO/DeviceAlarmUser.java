package hibernatePOJO;

import javax.persistence.Entity;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@javax.persistence.Table(name = "device_alarm_user", schema = "test", catalog = "")
public class DeviceAlarmUser {
    private String id;

    @javax.persistence.Id
    @javax.persistence.Column(name = "id", nullable = false, length = 255)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String did;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "did", nullable = true, length = 255)
    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    private String uid;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "uid", nullable = true, length = 255)
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    private Timestamp stime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "stime", nullable = true)
    public Timestamp getStime() {
        return stime;
    }

    public void setStime(Timestamp stime) {
        this.stime = stime;
    }

    private Timestamp etime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "etime", nullable = true)
    public Timestamp getEtime() {
        return etime;
    }

    public void setEtime(Timestamp etime) {
        this.etime = etime;
    }

    private String precontent;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "precontent", nullable = true, length = 255)
    public String getPrecontent() {
        return precontent;
    }

    public void setPrecontent(String precontent) {
        this.precontent = precontent;
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
                Objects.equals(etime, that.etime) &&
                Objects.equals(precontent, that.precontent);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, did, uid, stime, etime, precontent);
    }
}
