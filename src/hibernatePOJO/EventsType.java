package hibernatePOJO;

import java.util.Objects;

public class EventsType {
    private int cid;
    private String code;
    private Integer pid;
    private String type;
    private String subtype;
    private String devicename;
    private Integer prior;
    private String classify;
    private String description;
    private Short zbj;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSubtype() {
        return subtype;
    }

    public void setSubtype(String subtype) {
        this.subtype = subtype;
    }

    public String getDevicename() {
        return devicename;
    }

    public void setDevicename(String devicename) {
        this.devicename = devicename;
    }

    public Integer getPrior() {
        return prior;
    }

    public void setPrior(Integer prior) {
        this.prior = prior;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Short getZbj() {
        return zbj;
    }

    public void setZbj(Short zbj) {
        this.zbj = zbj;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventsType that = (EventsType) o;
        return cid == that.cid &&
                Objects.equals(code, that.code) &&
                Objects.equals(pid, that.pid) &&
                Objects.equals(type, that.type) &&
                Objects.equals(subtype, that.subtype) &&
                Objects.equals(devicename, that.devicename) &&
                Objects.equals(prior, that.prior) &&
                Objects.equals(classify, that.classify) &&
                Objects.equals(description, that.description) &&
                Objects.equals(zbj, that.zbj);
    }

    @Override
    public int hashCode() {

        return Objects.hash(cid, code, pid, type, subtype, devicename, prior, classify, description, zbj);
    }
}
