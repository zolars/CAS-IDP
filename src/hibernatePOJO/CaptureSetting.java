package hibernatePOJO;

import javax.persistence.Entity;
import java.util.Objects;

@Entity
@javax.persistence.Table(name = "capture_setting", schema = "test", catalog = "")
public class CaptureSetting {
    private int id;

    @javax.persistence.Id
    @javax.persistence.Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String ip;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "ip", nullable = true, length = 255)
    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    private Integer port1;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "port1", nullable = true)
    public Integer getPort1() {
        return port1;
    }

    public void setPort1(Integer port1) {
        this.port1 = port1;
    }

    private Integer port2;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "port2", nullable = true)
    public Integer getPort2() {
        return port2;
    }

    public void setPort2(Integer port2) {
        this.port2 = port2;
    }

    private Integer onlineinterval;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "onlineinterval", nullable = true)
    public Integer getOnlineinterval() {
        return onlineinterval;
    }

    public void setOnlineinterval(Integer onlineinterval) {
        this.onlineinterval = onlineinterval;
    }

    private Integer thansentinterval;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "thansentinterval", nullable = true)
    public Integer getThansentinterval() {
        return thansentinterval;
    }

    public void setThansentinterval(Integer thansentinterval) {
        this.thansentinterval = thansentinterval;
    }

    private Integer uploadinterval;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "uploadinterval", nullable = true)
    public Integer getUploadinterval() {
        return uploadinterval;
    }

    public void setUploadinterval(Integer uploadinterval) {
        this.uploadinterval = uploadinterval;
    }

    private int mpid;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "mpid", nullable = false)
    public int getMpid() {
        return mpid;
    }

    public void setMpid(int mpid) {
        this.mpid = mpid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CaptureSetting that = (CaptureSetting) o;
        return id == that.id &&
                mpid == that.mpid &&
                Objects.equals(ip, that.ip) &&
                Objects.equals(port1, that.port1) &&
                Objects.equals(port2, that.port2) &&
                Objects.equals(onlineinterval, that.onlineinterval) &&
                Objects.equals(thansentinterval, that.thansentinterval) &&
                Objects.equals(uploadinterval, that.uploadinterval);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, ip, port1, port2, onlineinterval, thansentinterval, uploadinterval, mpid);
    }
}
