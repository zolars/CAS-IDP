package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "generator_monitor", schema = "test", catalog = "")
public class GeneratorMonitor {
    private int generatorid;
    private Integer did;
    private Timestamp time;
    private Double apower;
    private Double bpower;
    private Double ccpower;
    private Double totalpower;
    private Double generatorvoltage;
    private Double batteryvoltage;
    private Double watertemperature;
    private Double oilpressure;
    private Double speed;
    private Double frequency;
    private Double controlmode;

    @Id
    @Column(name = "generatorid", nullable = false)
    public int getGeneratorid() {
        return generatorid;
    }

    public void setGeneratorid(int generatorid) {
        this.generatorid = generatorid;
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
    @Column(name = "time", nullable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "Apower", nullable = true, precision = 0)
    public Double getApower() {
        return apower;
    }

    public void setApower(Double apower) {
        this.apower = apower;
    }

    @Basic
    @Column(name = "Bpower", nullable = true, precision = 0)
    public Double getBpower() {
        return bpower;
    }

    public void setBpower(Double bpower) {
        this.bpower = bpower;
    }

    @Basic
    @Column(name = "Ccpower", nullable = true, precision = 0)
    public Double getCcpower() {
        return ccpower;
    }

    public void setCcpower(Double ccpower) {
        this.ccpower = ccpower;
    }

    @Basic
    @Column(name = "totalpower", nullable = true, precision = 0)
    public Double getTotalpower() {
        return totalpower;
    }

    public void setTotalpower(Double totalpower) {
        this.totalpower = totalpower;
    }

    @Basic
    @Column(name = "generatorvoltage", nullable = true, precision = 0)
    public Double getGeneratorvoltage() {
        return generatorvoltage;
    }

    public void setGeneratorvoltage(Double generatorvoltage) {
        this.generatorvoltage = generatorvoltage;
    }

    @Basic
    @Column(name = "batteryvoltage", nullable = true, precision = 0)
    public Double getBatteryvoltage() {
        return batteryvoltage;
    }

    public void setBatteryvoltage(Double batteryvoltage) {
        this.batteryvoltage = batteryvoltage;
    }

    @Basic
    @Column(name = "watertemperature", nullable = true, precision = 0)
    public Double getWatertemperature() {
        return watertemperature;
    }

    public void setWatertemperature(Double watertemperature) {
        this.watertemperature = watertemperature;
    }

    @Basic
    @Column(name = "oilpressure", nullable = true, precision = 0)
    public Double getOilpressure() {
        return oilpressure;
    }

    public void setOilpressure(Double oilpressure) {
        this.oilpressure = oilpressure;
    }

    @Basic
    @Column(name = "speed", nullable = true, precision = 0)
    public Double getSpeed() {
        return speed;
    }

    public void setSpeed(Double speed) {
        this.speed = speed;
    }

    @Basic
    @Column(name = "frequency", nullable = true, precision = 0)
    public Double getFrequency() {
        return frequency;
    }

    public void setFrequency(Double frequency) {
        this.frequency = frequency;
    }

    @Basic
    @Column(name = "controlmode", nullable = true, precision = 0)
    public Double getControlmode() {
        return controlmode;
    }

    public void setControlmode(Double controlmode) {
        this.controlmode = controlmode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        GeneratorMonitor that = (GeneratorMonitor) o;
        return generatorid == that.generatorid &&
                Objects.equals(did, that.did) &&
                Objects.equals(time, that.time) &&
                Objects.equals(apower, that.apower) &&
                Objects.equals(bpower, that.bpower) &&
                Objects.equals(ccpower, that.ccpower) &&
                Objects.equals(totalpower, that.totalpower) &&
                Objects.equals(generatorvoltage, that.generatorvoltage) &&
                Objects.equals(batteryvoltage, that.batteryvoltage) &&
                Objects.equals(watertemperature, that.watertemperature) &&
                Objects.equals(oilpressure, that.oilpressure) &&
                Objects.equals(speed, that.speed) &&
                Objects.equals(frequency, that.frequency) &&
                Objects.equals(controlmode, that.controlmode);
    }

    @Override
    public int hashCode() {

        return Objects.hash(generatorid, did, time, apower, bpower, ccpower, totalpower, generatorvoltage, batteryvoltage, watertemperature, oilpressure, speed, frequency, controlmode);
    }
}
