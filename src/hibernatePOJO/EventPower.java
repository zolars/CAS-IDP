package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "event_power", schema = "Test", catalog = "")
public class EventPower {
    private int epid;
    private Integer mpid;
    private String name;
    private String location;
    private String type;
    private String content;
    private Timestamp occurtime;
    private int ppid;
    private String signature;
    private String annotation;

    @Id
    @Column(name = "epid", nullable = false)
    public int getEpid() {
        return epid;
    }

    public void setEpid(int epid) {
        this.epid = epid;
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
    @Column(name = "name", nullable = false, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "location", nullable = true, length = 255)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Basic
    @Column(name = "type", nullable = false, length = 255)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "content", nullable = true, length = 255)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "occurtime", nullable = true)
    public Timestamp getOccurtime() {
        return occurtime;
    }

    public void setOccurtime(Timestamp occurtime) {
        this.occurtime = occurtime;
    }

    @Basic
    @Column(name = "ppid", nullable = false)
    public int getPpid() {
        return ppid;
    }

    public void setPpid(int ppid) {
        this.ppid = ppid;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventPower that = (EventPower) o;
        return epid == that.epid &&
                ppid == that.ppid &&
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(name, that.name) &&
                Objects.equals(location, that.location) &&
                Objects.equals(type, that.type) &&
                Objects.equals(content, that.content) &&
                Objects.equals(occurtime, that.occurtime) &&
                Objects.equals(signature, that.signature) &&
                Objects.equals(annotation, that.annotation);
    }

    @Override
    public int hashCode() {

        return Objects.hash(epid, mpid, name, location, type, content, occurtime, ppid, signature, annotation);
    }
}
