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
    private String chinesename;
    private String password;
    private String pbid;
    private String cbid;
    private String telephone;
    private String govtelephone;

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
    @Column(name = "chinesename", nullable = true, length = 255)
    public String getChinesename() {
        return chinesename;
    }

    public void setChinesename(String chinesename) {
        this.chinesename = chinesename;
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

    @Basic
    @Column(name = "telephone", nullable = true, length = 11)
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Basic
    @Column(name = "govtelephone", nullable = true, length = 11)
    public String getGovtelephone() {
        return govtelephone;
    }

    public void setGovtelephone(String govtelephone) {
        this.govtelephone = govtelephone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(uid, user.uid) &&
                Objects.equals(uname, user.uname) &&
                Objects.equals(chinesename, user.chinesename) &&
                Objects.equals(password, user.password) &&
                Objects.equals(pbid, user.pbid) &&
                Objects.equals(cbid, user.cbid) &&
                Objects.equals(telephone, user.telephone) &&
                Objects.equals(govtelephone, user.govtelephone);
    }

    @Override
    public int hashCode() {

        return Objects.hash(uid, uname, chinesename, password, pbid, cbid, telephone, govtelephone);
    }
}
