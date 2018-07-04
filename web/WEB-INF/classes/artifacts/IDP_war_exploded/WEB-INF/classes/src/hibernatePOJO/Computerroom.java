package hibernatePOJO;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Computerroom {
    private String rid;
    private String rname;
    private Double tempratureMain;
    private Double tempratureSupport;
    private Double tempratureAssist;
    private Double humidityMain;
    private Double humiditySupport;
    private Double humidityAssist;
    private String upsset;
    private String idp;
    private String didset;
    private String mpidset;

    @Id
    @Column(name = "rid", nullable = false, length = 255)
    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    @Basic
    @Column(name = "rname", nullable = true, length = 255)
    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    @Basic
    @Column(name = "temprature_main", nullable = true, precision = 0)
    public Double getTempratureMain() {
        return tempratureMain;
    }

    public void setTempratureMain(Double tempratureMain) {
        this.tempratureMain = tempratureMain;
    }

    @Basic
    @Column(name = "temprature_support", nullable = true, precision = 0)
    public Double getTempratureSupport() {
        return tempratureSupport;
    }

    public void setTempratureSupport(Double tempratureSupport) {
        this.tempratureSupport = tempratureSupport;
    }

    @Basic
    @Column(name = "temprature_assist", nullable = true, precision = 0)
    public Double getTempratureAssist() {
        return tempratureAssist;
    }

    public void setTempratureAssist(Double tempratureAssist) {
        this.tempratureAssist = tempratureAssist;
    }

    @Basic
    @Column(name = "humidity_main", nullable = true, precision = 0)
    public Double getHumidityMain() {
        return humidityMain;
    }

    public void setHumidityMain(Double humidityMain) {
        this.humidityMain = humidityMain;
    }

    @Basic
    @Column(name = "humidity_support", nullable = true, precision = 0)
    public Double getHumiditySupport() {
        return humiditySupport;
    }

    public void setHumiditySupport(Double humiditySupport) {
        this.humiditySupport = humiditySupport;
    }

    @Basic
    @Column(name = "humidity_assist", nullable = true, precision = 0)
    public Double getHumidityAssist() {
        return humidityAssist;
    }

    public void setHumidityAssist(Double humidityAssist) {
        this.humidityAssist = humidityAssist;
    }

    @Basic
    @Column(name = "upsset", nullable = true, length = 255)
    public String getUpsset() {
        return upsset;
    }

    public void setUpsset(String upsset) {
        this.upsset = upsset;
    }

    @Basic
    @Column(name = "idp", nullable = true, length = 255)
    public String getIdp() {
        return idp;
    }

    public void setIdp(String idp) {
        this.idp = idp;
    }

    @Basic
    @Column(name = "didset", nullable = true, length = 255)
    public String getDidset() {
        return didset;
    }

    public void setDidset(String didset) {
        this.didset = didset;
    }

    @Basic
    @Column(name = "mpidset", nullable = true, length = 255)
    public String getMpidset() {
        return mpidset;
    }

    public void setMpidset(String mpidset) {
        this.mpidset = mpidset;
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
                Objects.equals(idp, that.idp) &&
                Objects.equals(didset, that.didset) &&
                Objects.equals(mpidset, that.mpidset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(rid, rname, tempratureMain, tempratureSupport, tempratureAssist, humidityMain, humiditySupport, humidityAssist, upsset, idp, didset, mpidset);
    }
}
