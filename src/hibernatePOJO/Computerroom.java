package hibernatePOJO;

import java.util.Objects;

public class Computerroom {
    private String rid;
    private String rname;
    private String didset;
    private String tempset;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Computerroom that = (Computerroom) o;
        return Objects.equals(rid, that.rid) &&
                Objects.equals(rname, that.rname) &&
                Objects.equals(didset, that.didset) &&
                Objects.equals(tempset, that.tempset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(rid, rname, didset, tempset);
    }
}
