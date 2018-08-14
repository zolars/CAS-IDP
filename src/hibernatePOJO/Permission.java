package hibernatePOJO;

import java.util.Objects;

public class Permission {
    private int pid;
    private Integer parentpid;
    private String permissionname;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public Integer getParentpid() {
        return parentpid;
    }

    public void setParentpid(Integer parentpid) {
        this.parentpid = parentpid;
    }

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
        return pid == that.pid &&
                Objects.equals(parentpid, that.parentpid) &&
                Objects.equals(permissionname, that.permissionname);
    }

    @Override
    public int hashCode() {

        return Objects.hash(pid, parentpid, permissionname);
    }
}
