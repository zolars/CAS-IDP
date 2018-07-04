package hibernatePOJO;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Roles {
    private String rid;
    private String rolesname;

    @Id
    @Column(name = "rid", nullable = false, length = 255)
    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    @Basic
    @Column(name = "rolesname", nullable = false, length = 255)
    public String getRolesname() {
        return rolesname;
    }

    public void setRolesname(String rolesname) {
        this.rolesname = rolesname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Roles roles = (Roles) o;
        return Objects.equals(rid, roles.rid) &&
                Objects.equals(rolesname, roles.rolesname);
    }

    @Override
    public int hashCode() {

        return Objects.hash(rid, rolesname);
    }
}
