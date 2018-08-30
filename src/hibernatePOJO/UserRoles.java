package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user_roles", schema = "test", catalog = "")
public class UserRoles {
    private String uid;
    private String rid;

    @Id
    @Column(name = "uid", nullable = false, length = 255)
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "rid", nullable = true, length = 255)
    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserRoles userRoles = (UserRoles) o;
        return Objects.equals(uid, userRoles.uid) &&
                Objects.equals(rid, userRoles.rid);
    }

    @Override
    public int hashCode() {

        return Objects.hash(uid, rid);
    }
}
