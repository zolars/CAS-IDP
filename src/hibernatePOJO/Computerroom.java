package hibernatePOJO;

import javax.persistence.Entity;
import java.util.Objects;

@Entity
public class Computerroom {
    private String rid;

    @javax.persistence.Id
    @javax.persistence.Column(name = "rid", nullable = false, length = 255)
    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    private String rname;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "rname", nullable = true, length = 255)
    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    private Double tempratureMain;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "temprature_main", nullable = true, precision = 0)
    public Double getTempratureMain() {
        return tempratureMain;
    }

    public void setTempratureMain(Double tempratureMain) {
        this.tempratureMain = tempratureMain;
    }

    private Double tempratureSupport;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "temprature_support", nullable = true, precision = 0)
    public Double getTempratureSupport() {
        return tempratureSupport;
    }

    public void setTempratureSupport(Double tempratureSupport) {
        this.tempratureSupport = tempratureSupport;
    }

    private Double tempratureAssist;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "temprature_assist", nullable = true, precision = 0)
    public Double getTempratureAssist() {
        return tempratureAssist;
    }

    public void setTempratureAssist(Double tempratureAssist) {
        this.tempratureAssist = tempratureAssist;
    }

    private Double humidityMain;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "humidity_main", nullable = true, precision = 0)
    public Double getHumidityMain() {
        return humidityMain;
    }

    public void setHumidityMain(Double humidityMain) {
        this.humidityMain = humidityMain;
    }

    private Double humiditySupport;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "humidity_support", nullable = true, precision = 0)
    public Double getHumiditySupport() {
        return humiditySupport;
    }

    public void setHumiditySupport(Double humiditySupport) {
        this.humiditySupport = humiditySupport;
    }

    private Double humidityAssist;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "humidity_assist", nullable = true, precision = 0)
    public Double getHumidityAssist() {
        return humidityAssist;
    }

    public void setHumidityAssist(Double humidityAssist) {
        this.humidityAssist = humidityAssist;
    }

    private String upsset;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "upsset", nullable = true, length = 255)
    public String getUpsset() {
        return upsset;
    }

    public void setUpsset(String upsset) {
        this.upsset = upsset;
    }

    private String didset;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "didset", nullable = true, length = 255)
    public String getDidset() {
        return didset;
    }

    public void setDidset(String didset) {
        this.didset = didset;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Computerroom that = (Computerroom) o;
        return Objects.equals(rid, that.rid) &&
                Objects.equals(rname, that.rname) &&
                Objects.equals(tempratureMain, that.tempratureMain) &&
                Objects.equals(tempratureSupport, that.tempratureSupport) &&
                Objects.equals(tempratureAssist, that.tempratureAssist) &&
                Objects.equals(humidityMain, that.humidityMain) &&
                Objects.equals(humiditySupport, that.humiditySupport) &&
                Objects.equals(humidityAssist, that.humidityAssist) &&
                Objects.equals(upsset, that.upsset) &&
                Objects.equals(didset, that.didset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(rid, rname, tempratureMain, tempratureSupport, tempratureAssist, humidityMain, humiditySupport, humidityAssist, upsset, didset);
    }
}
