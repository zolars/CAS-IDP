package hibernatePOJO;

import java.util.Objects;

public class DevicesThreshold {
    private int dtid;
    private String did;
    private String classify;
    private String unit;
    private Double cellval;
    private Double floorval;
    private Integer aid;

    public int getDtid() {
        return dtid;
    }

    public void setDtid(int dtid) {
        this.dtid = dtid;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Double getCellval() {
        return cellval;
    }

    public void setCellval(Double cellval) {
        this.cellval = cellval;
    }

    public Double getFloorval() {
        return floorval;
    }

    public void setFloorval(Double floorval) {
        this.floorval = floorval;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DevicesThreshold that = (DevicesThreshold) o;
        return dtid == that.dtid &&
                Objects.equals(did, that.did) &&
                Objects.equals(classify, that.classify) &&
                Objects.equals(unit, that.unit) &&
                Objects.equals(cellval, that.cellval) &&
                Objects.equals(floorval, that.floorval) &&
                Objects.equals(aid, that.aid);
    }

    @Override
    public int hashCode() {

        return Objects.hash(dtid, did, classify, unit, cellval, floorval, aid);
    }
}
