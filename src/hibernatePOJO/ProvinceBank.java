package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "province_bank", schema = "Test", catalog = "")
public class ProvinceBank {
    private String pbid;
    private String pbname;
    private String cbidset;

    @Id
    @Column(name = "pbid", nullable = false, length = 255)
    public String getPbid() {
        return pbid;
    }

    public void setPbid(String pbid) {
        this.pbid = pbid;
    }

    @Basic
    @Column(name = "pbname", nullable = false, length = 255)
    public String getPbname() {
        return pbname;
    }

    public void setPbname(String pbname) {
        this.pbname = pbname;
    }

    @Basic
    @Column(name = "cbidset", nullable = true, length = 255)
    public String getCbidset() {
        return cbidset;
    }

    public void setCbidset(String cbidset) {
        this.cbidset = cbidset;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProvinceBank that = (ProvinceBank) o;
        return Objects.equals(pbid, that.pbid) &&
                Objects.equals(pbname, that.pbname) &&
                Objects.equals(cbidset, that.cbidset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(pbid, pbname, cbidset);
    }
}
