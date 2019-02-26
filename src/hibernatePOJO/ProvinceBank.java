package hibernatePOJO;

import java.util.Objects;

public class ProvinceBank {
    private String pbid;
    private String pbname;
    private String cbidset;
    private String compRoom;
    private String didset;
    private String tempset;
    private String cidset;

    public String getPbid() {
        return pbid;
    }

    public void setPbid(String pbid) {
        this.pbid = pbid;
    }

    public String getPbname() {
        return pbname;
    }

    public void setPbname(String pbname) {
        this.pbname = pbname;
    }

    public String getCbidset() {
        return cbidset;
    }

    public void setCbidset(String cbidset) {
        this.cbidset = cbidset;
    }

    public String getCompRoom() {
        return compRoom;
    }

    public void setCompRoom(String compRoom) {
        this.compRoom = compRoom;
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
        ProvinceBank that = (ProvinceBank) o;
        return Objects.equals(pbid, that.pbid) &&
                Objects.equals(pbname, that.pbname) &&
                Objects.equals(cbidset, that.cbidset) &&
                Objects.equals(compRoom, that.compRoom) &&
                Objects.equals(didset, that.didset) &&
                Objects.equals(tempset, that.tempset) &&
                Objects.equals(cidset, that.cidset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(pbid, pbname, cbidset, compRoom, didset, tempset, cidset);
    }
}
