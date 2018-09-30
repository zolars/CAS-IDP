package hibernatePOJO;
import javax.persistence.*;
import java.util.Objects;
@Entity
@Table(name = "devices_standard", schema = "test", catalog = "")
public class DevicesStandard {
    private int cid;
    private Double value;
    @Id
    @Column(name = "cid", nullable = false)
    public int getCid() {
        return cid;
    }
    public void setCid(int cid) {
        this.cid = cid;
    }
    @Basic
    @Column(name = "value", nullable = true, precision = 3)
    public Double getValue() {
        return value;
    }
    public void setValue(Double value) {
        this.value = value;
    }
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DevicesStandard that = (DevicesStandard) o;
        return cid == that.cid &&
                Objects.equals(value, that.value);
    }
    @Override
    public int hashCode() {
        return Objects.hash(cid, value);
    }
}