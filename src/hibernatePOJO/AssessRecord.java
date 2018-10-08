package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "assess_record", schema = "test", catalog = "")
public class AssessRecord {
    private int aid;
    private Integer did;
    private Integer degree;
    private Integer teid;
    private Integer eventclass;
    private Timestamp time;

    @Id
    @Column(name = "aid", nullable = false)
    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    @Basic
    @Column(name = "did", nullable = true)
    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    @Basic
    @Column(name = "degree", nullable = true)
    public Integer getDegree() {
        return degree;
    }

    public void setDegree(Integer degree) {
        this.degree = degree;
    }

    @Basic
    @Column(name = "teid", nullable = true)
    public Integer getTeid() {
        return teid;
    }

    public void setTeid(Integer teid) {
        this.teid = teid;
    }

    @Basic
    @Column(name = "eventclass", nullable = true)
    public Integer getEventclass() {
        return eventclass;
    }

    public void setEventclass(Integer eventclass) {
        this.eventclass = eventclass;
    }

    @Basic
    @Column(name = "time", nullable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AssessRecord that = (AssessRecord) o;
        return aid == that.aid &&
                Objects.equals(did, that.did) &&
                Objects.equals(degree, that.degree) &&
                Objects.equals(teid, that.teid) &&
                Objects.equals(eventclass, that.eventclass) &&
                Objects.equals(time, that.time);
    }

    @Override
    public int hashCode() {
        return Objects.hash(aid, did, degree, teid, eventclass, time);
    }
}
