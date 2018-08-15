package hibernatePOJO;

import java.util.Objects;

public class User {
    private String uid;
    private String uname;
    private String chinesename;
    private String password;
    private String telephone;
    private String govtelephone;
    private String pbid;
    private String cbid;
    private String rid;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getChinesename() {
        return chinesename;
    }

    public void setChinesename(String chinesename) {
        this.chinesename = chinesename;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getGovtelephone() {
        return govtelephone;
    }

    public void setGovtelephone(String govtelephone) {
        this.govtelephone = govtelephone;
    }

    public String getPbid() {
        return pbid;
    }

    public void setPbid(String pbid) {
        this.pbid = pbid;
    }

    public String getCbid() {
        return cbid;
    }

    public void setCbid(String cbid) {
        this.cbid = cbid;
    }

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
        User user = (User) o;
        return Objects.equals(uid, user.uid) &&
                Objects.equals(uname, user.uname) &&
                Objects.equals(chinesename, user.chinesename) &&
                Objects.equals(password, user.password) &&
                Objects.equals(telephone, user.telephone) &&
                Objects.equals(govtelephone, user.govtelephone) &&
                Objects.equals(pbid, user.pbid) &&
                Objects.equals(cbid, user.cbid) &&
                Objects.equals(rid, user.rid);
    }

    @Override
    public int hashCode() {

        return Objects.hash(uid, uname, chinesename, password, telephone, govtelephone, pbid, cbid, rid);
    }
}
