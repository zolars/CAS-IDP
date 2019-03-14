package hibernatePOJO;

import java.util.Objects;

public class Computerroom {
    private String rid;
    private String rname;
    private String didset;
    private String tempset;
    private String cidset;

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getDidset() {
        return didset;
    }

    public void setDidset(String didset) {
        this.didset = didset;
    }

    public String getTempset() {
        return tempset;
    }

    public void setTempset(String tempset) {
        this.tempset = tempset;
    }

    public String getCidset() {
        return cidset;
    }

    public void setCidset(String cidset) {
        this.cidset = cidset;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Computerroom that = (Computerroom) o;
        return Objects.equals(rid, that.rid) &&
                Objects.equals(rname, that.rname) &&
                Objects.equals(didset, that.didset) &&
                Objects.equals(tempset, that.tempset) &&
                Objects.equals(cidset, that.cidset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(rid, rname, didset, tempset, cidset);
    }
}
