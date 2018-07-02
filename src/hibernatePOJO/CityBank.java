package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "city_bank", schema = "Test", catalog = "")
public class CityBank {
    private String cbid;
    private String cbname;
    private String compRoom;

    @Id
    @Column(name = "cbid", nullable = false, length = 255)
    public String getCbid() {
        return cbid;
    }

    public void setCbid(String cbid) {
        this.cbid = cbid;
    }

    @Basic
    @Column(name = "cbname", nullable = true, length = 255)
    public String getCbname() {
        return cbname;
    }

    public void setCbname(String cbname) {
        this.cbname = cbname;
    }

    @Basic
    @Column(name = "compRoom", nullable = true, length = 255)
    public String getCompRoom() {
        return compRoom;
    }

    public void setCompRoom(String compRoom) {
        this.compRoom = compRoom;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CityBank cityBank = (CityBank) o;
        return Objects.equals(cbid, cityBank.cbid) &&
                Objects.equals(cbname, cityBank.cbname) &&
                Objects.equals(compRoom, cityBank.compRoom);
    }

    @Override
    public int hashCode() {

        return Objects.hash(cbid, cbname, compRoom);
    }
}
