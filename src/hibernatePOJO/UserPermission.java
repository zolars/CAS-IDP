package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user_permission", schema = "test", catalog = "")
public class UserPermission {
    private String uid;
    private String pidset;

    @Id
    @Column(name = "uid", nullable = false, length = 255)
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "pidset", nullable = true, length = 255)
    public String getPidset() {
        return pidset;
    }

    public void setPidset(String pidset) {
        this.pidset = pidset;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserPermission that = (UserPermission) o;
        return Objects.equals(uid, that.uid) &&
                Objects.equals(pidset, that.pidset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(uid, pidset);
    }
}
