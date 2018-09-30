package hibernatePOJO;

import java.util.Objects;

public class AssessRecord {
    private int aid;
    private Integer did;
    private Integer degree;
    private Integer teid;
    private Integer eventclass;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getDegree() {
        return degree;
    }

    public void setDegree(Integer degree) {
        this.degree = degree;
    }

    public Integer getTeid() {
        return teid;
    }

    public void setTeid(Integer teid) {
        this.teid = teid;
    }

    public Integer getEventclass() {
        return eventclass;
    }

    public void setEventclass(Integer eventclass) {
        this.eventclass = eventclass;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AssessRecord record = (AssessRecord) o;
        return aid == record.aid &&
                Objects.equals(did, record.did) &&
                Objects.equals(degree, record.degree) &&
                Objects.equals(teid, record.teid) &&
                Objects.equals(eventclass, record.eventclass);
    }

    @Override
    public int hashCode() {

        return Objects.hash(aid, did, degree, teid, eventclass);
    }
}
