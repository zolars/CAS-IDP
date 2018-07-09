package hibernatePOJO;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Devices {
    private String did;
    private String name;
    private String devicetype;
    private String type;
    private String serialno;
    private String iPaddress;
    private String port;
    private String extra;
    private String location;

    @Id
    @Column(name = "did", nullable = false, length = 255)
    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "devicetype", nullable = true, length = 255)
    public String getDevicetype() {
        return devicetype;
    }

    public void setDevicetype(String devicetype) {
        this.devicetype = devicetype;
    }

    @Basic
    @Column(name = "type", nullable = true, length = 255)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "serialno", nullable = true, length = 255)
    public String getSerialno() {
        return serialno;
    }

    public void setSerialno(String serialno) {
        this.serialno = serialno;
    }

    @Basic
    @Column(name = "IPaddress", nullable = true, length = 255)
    public String getiPaddress() {
        return iPaddress;
    }

    public void setiPaddress(String iPaddress) {
        this.iPaddress = iPaddress;
    }

    @Basic
    @Column(name = "port", nullable = true, length = 255)
    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    @Basic
    @Column(name = "extra", nullable = true, length = 255)
    public String getExtra() {
        return extra;
    }

    public void setExtra(String extra) {
        this.extra = extra;
    }

    @Basic
    @Column(name = "location", nullable = true, length = 255)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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
                Objects.equals(location, devices.location);
    }

    @Override
    public int hashCode() {

        return Objects.hash(did, name, devicetype, type, serialno, iPaddress, port, extra, location);
    }
}
