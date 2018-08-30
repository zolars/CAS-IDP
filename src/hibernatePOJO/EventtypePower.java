package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "eventtype_power", schema = "test", catalog = "")
public class EventtypePower {
    private int eid;
    private String name;
    private String priorty;

    @Id
    @Column(name = "eid", nullable = false)
    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
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
    @Column(name = "priorty", nullable = true, length = 255)
    public String getPriorty() {
        return priorty;
    }

    public void setPriorty(String priorty) {
        this.priorty = priorty;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventtypePower that = (EventtypePower) o;
        return eid == that.eid &&
                Objects.equals(name, that.name) &&
                Objects.equals(priorty, that.priorty);
    }

    @Override
    public int hashCode() {

        return Objects.hash(eid, name, priorty);
    }
}
