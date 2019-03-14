package hibernatePOJO;

import java.util.Objects;

public class CityBank {
    private String cbid;
    private String cbname;
    private String compRoom;
    private String didset;
    private String tempset;
    private String cidset;

    public String getCbid() {
        return cbid;
    }

    public void setCbid(String cbid) {
        this.cbid = cbid;
    }

    public String getCbname() {
        return cbname;
    }

    public void setCbname(String cbname) {
        this.cbname = cbname;
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
        CityBank cityBank = (CityBank) o;
        return Objects.equals(cbid, cityBank.cbid) &&
                Objects.equals(cbname, cityBank.cbname) &&
                Objects.equals(compRoom, cityBank.compRoom) &&
                Objects.equals(didset, cityBank.didset) &&
                Objects.equals(tempset, cityBank.tempset) &&
                Objects.equals(cidset, cityBank.cidset);
    }

    @Override
    public int hashCode() {

        return Objects.hash(cbid, cbname, compRoom, didset, tempset, cidset);
    }
}
