package hibernatePOJO;

import java.util.Objects;

public class Knowledge {
    private int kid;
    private String uid;
    private Integer parentkid;
    private String kname;
    private String content;

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Integer getParentkid() {
        return parentkid;
    }

    public void setParentkid(Integer parentkid) {
        this.parentkid = parentkid;
    }

    public String getKname() {
        return kname;
    }

    public void setKname(String kname) {
        this.kname = kname;
    }

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
