package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "roles_permission", schema = "Test", catalog = "")
public class RolesPermission {
    private int id;
    private String rid;
    private String pid;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "rid", nullable = true, length = 255)
    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    @Basic
    @Column(name = "pid", nullable = true, length = 255)
    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RolesPermission that = (RolesPermission) o;
        return id == that.id &&
                Objects.equals(rid, that.rid) &&
                Objects.equals(pid, that.pid);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, rid, pid);
    }
}
