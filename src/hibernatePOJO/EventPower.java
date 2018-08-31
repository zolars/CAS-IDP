package hibernatePOJO;

import java.sql.Timestamp;
import java.util.Objects;

public class EventPower {
    private int epid;
    private Integer mpid;
    private String type;
    private String content;
    private Timestamp occurtime;
    private String signature;
    private String annotation;
    private String etype;
    private Integer isMark;

    public int getEpid() {
        return epid;
    }

    public void setEpid(int epid) {
        this.epid = epid;
    }

    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getOccurtime() {
        return occurtime;
    }

    public void setOccurtime(Timestamp occurtime) {
        this.occurtime = occurtime;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getAnnotation() {
        return annotation;
    }

    public void setAnnotation(String annotation) {
        this.annotation = annotation;
    }

    public String getEtype() {
        return etype;
    }

    public void setEtype(String etype) {
        this.etype = etype;
    }

    public Integer getIsMark() {
        return isMark;
    }

    public void setIsMark(Integer isMark) {
        this.isMark = isMark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventPower that = (EventPower) o;
        return epid == that.epid &&
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(type, that.type) &&
                Objects.equals(content, that.content) &&
                Objects.equals(occurtime, that.occurtime) &&
                Objects.equals(signature, that.signature) &&
                Objects.equals(annotation, that.annotation) &&
                Objects.equals(etype, that.etype) &&
                Objects.equals(isMark, that.isMark);
    }

    @Override
    public int hashCode() {

        return Objects.hash(epid, mpid, type, content, occurtime, signature, annotation, etype, isMark);
    }
}
