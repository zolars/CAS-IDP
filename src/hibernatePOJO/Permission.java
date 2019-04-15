package hibernatePOJO;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Permission {
    private int pid;
    private Integer parentpid;
    private String permissionname;

    @Id
    @Column(name = "pid", nullable = false)
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    @Basic
    @Column(name = "parentpid", nullable = true)
    public Integer getParentpid() {
        return parentpid;
    }

    public void setParentpid(Integer parentpid) {
        this.parentpid = parentpid;
    }

    @Basic
    @Column(name = "permissionname", nullable = true, length = 255)
    public String getPermissionname() {
        return permissionname;
    }

    public void setPermissionname(String permissionname) {
        this.permissionname = permissionname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Permission that = (Permission) o;
        return pid == that.pid && Objects.equals(parentpid, that.parentpid) && Objects.equals(permissionname,
                that.permissionname);
    }

    @Override
    public int hashCode() {

        return Objects.hash(pid, parentpid, permissionname);
    }
}
