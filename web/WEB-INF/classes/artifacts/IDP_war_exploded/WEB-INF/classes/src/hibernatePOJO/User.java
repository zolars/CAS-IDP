package hibernatePOJO;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class User {
    private String uid;
    private String uname;
    private String password;
    private String pbid;
    private String cbid;
    private String chinesename;

    @Id
    @Column(name = "uid", nullable = false, length = 11)
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "uname", nullable = false, length = 255)
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 255)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "pbid", nullable = true, length = 255)
    public String getPbid() {
        return pbid;
    }

    public void setPbid(String pbid) {
        this.pbid = pbid;
    }

    @Basic
    @Column(name = "cbid", nullable = true, length = 255)
    public String getCbid() {
        return cbid;
    }

    public void setCbid(String cbid) {
        this.cbid = cbid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(uid, user.uid) &&
                Objects.equals(uname, user.uname) &&
                Objects.equals(password, user.password) &&
                Objects.equals(pbid, user.pbid) &&
                Objects.equals(cbid, user.cbid);
    }

    @Override
    public int hashCode() {

        return Objects.hash(uid, uname, password, pbid, cbid);
    }

    @Basic
    @Column(name = "chinesename", nullable = true, length = 255)
    public String getChinesename() {
        return chinesename;
    }

    public void setChinesename(String chinesename) {
        this.chinesename = chinesename;
    }
}
