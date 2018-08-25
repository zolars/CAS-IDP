package hibernatePOJO;

import java.util.Objects;

public class CaptureSetting {
    private int mpid;
    private String ip;
    private Integer port1;
    private Integer port2;
    private Integer onlineinterval;
    private Integer thansentinterval;

    public int getMpid() {
        return mpid;
    }

    public void setMpid(int mpid) {
        this.mpid = mpid;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Integer getPort1() {
        return port1;
    }

    public void setPort1(Integer port1) {
        this.port1 = port1;
    }

    public Integer getPort2() {
        return port2;
    }

    public void setPort2(Integer port2) {
        this.port2 = port2;
    }

    public Integer getOnlineinterval() {
        return onlineinterval;
    }

    public void setOnlineinterval(Integer onlineinterval) {
        this.onlineinterval = onlineinterval;
    }

    public Integer getThansentinterval() {
        return thansentinterval;
    }

    public void setThansentinterval(Integer thansentinterval) {
        this.thansentinterval = thansentinterval;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CaptureSetting that = (CaptureSetting) o;
        return mpid == that.mpid &&
                Objects.equals(ip, that.ip) &&
                Objects.equals(port1, that.port1) &&
                Objects.equals(port2, that.port2) &&
                Objects.equals(onlineinterval, that.onlineinterval) &&
                Objects.equals(thansentinterval, that.thansentinterval);
    }

    @Override
    public int hashCode() {

        return Objects.hash(mpid, ip, port1, port2, onlineinterval, thansentinterval);
    }
}
