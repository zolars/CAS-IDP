package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "temperature_monitor", schema = "test", catalog = "")
public class TemperatureMonitor {
    private int ppid;
    private String did;
    private Timestamp time;
    private Float temperature;
    private Float humidity;

    @Id
    @Column(name = "ppid", nullable = false)
    public int getPpid() {
        return ppid;
    }

    public void setPpid(int ppid) {
        this.ppid = ppid;
    }

    @Basic
    @Column(name = "did", nullable = true)
    public String getDid() {
        return did;
    }

    public void setDid(String did) {
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
    @Column(name = "temperature", nullable = true, precision = 2)
    public Float getTemperature() {
        return temperature;
    }

    public void setTemperature(Float temperature) {
        this.temperature = temperature;
    }

    @Basic
    @Column(name = "humidity", nullable = true, precision = 2)
    public Float getHumidity() {
        return humidity;
    }

    public void setHumidity(Float humidity) {
        this.humidity = humidity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TemperatureMonitor that = (TemperatureMonitor) o;
        return ppid == that.ppid && Objects.equals(did, that.did) && Objects.equals(time, that.time) && Objects.equals(temperature, that.temperature) && Objects.equals(humidity, that.humidity);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ppid, did, time, temperature, humidity);
    }
}
