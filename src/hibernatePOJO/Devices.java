package hibernatePOJO;

import java.util.Objects;

public class Devices {
    private String did;
    private String name;
    private String devicetype;
    private String type;
    private String serialno;
    private String iPaddress;
    private String port;
    private String extra;
    private Integer isSms;
    private Integer isAlart;
    private Integer isPlartform;
    private String onlineinterval;
    private String thansentinterval;
    private String uploadinterval;

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDevicetype() {
        return devicetype;
    }

    public void setDevicetype(String devicetype) {
        this.devicetype = devicetype;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSerialno() {
        return serialno;
    }

    public void setSerialno(String serialno) {
        this.serialno = serialno;
    }

    public String getiPaddress() {
        return iPaddress;
    }

    public void setiPaddress(String iPaddress) {
        this.iPaddress = iPaddress;
    }

    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public String getExtra() {
        return extra;
    }

    public void setExtra(String extra) {
        this.extra = extra;
    }

    public Integer getIsSms() {
        return isSms;
    }

    public void setIsSms(Integer isSms) {
        this.isSms = isSms;
    }

    public Integer getIsAlart() {
        return isAlart;
    }

    public void setIsAlart(Integer isAlart) {
        this.isAlart = isAlart;
    }

    public Integer getIsPlartform() {
        return isPlartform;
    }

    public void setIsPlartform(Integer isPlartform) {
        this.isPlartform = isPlartform;
    }

    public String getOnlineinterval() {
        return onlineinterval;
    }

    public void setOnlineinterval(String onlineinterval) {
        this.onlineinterval = onlineinterval;
    }

    public String getThansentinterval() {
        return thansentinterval;
    }

    public void setThansentinterval(String thansentinterval) {
        this.thansentinterval = thansentinterval;
    }

    public String getUploadinterval() {
        return uploadinterval;
    }

    public void setUploadinterval(String uploadinterval) {
        this.uploadinterval = uploadinterval;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Devices devices = (Devices) o;
        return Objects.equals(did, devices.did) &&
                Objects.equals(name, devices.name) &&
                Objects.equals(devicetype, devices.devicetype) &&
                Objects.equals(type, devices.type) &&
                Objects.equals(serialno, devices.serialno) &&
                Objects.equals(iPaddress, devices.iPaddress) &&
                Objects.equals(port, devices.port) &&
                Objects.equals(extra, devices.extra) &&
                Objects.equals(isSms, devices.isSms) &&
                Objects.equals(isAlart, devices.isAlart) &&
                Objects.equals(isPlartform, devices.isPlartform) &&
                Objects.equals(onlineinterval, devices.onlineinterval) &&
                Objects.equals(thansentinterval, devices.thansentinterval) &&
                Objects.equals(uploadinterval, devices.uploadinterval);
    }

    @Override
    public int hashCode() {

        return Objects.hash(did, name, devicetype, type, serialno, iPaddress, port, extra, isSms, isAlart, isPlartform, onlineinterval, thansentinterval, uploadinterval);
    }
}
