package hibernatePOJO;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Knowledge {
    private int kid;
    private String uid;
    private Integer parentkid;
    private String kname;
    private String content;

    @Id
    @Column(name = "kid", nullable = false)
    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    @Basic
    @Column(name = "uid", nullable = true, length = 11)
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "parentkid", nullable = true)
    public Integer getParentkid() {
        return parentkid;
    }

    public void setParentkid(Integer parentkid) {
        this.parentkid = parentkid;
    }

    @Basic
    @Column(name = "kname", nullable = true, length = 255)
    public String getKname() {
        return kname;
    }

    public void setKname(String kname) {
        this.kname = kname;
    }

    @Basic
    @Column(name = "content", nullable = true, length = 255)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Knowledge knowledge = (Knowledge) o;
        return kid == knowledge.kid &&
                Objects.equals(uid, knowledge.uid) &&
                Objects.equals(parentkid, knowledge.parentkid) &&
                Objects.equals(kname, knowledge.kname) &&
                Objects.equals(content, knowledge.content);
    }

    @Override
    public int hashCode() {

        return Objects.hash(kid, uid, parentkid, kname, content);
    }
}
