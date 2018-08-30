package hibernatePOJO;

import javax.persistence.Entity;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@javax.persistence.Table(name = "battery_monitor", schema = "test", catalog = "")
public class BatteryMonitor {
    private Integer batteryid;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "batteryid", nullable = true)
    public Integer getBatteryid() {
        return batteryid;
    }

    public void setBatteryid(Integer batteryid) {
        this.batteryid = batteryid;
    }

    private Integer did;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "did", nullable = true)
    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    private Timestamp time;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "time", nullable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    private String aBvoltage;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "ABvoltage", nullable = true, length = 255)
    public String getaBvoltage() {
        return aBvoltage;
    }

    public void setaBvoltage(String aBvoltage) {
        this.aBvoltage = aBvoltage;
    }

    private String bCvoltage;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "BCvoltage", nullable = true, length = 255)
    public String getbCvoltage() {
        return bCvoltage;
    }

    public void setbCvoltage(String bCvoltage) {
        this.bCvoltage = bCvoltage;
    }

    private String cAvoltage;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "CAvoltage", nullable = true, length = 255)
    public String getcAvoltage() {
        return cAvoltage;
    }

    public void setcAvoltage(String cAvoltage) {
        this.cAvoltage = cAvoltage;
    }

    private String avoltage;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "Avoltage", nullable = true, length = 255)
    public String getAvoltage() {
        return avoltage;
    }

    public void setAvoltage(String avoltage) {
        this.avoltage = avoltage;
    }

    private String bvoltage;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "Bvoltage", nullable = true, length = 255)
    public String getBvoltage() {
        return bvoltage;
    }

    public void setBvoltage(String bvoltage) {
        this.bvoltage = bvoltage;
    }

    private String cvoltage;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "Cvoltage", nullable = true, length = 255)
    public String getCvoltage() {
        return cvoltage;
    }

    public void setCvoltage(String cvoltage) {
        this.cvoltage = cvoltage;
    }

    private String acurrent;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "Acurrent", nullable = true, length = 255)
    public String getAcurrent() {
        return acurrent;
    }

    public void setAcurrent(String acurrent) {
        this.acurrent = acurrent;
    }

    private String bcurrent;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "Bcurrent", nullable = true, length = 255)
    public String getBcurrent() {
        return bcurrent;
    }

    public void setBcurrent(String bcurrent) {
        this.bcurrent = bcurrent;
    }

    private String ccurrent;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "Ccurrent", nullable = true, length = 255)
    public String getCcurrent() {
        return ccurrent;
    }

    public void setCcurrent(String ccurrent) {
        this.ccurrent = ccurrent;
    }

    private String activepower;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "activepower", nullable = true, length = 255)
    public String getActivepower() {
        return activepower;
    }

    public void setActivepower(String activepower) {
        this.activepower = activepower;
    }

    private String reactivepower;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "reactivepower", nullable = true, length = 255)
    public String getReactivepower() {
        return reactivepower;
    }

    public void setReactivepower(String reactivepower) {
        this.reactivepower = reactivepower;
    }

    private String szpower;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "szpower", nullable = true, length = 255)
    public String getSzpower() {
        return szpower;
    }

    public void setSzpower(String szpower) {
        this.szpower = szpower;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BatteryMonitor that = (BatteryMonitor) o;
        return Objects.equals(batteryid, that.batteryid) &&
                Objects.equals(did, that.did) &&
                Objects.equals(time, that.time) &&
                Objects.equals(aBvoltage, that.aBvoltage) &&
                Objects.equals(bCvoltage, that.bCvoltage) &&
                Objects.equals(cAvoltage, that.cAvoltage) &&
                Objects.equals(avoltage, that.avoltage) &&
                Objects.equals(bvoltage, that.bvoltage) &&
                Objects.equals(cvoltage, that.cvoltage) &&
                Objects.equals(acurrent, that.acurrent) &&
                Objects.equals(bcurrent, that.bcurrent) &&
                Objects.equals(ccurrent, that.ccurrent) &&
                Objects.equals(activepower, that.activepower) &&
                Objects.equals(reactivepower, that.reactivepower) &&
                Objects.equals(szpower, that.szpower);
    }

    @Override
    public int hashCode() {

        return Objects.hash(batteryid, did, time, aBvoltage, bCvoltage, cAvoltage, avoltage, bvoltage, cvoltage, acurrent, bcurrent, ccurrent, activepower, reactivepower, szpower);
    }
}
