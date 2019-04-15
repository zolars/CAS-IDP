package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "event_ctrl", schema = "test", catalog = "")
public class EventCtrl {
    private int teid;
    private Integer cid;
    private String value;
    private String limitval;
    private Integer status;
    private String did;
    private Timestamp time;
    private String duration;
    private String signature;
    private String annotation;
    private Integer subtype;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getTeid() {
        return teid;
    }

    public void setTeid(int teid) {
        this.teid = teid;
    }

    @Basic
    @Column(name = "cid", nullable = true)
    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    @Basic
    @Column(name = "value", nullable = true, length = 255)
    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Basic
    @Column(name = "limitval", nullable = true, length = 255)
    public String getLimitval() {
        return limitval;
    }

    public void setLimitval(String limitval) {
        this.limitval = limitval;
    }

    @Basic
    @Column(name = "status", nullable = true)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Basic
    @Column(name = "did", nullable = true, length = -1)
    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    @Basic
    @Column(name = "time", nullable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "duration", nullable = true, length = 255)
    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    @Basic
    @Column(name = "signature", nullable = true, length = 255)
    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    @Basic
    @Column(name = "annotation", nullable = true, length = 255)
    public String getAnnotation() {
        return annotation;
    }

    public void setAnnotation(String annotation) {
        this.annotation = annotation;
    }

    @Basic
    @Column(name = "subtype", nullable = true)
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
        EventCtrl eventCtrl = (EventCtrl) o;
        return teid == eventCtrl.teid && Objects.equals(cid, eventCtrl.cid) && Objects.equals(value, eventCtrl.value) && Objects.equals(limitval, eventCtrl.limitval) && Objects.equals(status, eventCtrl.status) && Objects.equals(did, eventCtrl.did) && Objects.equals(time, eventCtrl.time) && Objects.equals(duration, eventCtrl.duration) && Objects.equals(signature, eventCtrl.signature) && Objects.equals(annotation, eventCtrl.annotation) && Objects.equals(subtype, eventCtrl.subtype);
    }

    @Override
    public int hashCode() {
        return Objects.hash(teid, cid, value, limitval, status, did, time, duration, signature, annotation, subtype);
    }
}
