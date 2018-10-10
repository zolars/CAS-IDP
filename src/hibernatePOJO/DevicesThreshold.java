package hibernatePOJO;

import java.util.Objects;

public class DevicesThreshold {
    private int dtid;
    private String name;
    private String type;
    private String did;
    private String classify;
    private String unit;
    private Double cellval;
    private Double floorval;
    private Integer level;
    private Integer ismark;

    public int getDtid() {
        return dtid;
    }

    public void setDtid(int dtid) {
        this.dtid = dtid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getIsmark() {
        return ismark;
    }

    public void setIsmark(Integer ismark) {
        this.ismark = ismark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DevicesThreshold that = (DevicesThreshold) o;
        return dtid == that.dtid &&
                Objects.equals(name, that.name) &&
                Objects.equals(type, that.type) &&
                Objects.equals(did, that.did) &&
                Objects.equals(classify, that.classify) &&
                Objects.equals(unit, that.unit) &&
                Objects.equals(cellval, that.cellval) &&
                Objects.equals(floorval, that.floorval) &&
                Objects.equals(level, that.level) &&
                Objects.equals(ismark, that.ismark);
    }

    @Override
    public int hashCode() {

        return Objects.hash(dtid, name, type, did, classify, unit, cellval, floorval, level, ismark);
    }
}
