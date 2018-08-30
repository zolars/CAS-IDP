package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "devices_threshold", schema = "test", catalog = "")
public class DevicesThreshold {
    private int dtid;
    private String did;
    private String type;
    private String nameU1;
    private String unitU1;
    private Double standardvalU1;
    private Double cellvalU1;
    private Double floorvalU1;
    private Integer isMarkU1;
    private String alarmcontentU1;
    private String nameU2;
    private String unitU2;
    private Double standardvalU2;
    private Double cellvalU2;
    private Double floorvalU2;
    private Integer isMarkU2;
    private String alarmcontentU2;
    private String nameU3;
    private String unitU3;
    private Double standardvalU3;
    private Double cellvalU3;
    private Double floorvalU3;
    private Integer isMarkU3;
    private String alarmcontentU3;
    private String nameU4;
    private String unitU4;
    private Double standardvalU4;
    private Double cellvalU4;
    private Double floorvalU4;
    private Integer isMarkU4;
    private String alarmcontentU4;
    private String nameI1;
    private String unitI1;
    private Double standardvalI1;
    private Double cellvalI1;
    private Double floorvalI1;
    private Integer isMarkI1;
    private String alarmcontentI1;
    private String nameI2;
    private String unitI2;
    private Double standardvalI2;
    private Double cellvalI2;
    private Double floorvalI2;
    private Integer isMarkI2;
    private String alarmcontentI2;
    private String nameI3;
    private String unitI3;
    private Double standardvalI3;
    private Double cellvalI3;
    private Double floorvalI3;
    private Integer isMarkI3;
    private String alarmcontentI3;
    private String nameI4;
    private String unitI4;
    private Double standardvalI4;
    private Double cellvalI4;
    private Double floorvalI4;
    private Integer isMarkI4;
    private String alarmcontentI4;
    private String nameP1;
    private String unitP1;
    private Double standardvalP1;
    private Double cellvalP1;
    private Double floorvalP1;
    private Integer isMarkP1;
    private String alarmcontentP1;
    private String nameP2;
    private String unitP2;
    private Double standardvalP2;
    private Double cellvalP2;
    private Double floorvalP2;
    private Integer isMarkP2;
    private String alarmcontentP2;
    private String nameP3;
    private String unitP3;
    private Double standardvalP3;
    private Double cellvalP3;
    private Double floorvalP3;
    private Integer isMarkP3;
    private String alarmcontentP3;
    private String namePsum;
    private String unitPsum;
    private Double standardvalPsum;
    private Double cellvalPsum;
    private Double floorvalPsum;
    private Integer isMarkPsum;
    private String alarmcontentPsum;
    private String nameQ1;
    private String unitQ1;
    private Double standardvalQ1;
    private Double cellvalQ1;
    private Double floorvalQ1;
    private Integer isMarkQ1;
    private String alarmcontentQ1;
    private String nameQ2;
    private String unitQ2;
    private Double standardvalQ2;
    private Double cellvalQ2;
    private Double floorvalQ2;
    private Integer isMarkQ2;
    private String alarmcontentQ2;
    private String nameQ3;
    private String unitQ3;
    private Double standardvalQ3;
    private Double cellvalQ3;
    private Double floorvalQ3;
    private Integer isMarkQ3;
    private String alarmcontentQ3;
    private String nameQsum;
    private String unitQsum;
    private Double standardvalQsum;
    private Double cellvalQsum;
    private Double floorvalQsum;
    private Integer isMarkQsum;
    private String alarmcontentQsum;
    private String nameS1;
    private String unitS1;
    private Double standardvalS1;
    private Double cellvalS1;
    private Double floorvalS1;
    private Integer isMarkS1;
    private String alarmcontentS1;
    private String nameS2;
    private String unitS2;
    private Double standardvalS2;
    private Double cellvalS2;
    private Double floorvalS2;
    private Integer isMarkS2;
    private String alarmcontentS2;
    private String nameS3;
    private String unitS3;
    private Double standardvalS3;
    private Double cellvalS3;
    private Double floorvalS3;
    private Integer isMarkS3;
    private String alarmcontentS3;
    private String nameSsum;
    private String unitSsum;
    private Double standardvalSsum;
    private Double cellvalSsum;
    private Double floorvalSsum;
    private Integer isMarkSsum;
    private String alarmcontentSsum;
    private String namePf1;
    private String unitPf1;
    private Double standardvalPf1;
    private Double cellvalPf1;
    private Double floorvalPf1;
    private Integer isMarkPf1;
    private String alarmcontentPf1;
    private String namePf2;
    private String unitPf2;
    private Double standardvalPf2;
    private Double cellvalPf2;
    private Double floorvalPf2;
    private Integer isMarkPf2;
    private String alarmcontentPf2;
    private String namePf3;
    private String unitPf3;
    private Double standardvalPf3;
    private Double cellvalPf3;
    private Double floorvalPf3;
    private Integer isMarkPf3;
    private String alarmcontentPf3;
    private String namePFsum;
    private String unitPFsum;
    private Double standardvalPFsum;
    private Double cellvalPFsum;
    private Double floorvalPFsum;
    private Integer isMarkPFsum;
    private String alarmcontentPFsum;
    private String nameCosPhi1;
    private String unitCosPhi1;
    private Double standardvalCosPhi1;
    private Double cellvalCosPhi1;
    private Double floorvalCosPhi1;
    private Integer isMarkCosPhi1;
    private String alarmcontentCosPhi1;
    private String nameCosPhi2;
    private String unitCosPhi2;
    private Double standardvalCosPhi2;
    private Double cellvalCosPhi2;
    private Double floorvalCosPhi2;
    private Integer isMarkCosPhi2;
    private String alarmcontentCosPhi2;
    private String nameCosPhi3;
    private String unitCosPhi3;
    private Double standardvalCosPhi3;
    private Double cellvalCosPhi3;
    private Double floorvalCosPhi3;
    private Integer isMarkCosPhi3;
    private String alarmcontentCosPhi3;

    @Id
    @Column(name = "dtid", nullable = false)
    public int getDtid() {
        return dtid;
    }

    public void setDtid(int dtid) {
        this.dtid = dtid;
    }

    @Basic
    @Column(name = "did", nullable = true, length = 255)
    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    @Basic
    @Column(name = "type", nullable = true, length = 255)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "name_U1", nullable = true, length = 255)
    public String getNameU1() {
        return nameU1;
    }

    public void setNameU1(String nameU1) {
        this.nameU1 = nameU1;
    }

    @Basic
    @Column(name = "unit_U1", nullable = true, length = 255)
    public String getUnitU1() {
        return unitU1;
    }

    public void setUnitU1(String unitU1) {
        this.unitU1 = unitU1;
    }

    @Basic
    @Column(name = "standardval_U1", nullable = true, precision = 2)
    public Double getStandardvalU1() {
        return standardvalU1;
    }

    public void setStandardvalU1(Double standardvalU1) {
        this.standardvalU1 = standardvalU1;
    }

    @Basic
    @Column(name = "cellval_U1", nullable = true, precision = 2)
    public Double getCellvalU1() {
        return cellvalU1;
    }

    public void setCellvalU1(Double cellvalU1) {
        this.cellvalU1 = cellvalU1;
    }

    @Basic
    @Column(name = "floorval_U1", nullable = true, precision = 2)
    public Double getFloorvalU1() {
        return floorvalU1;
    }

    public void setFloorvalU1(Double floorvalU1) {
        this.floorvalU1 = floorvalU1;
    }

    @Basic
    @Column(name = "isMark_U1", nullable = true)
    public Integer getIsMarkU1() {
        return isMarkU1;
    }

    public void setIsMarkU1(Integer isMarkU1) {
        this.isMarkU1 = isMarkU1;
    }

    @Basic
    @Column(name = "alarmcontent_U1", nullable = true, length = 255)
    public String getAlarmcontentU1() {
        return alarmcontentU1;
    }

    public void setAlarmcontentU1(String alarmcontentU1) {
        this.alarmcontentU1 = alarmcontentU1;
    }

    @Basic
    @Column(name = "name_U2", nullable = true, length = 255)
    public String getNameU2() {
        return nameU2;
    }

    public void setNameU2(String nameU2) {
        this.nameU2 = nameU2;
    }

    @Basic
    @Column(name = "unit_U2", nullable = true, length = 255)
    public String getUnitU2() {
        return unitU2;
    }

    public void setUnitU2(String unitU2) {
        this.unitU2 = unitU2;
    }

    @Basic
    @Column(name = "standardval_U2", nullable = true, precision = 2)
    public Double getStandardvalU2() {
        return standardvalU2;
    }

    public void setStandardvalU2(Double standardvalU2) {
        this.standardvalU2 = standardvalU2;
    }

    @Basic
    @Column(name = "cellval_U2", nullable = true, precision = 2)
    public Double getCellvalU2() {
        return cellvalU2;
    }

    public void setCellvalU2(Double cellvalU2) {
        this.cellvalU2 = cellvalU2;
    }

    @Basic
    @Column(name = "floorval_U2", nullable = true, precision = 2)
    public Double getFloorvalU2() {
        return floorvalU2;
    }

    public void setFloorvalU2(Double floorvalU2) {
        this.floorvalU2 = floorvalU2;
    }

    @Basic
    @Column(name = "isMark_U2", nullable = true)
    public Integer getIsMarkU2() {
        return isMarkU2;
    }

    public void setIsMarkU2(Integer isMarkU2) {
        this.isMarkU2 = isMarkU2;
    }

    @Basic
    @Column(name = "alarmcontent_U2", nullable = true, length = 255)
    public String getAlarmcontentU2() {
        return alarmcontentU2;
    }

    public void setAlarmcontentU2(String alarmcontentU2) {
        this.alarmcontentU2 = alarmcontentU2;
    }

    @Basic
    @Column(name = "name_U3", nullable = true, length = 255)
    public String getNameU3() {
        return nameU3;
    }

    public void setNameU3(String nameU3) {
        this.nameU3 = nameU3;
    }

    @Basic
    @Column(name = "unit_U3", nullable = true, length = 255)
    public String getUnitU3() {
        return unitU3;
    }

    public void setUnitU3(String unitU3) {
        this.unitU3 = unitU3;
    }

    @Basic
    @Column(name = "standardval_U3", nullable = true, precision = 2)
    public Double getStandardvalU3() {
        return standardvalU3;
    }

    public void setStandardvalU3(Double standardvalU3) {
        this.standardvalU3 = standardvalU3;
    }

    @Basic
    @Column(name = "cellval_U3", nullable = true, precision = 2)
    public Double getCellvalU3() {
        return cellvalU3;
    }

    public void setCellvalU3(Double cellvalU3) {
        this.cellvalU3 = cellvalU3;
    }

    @Basic
    @Column(name = "floorval_U3", nullable = true, precision = 2)
    public Double getFloorvalU3() {
        return floorvalU3;
    }

    public void setFloorvalU3(Double floorvalU3) {
        this.floorvalU3 = floorvalU3;
    }

    @Basic
    @Column(name = "isMark_U3", nullable = true)
    public Integer getIsMarkU3() {
        return isMarkU3;
    }

    public void setIsMarkU3(Integer isMarkU3) {
        this.isMarkU3 = isMarkU3;
    }

    @Basic
    @Column(name = "alarmcontent_U3", nullable = true, length = 255)
    public String getAlarmcontentU3() {
        return alarmcontentU3;
    }

    public void setAlarmcontentU3(String alarmcontentU3) {
        this.alarmcontentU3 = alarmcontentU3;
    }

    @Basic
    @Column(name = "name_U4", nullable = true, length = 255)
    public String getNameU4() {
        return nameU4;
    }

    public void setNameU4(String nameU4) {
        this.nameU4 = nameU4;
    }

    @Basic
    @Column(name = "unit_U4", nullable = true, length = 255)
    public String getUnitU4() {
        return unitU4;
    }

    public void setUnitU4(String unitU4) {
        this.unitU4 = unitU4;
    }

    @Basic
    @Column(name = "standardval_U4", nullable = true, precision = 2)
    public Double getStandardvalU4() {
        return standardvalU4;
    }

    public void setStandardvalU4(Double standardvalU4) {
        this.standardvalU4 = standardvalU4;
    }

    @Basic
    @Column(name = "cellval_U4", nullable = true, precision = 2)
    public Double getCellvalU4() {
        return cellvalU4;
    }

    public void setCellvalU4(Double cellvalU4) {
        this.cellvalU4 = cellvalU4;
    }

    @Basic
    @Column(name = "floorval_U4", nullable = true, precision = 2)
    public Double getFloorvalU4() {
        return floorvalU4;
    }

    public void setFloorvalU4(Double floorvalU4) {
        this.floorvalU4 = floorvalU4;
    }

    @Basic
    @Column(name = "isMark_U4", nullable = true)
    public Integer getIsMarkU4() {
        return isMarkU4;
    }

    public void setIsMarkU4(Integer isMarkU4) {
        this.isMarkU4 = isMarkU4;
    }

    @Basic
    @Column(name = "alarmcontent_U4", nullable = true, length = 255)
    public String getAlarmcontentU4() {
        return alarmcontentU4;
    }

    public void setAlarmcontentU4(String alarmcontentU4) {
        this.alarmcontentU4 = alarmcontentU4;
    }

    @Basic
    @Column(name = "name_I1", nullable = true, length = 255)
    public String getNameI1() {
        return nameI1;
    }

    public void setNameI1(String nameI1) {
        this.nameI1 = nameI1;
    }

    @Basic
    @Column(name = "unit_I1", nullable = true, length = 255)
    public String getUnitI1() {
        return unitI1;
    }

    public void setUnitI1(String unitI1) {
        this.unitI1 = unitI1;
    }

    @Basic
    @Column(name = "standardval_I1", nullable = true, precision = 2)
    public Double getStandardvalI1() {
        return standardvalI1;
    }

    public void setStandardvalI1(Double standardvalI1) {
        this.standardvalI1 = standardvalI1;
    }

    @Basic
    @Column(name = "cellval_I1", nullable = true, precision = 2)
    public Double getCellvalI1() {
        return cellvalI1;
    }

    public void setCellvalI1(Double cellvalI1) {
        this.cellvalI1 = cellvalI1;
    }

    @Basic
    @Column(name = "floorval_I1", nullable = true, precision = 2)
    public Double getFloorvalI1() {
        return floorvalI1;
    }

    public void setFloorvalI1(Double floorvalI1) {
        this.floorvalI1 = floorvalI1;
    }

    @Basic
    @Column(name = "isMark_I1", nullable = true)
    public Integer getIsMarkI1() {
        return isMarkI1;
    }

    public void setIsMarkI1(Integer isMarkI1) {
        this.isMarkI1 = isMarkI1;
    }

    @Basic
    @Column(name = "alarmcontent_I1", nullable = true, length = 255)
    public String getAlarmcontentI1() {
        return alarmcontentI1;
    }

    public void setAlarmcontentI1(String alarmcontentI1) {
        this.alarmcontentI1 = alarmcontentI1;
    }

    @Basic
    @Column(name = "name_I2", nullable = true, length = 255)
    public String getNameI2() {
        return nameI2;
    }

    public void setNameI2(String nameI2) {
        this.nameI2 = nameI2;
    }

    @Basic
    @Column(name = "unit_I2", nullable = true, length = 255)
    public String getUnitI2() {
        return unitI2;
    }

    public void setUnitI2(String unitI2) {
        this.unitI2 = unitI2;
    }

    @Basic
    @Column(name = "standardval_I2", nullable = true, precision = 2)
    public Double getStandardvalI2() {
        return standardvalI2;
    }

    public void setStandardvalI2(Double standardvalI2) {
        this.standardvalI2 = standardvalI2;
    }

    @Basic
    @Column(name = "cellval_I2", nullable = true, precision = 2)
    public Double getCellvalI2() {
        return cellvalI2;
    }

    public void setCellvalI2(Double cellvalI2) {
        this.cellvalI2 = cellvalI2;
    }

    @Basic
    @Column(name = "floorval_I2", nullable = true, precision = 2)
    public Double getFloorvalI2() {
        return floorvalI2;
    }

    public void setFloorvalI2(Double floorvalI2) {
        this.floorvalI2 = floorvalI2;
    }

    @Basic
    @Column(name = "isMark_I2", nullable = true)
    public Integer getIsMarkI2() {
        return isMarkI2;
    }

    public void setIsMarkI2(Integer isMarkI2) {
        this.isMarkI2 = isMarkI2;
    }

    @Basic
    @Column(name = "alarmcontent_I2", nullable = true, length = 255)
    public String getAlarmcontentI2() {
        return alarmcontentI2;
    }

    public void setAlarmcontentI2(String alarmcontentI2) {
        this.alarmcontentI2 = alarmcontentI2;
    }

    @Basic
    @Column(name = "name_I3", nullable = true, length = 255)
    public String getNameI3() {
        return nameI3;
    }

    public void setNameI3(String nameI3) {
        this.nameI3 = nameI3;
    }

    @Basic
    @Column(name = "unit_I3", nullable = true, length = 255)
    public String getUnitI3() {
        return unitI3;
    }

    public void setUnitI3(String unitI3) {
        this.unitI3 = unitI3;
    }

    @Basic
    @Column(name = "standardval_I3", nullable = true, precision = 2)
    public Double getStandardvalI3() {
        return standardvalI3;
    }

    public void setStandardvalI3(Double standardvalI3) {
        this.standardvalI3 = standardvalI3;
    }

    @Basic
    @Column(name = "cellval_I3", nullable = true, precision = 2)
    public Double getCellvalI3() {
        return cellvalI3;
    }

    public void setCellvalI3(Double cellvalI3) {
        this.cellvalI3 = cellvalI3;
    }

    @Basic
    @Column(name = "floorval_I3", nullable = true, precision = 2)
    public Double getFloorvalI3() {
        return floorvalI3;
    }

    public void setFloorvalI3(Double floorvalI3) {
        this.floorvalI3 = floorvalI3;
    }

    @Basic
    @Column(name = "isMark_I3", nullable = true)
    public Integer getIsMarkI3() {
        return isMarkI3;
    }

    public void setIsMarkI3(Integer isMarkI3) {
        this.isMarkI3 = isMarkI3;
    }

    @Basic
    @Column(name = "alarmcontent_I3", nullable = true, length = 255)
    public String getAlarmcontentI3() {
        return alarmcontentI3;
    }

    public void setAlarmcontentI3(String alarmcontentI3) {
        this.alarmcontentI3 = alarmcontentI3;
    }

    @Basic
    @Column(name = "name_I4", nullable = true, length = 255)
    public String getNameI4() {
        return nameI4;
    }

    public void setNameI4(String nameI4) {
        this.nameI4 = nameI4;
    }

    @Basic
    @Column(name = "unit_I4", nullable = true, length = 255)
    public String getUnitI4() {
        return unitI4;
    }

    public void setUnitI4(String unitI4) {
        this.unitI4 = unitI4;
    }

    @Basic
    @Column(name = "standardval_I4", nullable = true, precision = 2)
    public Double getStandardvalI4() {
        return standardvalI4;
    }

    public void setStandardvalI4(Double standardvalI4) {
        this.standardvalI4 = standardvalI4;
    }

    @Basic
    @Column(name = "cellval_I4", nullable = true, precision = 2)
    public Double getCellvalI4() {
        return cellvalI4;
    }

    public void setCellvalI4(Double cellvalI4) {
        this.cellvalI4 = cellvalI4;
    }

    @Basic
    @Column(name = "floorval_I4", nullable = true, precision = 2)
    public Double getFloorvalI4() {
        return floorvalI4;
    }

    public void setFloorvalI4(Double floorvalI4) {
        this.floorvalI4 = floorvalI4;
    }

    @Basic
    @Column(name = "isMark_I4", nullable = true)
    public Integer getIsMarkI4() {
        return isMarkI4;
    }

    public void setIsMarkI4(Integer isMarkI4) {
        this.isMarkI4 = isMarkI4;
    }

    @Basic
    @Column(name = "alarmcontent_I4", nullable = true, length = 255)
    public String getAlarmcontentI4() {
        return alarmcontentI4;
    }

    public void setAlarmcontentI4(String alarmcontentI4) {
        this.alarmcontentI4 = alarmcontentI4;
    }

    @Basic
    @Column(name = "name_P1", nullable = true, length = 255)
    public String getNameP1() {
        return nameP1;
    }

    public void setNameP1(String nameP1) {
        this.nameP1 = nameP1;
    }

    @Basic
    @Column(name = "unit_P1", nullable = true, length = 255)
    public String getUnitP1() {
        return unitP1;
    }

    public void setUnitP1(String unitP1) {
        this.unitP1 = unitP1;
    }

    @Basic
    @Column(name = "standardval_P1", nullable = true, precision = 2)
    public Double getStandardvalP1() {
        return standardvalP1;
    }

    public void setStandardvalP1(Double standardvalP1) {
        this.standardvalP1 = standardvalP1;
    }

    @Basic
    @Column(name = "cellval_P1", nullable = true, precision = 2)
    public Double getCellvalP1() {
        return cellvalP1;
    }

    public void setCellvalP1(Double cellvalP1) {
        this.cellvalP1 = cellvalP1;
    }

    @Basic
    @Column(name = "floorval_P1", nullable = true, precision = 2)
    public Double getFloorvalP1() {
        return floorvalP1;
    }

    public void setFloorvalP1(Double floorvalP1) {
        this.floorvalP1 = floorvalP1;
    }

    @Basic
    @Column(name = "isMark_P1", nullable = true)
    public Integer getIsMarkP1() {
        return isMarkP1;
    }

    public void setIsMarkP1(Integer isMarkP1) {
        this.isMarkP1 = isMarkP1;
    }

    @Basic
    @Column(name = "alarmcontent_P1", nullable = true, length = 255)
    public String getAlarmcontentP1() {
        return alarmcontentP1;
    }

    public void setAlarmcontentP1(String alarmcontentP1) {
        this.alarmcontentP1 = alarmcontentP1;
    }

    @Basic
    @Column(name = "name_P2", nullable = true, length = 255)
    public String getNameP2() {
        return nameP2;
    }

    public void setNameP2(String nameP2) {
        this.nameP2 = nameP2;
    }

    @Basic
    @Column(name = "unit_P2", nullable = true, length = 255)
    public String getUnitP2() {
        return unitP2;
    }

    public void setUnitP2(String unitP2) {
        this.unitP2 = unitP2;
    }

    @Basic
    @Column(name = "standardval_P2", nullable = true, precision = 2)
    public Double getStandardvalP2() {
        return standardvalP2;
    }

    public void setStandardvalP2(Double standardvalP2) {
        this.standardvalP2 = standardvalP2;
    }

    @Basic
    @Column(name = "cellval_P2", nullable = true, precision = 2)
    public Double getCellvalP2() {
        return cellvalP2;
    }

    public void setCellvalP2(Double cellvalP2) {
        this.cellvalP2 = cellvalP2;
    }

    @Basic
    @Column(name = "floorval_P2", nullable = true, precision = 2)
    public Double getFloorvalP2() {
        return floorvalP2;
    }

    public void setFloorvalP2(Double floorvalP2) {
        this.floorvalP2 = floorvalP2;
    }

    @Basic
    @Column(name = "isMark_P2", nullable = true)
    public Integer getIsMarkP2() {
        return isMarkP2;
    }

    public void setIsMarkP2(Integer isMarkP2) {
        this.isMarkP2 = isMarkP2;
    }

    @Basic
    @Column(name = "alarmcontent_P2", nullable = true, length = 255)
    public String getAlarmcontentP2() {
        return alarmcontentP2;
    }

    public void setAlarmcontentP2(String alarmcontentP2) {
        this.alarmcontentP2 = alarmcontentP2;
    }

    @Basic
    @Column(name = "name_P3", nullable = true, length = 255)
    public String getNameP3() {
        return nameP3;
    }

    public void setNameP3(String nameP3) {
        this.nameP3 = nameP3;
    }

    @Basic
    @Column(name = "unit_P3", nullable = true, length = 255)
    public String getUnitP3() {
        return unitP3;
    }

    public void setUnitP3(String unitP3) {
        this.unitP3 = unitP3;
    }

    @Basic
    @Column(name = "standardval_P3", nullable = true, precision = 2)
    public Double getStandardvalP3() {
        return standardvalP3;
    }

    public void setStandardvalP3(Double standardvalP3) {
        this.standardvalP3 = standardvalP3;
    }

    @Basic
    @Column(name = "cellval_P3", nullable = true, precision = 2)
    public Double getCellvalP3() {
        return cellvalP3;
    }

    public void setCellvalP3(Double cellvalP3) {
        this.cellvalP3 = cellvalP3;
    }

    @Basic
    @Column(name = "floorval_P3", nullable = true, precision = 2)
    public Double getFloorvalP3() {
        return floorvalP3;
    }

    public void setFloorvalP3(Double floorvalP3) {
        this.floorvalP3 = floorvalP3;
    }

    @Basic
    @Column(name = "isMark_P3", nullable = true)
    public Integer getIsMarkP3() {
        return isMarkP3;
    }

    public void setIsMarkP3(Integer isMarkP3) {
        this.isMarkP3 = isMarkP3;
    }

    @Basic
    @Column(name = "alarmcontent_P3", nullable = true, length = 255)
    public String getAlarmcontentP3() {
        return alarmcontentP3;
    }

    public void setAlarmcontentP3(String alarmcontentP3) {
        this.alarmcontentP3 = alarmcontentP3;
    }

    @Basic
    @Column(name = "name_Psum", nullable = true, length = 255)
    public String getNamePsum() {
        return namePsum;
    }

    public void setNamePsum(String namePsum) {
        this.namePsum = namePsum;
    }

    @Basic
    @Column(name = "unit_Psum", nullable = true, length = 255)
    public String getUnitPsum() {
        return unitPsum;
    }

    public void setUnitPsum(String unitPsum) {
        this.unitPsum = unitPsum;
    }

    @Basic
    @Column(name = "standardval_Psum", nullable = true, precision = 2)
    public Double getStandardvalPsum() {
        return standardvalPsum;
    }

    public void setStandardvalPsum(Double standardvalPsum) {
        this.standardvalPsum = standardvalPsum;
    }

    @Basic
    @Column(name = "cellval_Psum", nullable = true, precision = 2)
    public Double getCellvalPsum() {
        return cellvalPsum;
    }

    public void setCellvalPsum(Double cellvalPsum) {
        this.cellvalPsum = cellvalPsum;
    }

    @Basic
    @Column(name = "floorval_Psum", nullable = true, precision = 2)
    public Double getFloorvalPsum() {
        return floorvalPsum;
    }

    public void setFloorvalPsum(Double floorvalPsum) {
        this.floorvalPsum = floorvalPsum;
    }

    @Basic
    @Column(name = "isMark_Psum", nullable = true)
    public Integer getIsMarkPsum() {
        return isMarkPsum;
    }

    public void setIsMarkPsum(Integer isMarkPsum) {
        this.isMarkPsum = isMarkPsum;
    }

    @Basic
    @Column(name = "alarmcontent_Psum", nullable = true, length = 255)
    public String getAlarmcontentPsum() {
        return alarmcontentPsum;
    }

    public void setAlarmcontentPsum(String alarmcontentPsum) {
        this.alarmcontentPsum = alarmcontentPsum;
    }

    @Basic
    @Column(name = "name_Q1", nullable = true, length = 255)
    public String getNameQ1() {
        return nameQ1;
    }

    public void setNameQ1(String nameQ1) {
        this.nameQ1 = nameQ1;
    }

    @Basic
    @Column(name = "unit_Q1", nullable = true, length = 255)
    public String getUnitQ1() {
        return unitQ1;
    }

    public void setUnitQ1(String unitQ1) {
        this.unitQ1 = unitQ1;
    }

    @Basic
    @Column(name = "standardval_Q1", nullable = true, precision = 2)
    public Double getStandardvalQ1() {
        return standardvalQ1;
    }

    public void setStandardvalQ1(Double standardvalQ1) {
        this.standardvalQ1 = standardvalQ1;
    }

    @Basic
    @Column(name = "cellval_Q1", nullable = true, precision = 2)
    public Double getCellvalQ1() {
        return cellvalQ1;
    }

    public void setCellvalQ1(Double cellvalQ1) {
        this.cellvalQ1 = cellvalQ1;
    }

    @Basic
    @Column(name = "floorval_Q1", nullable = true, precision = 2)
    public Double getFloorvalQ1() {
        return floorvalQ1;
    }

    public void setFloorvalQ1(Double floorvalQ1) {
        this.floorvalQ1 = floorvalQ1;
    }

    @Basic
    @Column(name = "isMark_Q1", nullable = true)
    public Integer getIsMarkQ1() {
        return isMarkQ1;
    }

    public void setIsMarkQ1(Integer isMarkQ1) {
        this.isMarkQ1 = isMarkQ1;
    }

    @Basic
    @Column(name = "alarmcontent_Q1", nullable = true, length = 255)
    public String getAlarmcontentQ1() {
        return alarmcontentQ1;
    }

    public void setAlarmcontentQ1(String alarmcontentQ1) {
        this.alarmcontentQ1 = alarmcontentQ1;
    }

    @Basic
    @Column(name = "name_Q2", nullable = true, length = 255)
    public String getNameQ2() {
        return nameQ2;
    }

    public void setNameQ2(String nameQ2) {
        this.nameQ2 = nameQ2;
    }

    @Basic
    @Column(name = "unit_Q2", nullable = true, length = 255)
    public String getUnitQ2() {
        return unitQ2;
    }

    public void setUnitQ2(String unitQ2) {
        this.unitQ2 = unitQ2;
    }

    @Basic
    @Column(name = "standardval_Q2", nullable = true, precision = 2)
    public Double getStandardvalQ2() {
        return standardvalQ2;
    }

    public void setStandardvalQ2(Double standardvalQ2) {
        this.standardvalQ2 = standardvalQ2;
    }

    @Basic
    @Column(name = "cellval_Q2", nullable = true, precision = 2)
    public Double getCellvalQ2() {
        return cellvalQ2;
    }

    public void setCellvalQ2(Double cellvalQ2) {
        this.cellvalQ2 = cellvalQ2;
    }

    @Basic
    @Column(name = "floorval_Q2", nullable = true, precision = 2)
    public Double getFloorvalQ2() {
        return floorvalQ2;
    }

    public void setFloorvalQ2(Double floorvalQ2) {
        this.floorvalQ2 = floorvalQ2;
    }

    @Basic
    @Column(name = "isMark_Q2", nullable = true)
    public Integer getIsMarkQ2() {
        return isMarkQ2;
    }

    public void setIsMarkQ2(Integer isMarkQ2) {
        this.isMarkQ2 = isMarkQ2;
    }

    @Basic
    @Column(name = "alarmcontent_Q2", nullable = true, length = 255)
    public String getAlarmcontentQ2() {
        return alarmcontentQ2;
    }

    public void setAlarmcontentQ2(String alarmcontentQ2) {
        this.alarmcontentQ2 = alarmcontentQ2;
    }

    @Basic
    @Column(name = "name_Q3", nullable = true, length = 255)
    public String getNameQ3() {
        return nameQ3;
    }

    public void setNameQ3(String nameQ3) {
        this.nameQ3 = nameQ3;
    }

    @Basic
    @Column(name = "unit_Q3", nullable = true, length = 255)
    public String getUnitQ3() {
        return unitQ3;
    }

    public void setUnitQ3(String unitQ3) {
        this.unitQ3 = unitQ3;
    }

    @Basic
    @Column(name = "standardval_Q3", nullable = true, precision = 2)
    public Double getStandardvalQ3() {
        return standardvalQ3;
    }

    public void setStandardvalQ3(Double standardvalQ3) {
        this.standardvalQ3 = standardvalQ3;
    }

    @Basic
    @Column(name = "cellval_Q3", nullable = true, precision = 2)
    public Double getCellvalQ3() {
        return cellvalQ3;
    }

    public void setCellvalQ3(Double cellvalQ3) {
        this.cellvalQ3 = cellvalQ3;
    }

    @Basic
    @Column(name = "floorval_Q3", nullable = true, precision = 2)
    public Double getFloorvalQ3() {
        return floorvalQ3;
    }

    public void setFloorvalQ3(Double floorvalQ3) {
        this.floorvalQ3 = floorvalQ3;
    }

    @Basic
    @Column(name = "isMark_Q3", nullable = true)
    public Integer getIsMarkQ3() {
        return isMarkQ3;
    }

    public void setIsMarkQ3(Integer isMarkQ3) {
        this.isMarkQ3 = isMarkQ3;
    }

    @Basic
    @Column(name = "alarmcontent_Q3", nullable = true, length = 255)
    public String getAlarmcontentQ3() {
        return alarmcontentQ3;
    }

    public void setAlarmcontentQ3(String alarmcontentQ3) {
        this.alarmcontentQ3 = alarmcontentQ3;
    }

    @Basic
    @Column(name = "name_Qsum", nullable = true, length = 255)
    public String getNameQsum() {
        return nameQsum;
    }

    public void setNameQsum(String nameQsum) {
        this.nameQsum = nameQsum;
    }

    @Basic
    @Column(name = "unit_Qsum", nullable = true, length = 255)
    public String getUnitQsum() {
        return unitQsum;
    }

    public void setUnitQsum(String unitQsum) {
        this.unitQsum = unitQsum;
    }

    @Basic
    @Column(name = "standardval_Qsum", nullable = true, precision = 2)
    public Double getStandardvalQsum() {
        return standardvalQsum;
    }

    public void setStandardvalQsum(Double standardvalQsum) {
        this.standardvalQsum = standardvalQsum;
    }

    @Basic
    @Column(name = "cellval_Qsum", nullable = true, precision = 2)
    public Double getCellvalQsum() {
        return cellvalQsum;
    }

    public void setCellvalQsum(Double cellvalQsum) {
        this.cellvalQsum = cellvalQsum;
    }

    @Basic
    @Column(name = "floorval_Qsum", nullable = true, precision = 2)
    public Double getFloorvalQsum() {
        return floorvalQsum;
    }

    public void setFloorvalQsum(Double floorvalQsum) {
        this.floorvalQsum = floorvalQsum;
    }

    @Basic
    @Column(name = "isMark_Qsum", nullable = true)
    public Integer getIsMarkQsum() {
        return isMarkQsum;
    }

    public void setIsMarkQsum(Integer isMarkQsum) {
        this.isMarkQsum = isMarkQsum;
    }

    @Basic
    @Column(name = "alarmcontent_Qsum", nullable = true, length = 255)
    public String getAlarmcontentQsum() {
        return alarmcontentQsum;
    }

    public void setAlarmcontentQsum(String alarmcontentQsum) {
        this.alarmcontentQsum = alarmcontentQsum;
    }

    @Basic
    @Column(name = "name_S1", nullable = true, length = 255)
    public String getNameS1() {
        return nameS1;
    }

    public void setNameS1(String nameS1) {
        this.nameS1 = nameS1;
    }

    @Basic
    @Column(name = "unit_S1", nullable = true, length = 255)
    public String getUnitS1() {
        return unitS1;
    }

    public void setUnitS1(String unitS1) {
        this.unitS1 = unitS1;
    }

    @Basic
    @Column(name = "standardval_S1", nullable = true, precision = 2)
    public Double getStandardvalS1() {
        return standardvalS1;
    }

    public void setStandardvalS1(Double standardvalS1) {
        this.standardvalS1 = standardvalS1;
    }

    @Basic
    @Column(name = "cellval_S1", nullable = true, precision = 2)
    public Double getCellvalS1() {
        return cellvalS1;
    }

    public void setCellvalS1(Double cellvalS1) {
        this.cellvalS1 = cellvalS1;
    }

    @Basic
    @Column(name = "floorval_S1", nullable = true, precision = 2)
    public Double getFloorvalS1() {
        return floorvalS1;
    }

    public void setFloorvalS1(Double floorvalS1) {
        this.floorvalS1 = floorvalS1;
    }

    @Basic
    @Column(name = "isMark_S1", nullable = true)
    public Integer getIsMarkS1() {
        return isMarkS1;
    }

    public void setIsMarkS1(Integer isMarkS1) {
        this.isMarkS1 = isMarkS1;
    }

    @Basic
    @Column(name = "alarmcontent_S1", nullable = true, length = 255)
    public String getAlarmcontentS1() {
        return alarmcontentS1;
    }

    public void setAlarmcontentS1(String alarmcontentS1) {
        this.alarmcontentS1 = alarmcontentS1;
    }

    @Basic
    @Column(name = "name_S2", nullable = true, length = 255)
    public String getNameS2() {
        return nameS2;
    }

    public void setNameS2(String nameS2) {
        this.nameS2 = nameS2;
    }

    @Basic
    @Column(name = "unit_S2", nullable = true, length = 255)
    public String getUnitS2() {
        return unitS2;
    }

    public void setUnitS2(String unitS2) {
        this.unitS2 = unitS2;
    }

    @Basic
    @Column(name = "standardval_S2", nullable = true, precision = 2)
    public Double getStandardvalS2() {
        return standardvalS2;
    }

    public void setStandardvalS2(Double standardvalS2) {
        this.standardvalS2 = standardvalS2;
    }

    @Basic
    @Column(name = "cellval_S2", nullable = true, precision = 2)
    public Double getCellvalS2() {
        return cellvalS2;
    }

    public void setCellvalS2(Double cellvalS2) {
        this.cellvalS2 = cellvalS2;
    }

    @Basic
    @Column(name = "floorval_S2", nullable = true, precision = 2)
    public Double getFloorvalS2() {
        return floorvalS2;
    }

    public void setFloorvalS2(Double floorvalS2) {
        this.floorvalS2 = floorvalS2;
    }

    @Basic
    @Column(name = "isMark_S2", nullable = true)
    public Integer getIsMarkS2() {
        return isMarkS2;
    }

    public void setIsMarkS2(Integer isMarkS2) {
        this.isMarkS2 = isMarkS2;
    }

    @Basic
    @Column(name = "alarmcontent_S2", nullable = true, length = 255)
    public String getAlarmcontentS2() {
        return alarmcontentS2;
    }

    public void setAlarmcontentS2(String alarmcontentS2) {
        this.alarmcontentS2 = alarmcontentS2;
    }

    @Basic
    @Column(name = "name_S3", nullable = true, length = 255)
    public String getNameS3() {
        return nameS3;
    }

    public void setNameS3(String nameS3) {
        this.nameS3 = nameS3;
    }

    @Basic
    @Column(name = "unit_S3", nullable = true, length = 255)
    public String getUnitS3() {
        return unitS3;
    }

    public void setUnitS3(String unitS3) {
        this.unitS3 = unitS3;
    }

    @Basic
    @Column(name = "standardval_S3", nullable = true, precision = 2)
    public Double getStandardvalS3() {
        return standardvalS3;
    }

    public void setStandardvalS3(Double standardvalS3) {
        this.standardvalS3 = standardvalS3;
    }

    @Basic
    @Column(name = "cellval_S3", nullable = true, precision = 2)
    public Double getCellvalS3() {
        return cellvalS3;
    }

    public void setCellvalS3(Double cellvalS3) {
        this.cellvalS3 = cellvalS3;
    }

    @Basic
    @Column(name = "floorval_S3", nullable = true, precision = 2)
    public Double getFloorvalS3() {
        return floorvalS3;
    }

    public void setFloorvalS3(Double floorvalS3) {
        this.floorvalS3 = floorvalS3;
    }

    @Basic
    @Column(name = "isMark_S3", nullable = true)
    public Integer getIsMarkS3() {
        return isMarkS3;
    }

    public void setIsMarkS3(Integer isMarkS3) {
        this.isMarkS3 = isMarkS3;
    }

    @Basic
    @Column(name = "alarmcontent_S3", nullable = true, length = 255)
    public String getAlarmcontentS3() {
        return alarmcontentS3;
    }

    public void setAlarmcontentS3(String alarmcontentS3) {
        this.alarmcontentS3 = alarmcontentS3;
    }

    @Basic
    @Column(name = "name_Ssum", nullable = true, length = 255)
    public String getNameSsum() {
        return nameSsum;
    }

    public void setNameSsum(String nameSsum) {
        this.nameSsum = nameSsum;
    }

    @Basic
    @Column(name = "unit_Ssum", nullable = true, length = 255)
    public String getUnitSsum() {
        return unitSsum;
    }

    public void setUnitSsum(String unitSsum) {
        this.unitSsum = unitSsum;
    }

    @Basic
    @Column(name = "standardval_Ssum", nullable = true, precision = 2)
    public Double getStandardvalSsum() {
        return standardvalSsum;
    }

    public void setStandardvalSsum(Double standardvalSsum) {
        this.standardvalSsum = standardvalSsum;
    }

    @Basic
    @Column(name = "cellval_Ssum", nullable = true, precision = 2)
    public Double getCellvalSsum() {
        return cellvalSsum;
    }

    public void setCellvalSsum(Double cellvalSsum) {
        this.cellvalSsum = cellvalSsum;
    }

    @Basic
    @Column(name = "floorval_Ssum", nullable = true, precision = 2)
    public Double getFloorvalSsum() {
        return floorvalSsum;
    }

    public void setFloorvalSsum(Double floorvalSsum) {
        this.floorvalSsum = floorvalSsum;
    }

    @Basic
    @Column(name = "isMark_Ssum", nullable = true)
    public Integer getIsMarkSsum() {
        return isMarkSsum;
    }

    public void setIsMarkSsum(Integer isMarkSsum) {
        this.isMarkSsum = isMarkSsum;
    }

    @Basic
    @Column(name = "alarmcontent_Ssum", nullable = true, length = 255)
    public String getAlarmcontentSsum() {
        return alarmcontentSsum;
    }

    public void setAlarmcontentSsum(String alarmcontentSsum) {
        this.alarmcontentSsum = alarmcontentSsum;
    }

    @Basic
    @Column(name = "name_PF1", nullable = true, length = 255)
    public String getNamePf1() {
        return namePf1;
    }

    public void setNamePf1(String namePf1) {
        this.namePf1 = namePf1;
    }

    @Basic
    @Column(name = "unit_PF1", nullable = true, length = 255)
    public String getUnitPf1() {
        return unitPf1;
    }

    public void setUnitPf1(String unitPf1) {
        this.unitPf1 = unitPf1;
    }

    @Basic
    @Column(name = "standardval_PF1", nullable = true, precision = 2)
    public Double getStandardvalPf1() {
        return standardvalPf1;
    }

    public void setStandardvalPf1(Double standardvalPf1) {
        this.standardvalPf1 = standardvalPf1;
    }

    @Basic
    @Column(name = "cellval_PF1", nullable = true, precision = 2)
    public Double getCellvalPf1() {
        return cellvalPf1;
    }

    public void setCellvalPf1(Double cellvalPf1) {
        this.cellvalPf1 = cellvalPf1;
    }

    @Basic
    @Column(name = "floorval_PF1", nullable = true, precision = 2)
    public Double getFloorvalPf1() {
        return floorvalPf1;
    }

    public void setFloorvalPf1(Double floorvalPf1) {
        this.floorvalPf1 = floorvalPf1;
    }

    @Basic
    @Column(name = "isMark_PF1", nullable = true)
    public Integer getIsMarkPf1() {
        return isMarkPf1;
    }

    public void setIsMarkPf1(Integer isMarkPf1) {
        this.isMarkPf1 = isMarkPf1;
    }

    @Basic
    @Column(name = "alarmcontent_PF1", nullable = true, length = 255)
    public String getAlarmcontentPf1() {
        return alarmcontentPf1;
    }

    public void setAlarmcontentPf1(String alarmcontentPf1) {
        this.alarmcontentPf1 = alarmcontentPf1;
    }

    @Basic
    @Column(name = "name_PF2", nullable = true, length = 255)
    public String getNamePf2() {
        return namePf2;
    }

    public void setNamePf2(String namePf2) {
        this.namePf2 = namePf2;
    }

    @Basic
    @Column(name = "unit_PF2", nullable = true, length = 255)
    public String getUnitPf2() {
        return unitPf2;
    }

    public void setUnitPf2(String unitPf2) {
        this.unitPf2 = unitPf2;
    }

    @Basic
    @Column(name = "standardval_PF2", nullable = true, precision = 2)
    public Double getStandardvalPf2() {
        return standardvalPf2;
    }

    public void setStandardvalPf2(Double standardvalPf2) {
        this.standardvalPf2 = standardvalPf2;
    }

    @Basic
    @Column(name = "cellval_PF2", nullable = true, precision = 2)
    public Double getCellvalPf2() {
        return cellvalPf2;
    }

    public void setCellvalPf2(Double cellvalPf2) {
        this.cellvalPf2 = cellvalPf2;
    }

    @Basic
    @Column(name = "floorval_PF2", nullable = true, precision = 2)
    public Double getFloorvalPf2() {
        return floorvalPf2;
    }

    public void setFloorvalPf2(Double floorvalPf2) {
        this.floorvalPf2 = floorvalPf2;
    }

    @Basic
    @Column(name = "isMark_PF2", nullable = true)
    public Integer getIsMarkPf2() {
        return isMarkPf2;
    }

    public void setIsMarkPf2(Integer isMarkPf2) {
        this.isMarkPf2 = isMarkPf2;
    }

    @Basic
    @Column(name = "alarmcontent_PF2", nullable = true, length = 255)
    public String getAlarmcontentPf2() {
        return alarmcontentPf2;
    }

    public void setAlarmcontentPf2(String alarmcontentPf2) {
        this.alarmcontentPf2 = alarmcontentPf2;
    }

    @Basic
    @Column(name = "name_PF3", nullable = true, length = 255)
    public String getNamePf3() {
        return namePf3;
    }

    public void setNamePf3(String namePf3) {
        this.namePf3 = namePf3;
    }

    @Basic
    @Column(name = "unit_PF3", nullable = true, length = 255)
    public String getUnitPf3() {
        return unitPf3;
    }

    public void setUnitPf3(String unitPf3) {
        this.unitPf3 = unitPf3;
    }

    @Basic
    @Column(name = "standardval_PF3", nullable = true, precision = 2)
    public Double getStandardvalPf3() {
        return standardvalPf3;
    }

    public void setStandardvalPf3(Double standardvalPf3) {
        this.standardvalPf3 = standardvalPf3;
    }

    @Basic
    @Column(name = "cellval_PF3", nullable = true, precision = 2)
    public Double getCellvalPf3() {
        return cellvalPf3;
    }

    public void setCellvalPf3(Double cellvalPf3) {
        this.cellvalPf3 = cellvalPf3;
    }

    @Basic
    @Column(name = "floorval_PF3", nullable = true, precision = 2)
    public Double getFloorvalPf3() {
        return floorvalPf3;
    }

    public void setFloorvalPf3(Double floorvalPf3) {
        this.floorvalPf3 = floorvalPf3;
    }

    @Basic
    @Column(name = "isMark_PF3", nullable = true)
    public Integer getIsMarkPf3() {
        return isMarkPf3;
    }

    public void setIsMarkPf3(Integer isMarkPf3) {
        this.isMarkPf3 = isMarkPf3;
    }

    @Basic
    @Column(name = "alarmcontent_PF3", nullable = true, length = 255)
    public String getAlarmcontentPf3() {
        return alarmcontentPf3;
    }

    public void setAlarmcontentPf3(String alarmcontentPf3) {
        this.alarmcontentPf3 = alarmcontentPf3;
    }

    @Basic
    @Column(name = "name_PFsum", nullable = true, length = 255)
    public String getNamePFsum() {
        return namePFsum;
    }

    public void setNamePFsum(String namePFsum) {
        this.namePFsum = namePFsum;
    }

    @Basic
    @Column(name = "unit_PFsum", nullable = true, length = 255)
    public String getUnitPFsum() {
        return unitPFsum;
    }

    public void setUnitPFsum(String unitPFsum) {
        this.unitPFsum = unitPFsum;
    }

    @Basic
    @Column(name = "standardval_PFsum", nullable = true, precision = 2)
    public Double getStandardvalPFsum() {
        return standardvalPFsum;
    }

    public void setStandardvalPFsum(Double standardvalPFsum) {
        this.standardvalPFsum = standardvalPFsum;
    }

    @Basic
    @Column(name = "cellval_PFsum", nullable = true, precision = 2)
    public Double getCellvalPFsum() {
        return cellvalPFsum;
    }

    public void setCellvalPFsum(Double cellvalPFsum) {
        this.cellvalPFsum = cellvalPFsum;
    }

    @Basic
    @Column(name = "floorval_PFsum", nullable = true, precision = 2)
    public Double getFloorvalPFsum() {
        return floorvalPFsum;
    }

    public void setFloorvalPFsum(Double floorvalPFsum) {
        this.floorvalPFsum = floorvalPFsum;
    }

    @Basic
    @Column(name = "isMark_PFsum", nullable = true)
    public Integer getIsMarkPFsum() {
        return isMarkPFsum;
    }

    public void setIsMarkPFsum(Integer isMarkPFsum) {
        this.isMarkPFsum = isMarkPFsum;
    }

    @Basic
    @Column(name = "alarmcontent_PFsum", nullable = true, length = 255)
    public String getAlarmcontentPFsum() {
        return alarmcontentPFsum;
    }

    public void setAlarmcontentPFsum(String alarmcontentPFsum) {
        this.alarmcontentPFsum = alarmcontentPFsum;
    }

    @Basic
    @Column(name = "name_CosPHI1", nullable = true, length = 255)
    public String getNameCosPhi1() {
        return nameCosPhi1;
    }

    public void setNameCosPhi1(String nameCosPhi1) {
        this.nameCosPhi1 = nameCosPhi1;
    }

    @Basic
    @Column(name = "unit_CosPHI1", nullable = true, length = 255)
    public String getUnitCosPhi1() {
        return unitCosPhi1;
    }

    public void setUnitCosPhi1(String unitCosPhi1) {
        this.unitCosPhi1 = unitCosPhi1;
    }

    @Basic
    @Column(name = "standardval_CosPHI1", nullable = true, precision = 2)
    public Double getStandardvalCosPhi1() {
        return standardvalCosPhi1;
    }

    public void setStandardvalCosPhi1(Double standardvalCosPhi1) {
        this.standardvalCosPhi1 = standardvalCosPhi1;
    }

    @Basic
    @Column(name = "cellval_CosPHI1", nullable = true, precision = 2)
    public Double getCellvalCosPhi1() {
        return cellvalCosPhi1;
    }

    public void setCellvalCosPhi1(Double cellvalCosPhi1) {
        this.cellvalCosPhi1 = cellvalCosPhi1;
    }

    @Basic
    @Column(name = "floorval_CosPHI1", nullable = true, precision = 2)
    public Double getFloorvalCosPhi1() {
        return floorvalCosPhi1;
    }

    public void setFloorvalCosPhi1(Double floorvalCosPhi1) {
        this.floorvalCosPhi1 = floorvalCosPhi1;
    }

    @Basic
    @Column(name = "isMark_CosPHI1", nullable = true)
    public Integer getIsMarkCosPhi1() {
        return isMarkCosPhi1;
    }

    public void setIsMarkCosPhi1(Integer isMarkCosPhi1) {
        this.isMarkCosPhi1 = isMarkCosPhi1;
    }

    @Basic
    @Column(name = "alarmcontent_CosPHI1", nullable = true, length = 255)
    public String getAlarmcontentCosPhi1() {
        return alarmcontentCosPhi1;
    }

    public void setAlarmcontentCosPhi1(String alarmcontentCosPhi1) {
        this.alarmcontentCosPhi1 = alarmcontentCosPhi1;
    }

    @Basic
    @Column(name = "name_CosPHI2", nullable = true, length = 255)
    public String getNameCosPhi2() {
        return nameCosPhi2;
    }

    public void setNameCosPhi2(String nameCosPhi2) {
        this.nameCosPhi2 = nameCosPhi2;
    }

    @Basic
    @Column(name = "unit_CosPHI2", nullable = true, length = 255)
    public String getUnitCosPhi2() {
        return unitCosPhi2;
    }

    public void setUnitCosPhi2(String unitCosPhi2) {
        this.unitCosPhi2 = unitCosPhi2;
    }

    @Basic
    @Column(name = "standardval_CosPHI2", nullable = true, precision = 2)
    public Double getStandardvalCosPhi2() {
        return standardvalCosPhi2;
    }

    public void setStandardvalCosPhi2(Double standardvalCosPhi2) {
        this.standardvalCosPhi2 = standardvalCosPhi2;
    }

    @Basic
    @Column(name = "cellval_CosPHI2", nullable = true, precision = 2)
    public Double getCellvalCosPhi2() {
        return cellvalCosPhi2;
    }

    public void setCellvalCosPhi2(Double cellvalCosPhi2) {
        this.cellvalCosPhi2 = cellvalCosPhi2;
    }

    @Basic
    @Column(name = "floorval_CosPHI2", nullable = true, precision = 2)
    public Double getFloorvalCosPhi2() {
        return floorvalCosPhi2;
    }

    public void setFloorvalCosPhi2(Double floorvalCosPhi2) {
        this.floorvalCosPhi2 = floorvalCosPhi2;
    }

    @Basic
    @Column(name = "isMark_CosPHI2", nullable = true)
    public Integer getIsMarkCosPhi2() {
        return isMarkCosPhi2;
    }

    public void setIsMarkCosPhi2(Integer isMarkCosPhi2) {
        this.isMarkCosPhi2 = isMarkCosPhi2;
    }

    @Basic
    @Column(name = "alarmcontent_CosPHI2", nullable = true, length = 255)
    public String getAlarmcontentCosPhi2() {
        return alarmcontentCosPhi2;
    }

    public void setAlarmcontentCosPhi2(String alarmcontentCosPhi2) {
        this.alarmcontentCosPhi2 = alarmcontentCosPhi2;
    }

    @Basic
    @Column(name = "name_CosPHI3", nullable = true, length = 255)
    public String getNameCosPhi3() {
        return nameCosPhi3;
    }

    public void setNameCosPhi3(String nameCosPhi3) {
        this.nameCosPhi3 = nameCosPhi3;
    }

    @Basic
    @Column(name = "unit_CosPHI3", nullable = true, length = 255)
    public String getUnitCosPhi3() {
        return unitCosPhi3;
    }

    public void setUnitCosPhi3(String unitCosPhi3) {
        this.unitCosPhi3 = unitCosPhi3;
    }

    @Basic
    @Column(name = "standardval_CosPHI3", nullable = true, precision = 2)
    public Double getStandardvalCosPhi3() {
        return standardvalCosPhi3;
    }

    public void setStandardvalCosPhi3(Double standardvalCosPhi3) {
        this.standardvalCosPhi3 = standardvalCosPhi3;
    }

    @Basic
    @Column(name = "cellval_CosPHI3", nullable = true, precision = 2)
    public Double getCellvalCosPhi3() {
        return cellvalCosPhi3;
    }

    public void setCellvalCosPhi3(Double cellvalCosPhi3) {
        this.cellvalCosPhi3 = cellvalCosPhi3;
    }

    @Basic
    @Column(name = "floorval_CosPHI3", nullable = true, precision = 2)
    public Double getFloorvalCosPhi3() {
        return floorvalCosPhi3;
    }

    public void setFloorvalCosPhi3(Double floorvalCosPhi3) {
        this.floorvalCosPhi3 = floorvalCosPhi3;
    }

    @Basic
    @Column(name = "isMark_CosPHI3", nullable = true)
    public Integer getIsMarkCosPhi3() {
        return isMarkCosPhi3;
    }

    public void setIsMarkCosPhi3(Integer isMarkCosPhi3) {
        this.isMarkCosPhi3 = isMarkCosPhi3;
    }

    @Basic
    @Column(name = "alarmcontent_CosPHI3", nullable = true, length = 255)
    public String getAlarmcontentCosPhi3() {
        return alarmcontentCosPhi3;
    }

    public void setAlarmcontentCosPhi3(String alarmcontentCosPhi3) {
        this.alarmcontentCosPhi3 = alarmcontentCosPhi3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DevicesThreshold that = (DevicesThreshold) o;
        return dtid == that.dtid &&
                Objects.equals(did, that.did) &&
                Objects.equals(type, that.type) &&
                Objects.equals(nameU1, that.nameU1) &&
                Objects.equals(unitU1, that.unitU1) &&
                Objects.equals(standardvalU1, that.standardvalU1) &&
                Objects.equals(cellvalU1, that.cellvalU1) &&
                Objects.equals(floorvalU1, that.floorvalU1) &&
                Objects.equals(isMarkU1, that.isMarkU1) &&
                Objects.equals(alarmcontentU1, that.alarmcontentU1) &&
                Objects.equals(nameU2, that.nameU2) &&
                Objects.equals(unitU2, that.unitU2) &&
                Objects.equals(standardvalU2, that.standardvalU2) &&
                Objects.equals(cellvalU2, that.cellvalU2) &&
                Objects.equals(floorvalU2, that.floorvalU2) &&
                Objects.equals(isMarkU2, that.isMarkU2) &&
                Objects.equals(alarmcontentU2, that.alarmcontentU2) &&
                Objects.equals(nameU3, that.nameU3) &&
                Objects.equals(unitU3, that.unitU3) &&
                Objects.equals(standardvalU3, that.standardvalU3) &&
                Objects.equals(cellvalU3, that.cellvalU3) &&
                Objects.equals(floorvalU3, that.floorvalU3) &&
                Objects.equals(isMarkU3, that.isMarkU3) &&
                Objects.equals(alarmcontentU3, that.alarmcontentU3) &&
                Objects.equals(nameU4, that.nameU4) &&
                Objects.equals(unitU4, that.unitU4) &&
                Objects.equals(standardvalU4, that.standardvalU4) &&
                Objects.equals(cellvalU4, that.cellvalU4) &&
                Objects.equals(floorvalU4, that.floorvalU4) &&
                Objects.equals(isMarkU4, that.isMarkU4) &&
                Objects.equals(alarmcontentU4, that.alarmcontentU4) &&
                Objects.equals(nameI1, that.nameI1) &&
                Objects.equals(unitI1, that.unitI1) &&
                Objects.equals(standardvalI1, that.standardvalI1) &&
                Objects.equals(cellvalI1, that.cellvalI1) &&
                Objects.equals(floorvalI1, that.floorvalI1) &&
                Objects.equals(isMarkI1, that.isMarkI1) &&
                Objects.equals(alarmcontentI1, that.alarmcontentI1) &&
                Objects.equals(nameI2, that.nameI2) &&
                Objects.equals(unitI2, that.unitI2) &&
                Objects.equals(standardvalI2, that.standardvalI2) &&
                Objects.equals(cellvalI2, that.cellvalI2) &&
                Objects.equals(floorvalI2, that.floorvalI2) &&
                Objects.equals(isMarkI2, that.isMarkI2) &&
                Objects.equals(alarmcontentI2, that.alarmcontentI2) &&
                Objects.equals(nameI3, that.nameI3) &&
                Objects.equals(unitI3, that.unitI3) &&
                Objects.equals(standardvalI3, that.standardvalI3) &&
                Objects.equals(cellvalI3, that.cellvalI3) &&
                Objects.equals(floorvalI3, that.floorvalI3) &&
                Objects.equals(isMarkI3, that.isMarkI3) &&
                Objects.equals(alarmcontentI3, that.alarmcontentI3) &&
                Objects.equals(nameI4, that.nameI4) &&
                Objects.equals(unitI4, that.unitI4) &&
                Objects.equals(standardvalI4, that.standardvalI4) &&
                Objects.equals(cellvalI4, that.cellvalI4) &&
                Objects.equals(floorvalI4, that.floorvalI4) &&
                Objects.equals(isMarkI4, that.isMarkI4) &&
                Objects.equals(alarmcontentI4, that.alarmcontentI4) &&
                Objects.equals(nameP1, that.nameP1) &&
                Objects.equals(unitP1, that.unitP1) &&
                Objects.equals(standardvalP1, that.standardvalP1) &&
                Objects.equals(cellvalP1, that.cellvalP1) &&
                Objects.equals(floorvalP1, that.floorvalP1) &&
                Objects.equals(isMarkP1, that.isMarkP1) &&
                Objects.equals(alarmcontentP1, that.alarmcontentP1) &&
                Objects.equals(nameP2, that.nameP2) &&
                Objects.equals(unitP2, that.unitP2) &&
                Objects.equals(standardvalP2, that.standardvalP2) &&
                Objects.equals(cellvalP2, that.cellvalP2) &&
                Objects.equals(floorvalP2, that.floorvalP2) &&
                Objects.equals(isMarkP2, that.isMarkP2) &&
                Objects.equals(alarmcontentP2, that.alarmcontentP2) &&
                Objects.equals(nameP3, that.nameP3) &&
                Objects.equals(unitP3, that.unitP3) &&
                Objects.equals(standardvalP3, that.standardvalP3) &&
                Objects.equals(cellvalP3, that.cellvalP3) &&
                Objects.equals(floorvalP3, that.floorvalP3) &&
                Objects.equals(isMarkP3, that.isMarkP3) &&
                Objects.equals(alarmcontentP3, that.alarmcontentP3) &&
                Objects.equals(namePsum, that.namePsum) &&
                Objects.equals(unitPsum, that.unitPsum) &&
                Objects.equals(standardvalPsum, that.standardvalPsum) &&
                Objects.equals(cellvalPsum, that.cellvalPsum) &&
                Objects.equals(floorvalPsum, that.floorvalPsum) &&
                Objects.equals(isMarkPsum, that.isMarkPsum) &&
                Objects.equals(alarmcontentPsum, that.alarmcontentPsum) &&
                Objects.equals(nameQ1, that.nameQ1) &&
                Objects.equals(unitQ1, that.unitQ1) &&
                Objects.equals(standardvalQ1, that.standardvalQ1) &&
                Objects.equals(cellvalQ1, that.cellvalQ1) &&
                Objects.equals(floorvalQ1, that.floorvalQ1) &&
                Objects.equals(isMarkQ1, that.isMarkQ1) &&
                Objects.equals(alarmcontentQ1, that.alarmcontentQ1) &&
                Objects.equals(nameQ2, that.nameQ2) &&
                Objects.equals(unitQ2, that.unitQ2) &&
                Objects.equals(standardvalQ2, that.standardvalQ2) &&
                Objects.equals(cellvalQ2, that.cellvalQ2) &&
                Objects.equals(floorvalQ2, that.floorvalQ2) &&
                Objects.equals(isMarkQ2, that.isMarkQ2) &&
                Objects.equals(alarmcontentQ2, that.alarmcontentQ2) &&
                Objects.equals(nameQ3, that.nameQ3) &&
                Objects.equals(unitQ3, that.unitQ3) &&
                Objects.equals(standardvalQ3, that.standardvalQ3) &&
                Objects.equals(cellvalQ3, that.cellvalQ3) &&
                Objects.equals(floorvalQ3, that.floorvalQ3) &&
                Objects.equals(isMarkQ3, that.isMarkQ3) &&
                Objects.equals(alarmcontentQ3, that.alarmcontentQ3) &&
                Objects.equals(nameQsum, that.nameQsum) &&
                Objects.equals(unitQsum, that.unitQsum) &&
                Objects.equals(standardvalQsum, that.standardvalQsum) &&
                Objects.equals(cellvalQsum, that.cellvalQsum) &&
                Objects.equals(floorvalQsum, that.floorvalQsum) &&
                Objects.equals(isMarkQsum, that.isMarkQsum) &&
                Objects.equals(alarmcontentQsum, that.alarmcontentQsum) &&
                Objects.equals(nameS1, that.nameS1) &&
                Objects.equals(unitS1, that.unitS1) &&
                Objects.equals(standardvalS1, that.standardvalS1) &&
                Objects.equals(cellvalS1, that.cellvalS1) &&
                Objects.equals(floorvalS1, that.floorvalS1) &&
                Objects.equals(isMarkS1, that.isMarkS1) &&
                Objects.equals(alarmcontentS1, that.alarmcontentS1) &&
                Objects.equals(nameS2, that.nameS2) &&
                Objects.equals(unitS2, that.unitS2) &&
                Objects.equals(standardvalS2, that.standardvalS2) &&
                Objects.equals(cellvalS2, that.cellvalS2) &&
                Objects.equals(floorvalS2, that.floorvalS2) &&
                Objects.equals(isMarkS2, that.isMarkS2) &&
                Objects.equals(alarmcontentS2, that.alarmcontentS2) &&
                Objects.equals(nameS3, that.nameS3) &&
                Objects.equals(unitS3, that.unitS3) &&
                Objects.equals(standardvalS3, that.standardvalS3) &&
                Objects.equals(cellvalS3, that.cellvalS3) &&
                Objects.equals(floorvalS3, that.floorvalS3) &&
                Objects.equals(isMarkS3, that.isMarkS3) &&
                Objects.equals(alarmcontentS3, that.alarmcontentS3) &&
                Objects.equals(nameSsum, that.nameSsum) &&
                Objects.equals(unitSsum, that.unitSsum) &&
                Objects.equals(standardvalSsum, that.standardvalSsum) &&
                Objects.equals(cellvalSsum, that.cellvalSsum) &&
                Objects.equals(floorvalSsum, that.floorvalSsum) &&
                Objects.equals(isMarkSsum, that.isMarkSsum) &&
                Objects.equals(alarmcontentSsum, that.alarmcontentSsum) &&
                Objects.equals(namePf1, that.namePf1) &&
                Objects.equals(unitPf1, that.unitPf1) &&
                Objects.equals(standardvalPf1, that.standardvalPf1) &&
                Objects.equals(cellvalPf1, that.cellvalPf1) &&
                Objects.equals(floorvalPf1, that.floorvalPf1) &&
                Objects.equals(isMarkPf1, that.isMarkPf1) &&
                Objects.equals(alarmcontentPf1, that.alarmcontentPf1) &&
                Objects.equals(namePf2, that.namePf2) &&
                Objects.equals(unitPf2, that.unitPf2) &&
                Objects.equals(standardvalPf2, that.standardvalPf2) &&
                Objects.equals(cellvalPf2, that.cellvalPf2) &&
                Objects.equals(floorvalPf2, that.floorvalPf2) &&
                Objects.equals(isMarkPf2, that.isMarkPf2) &&
                Objects.equals(alarmcontentPf2, that.alarmcontentPf2) &&
                Objects.equals(namePf3, that.namePf3) &&
                Objects.equals(unitPf3, that.unitPf3) &&
                Objects.equals(standardvalPf3, that.standardvalPf3) &&
                Objects.equals(cellvalPf3, that.cellvalPf3) &&
                Objects.equals(floorvalPf3, that.floorvalPf3) &&
                Objects.equals(isMarkPf3, that.isMarkPf3) &&
                Objects.equals(alarmcontentPf3, that.alarmcontentPf3) &&
                Objects.equals(namePFsum, that.namePFsum) &&
                Objects.equals(unitPFsum, that.unitPFsum) &&
                Objects.equals(standardvalPFsum, that.standardvalPFsum) &&
                Objects.equals(cellvalPFsum, that.cellvalPFsum) &&
                Objects.equals(floorvalPFsum, that.floorvalPFsum) &&
                Objects.equals(isMarkPFsum, that.isMarkPFsum) &&
                Objects.equals(alarmcontentPFsum, that.alarmcontentPFsum) &&
                Objects.equals(nameCosPhi1, that.nameCosPhi1) &&
                Objects.equals(unitCosPhi1, that.unitCosPhi1) &&
                Objects.equals(standardvalCosPhi1, that.standardvalCosPhi1) &&
                Objects.equals(cellvalCosPhi1, that.cellvalCosPhi1) &&
                Objects.equals(floorvalCosPhi1, that.floorvalCosPhi1) &&
                Objects.equals(isMarkCosPhi1, that.isMarkCosPhi1) &&
                Objects.equals(alarmcontentCosPhi1, that.alarmcontentCosPhi1) &&
                Objects.equals(nameCosPhi2, that.nameCosPhi2) &&
                Objects.equals(unitCosPhi2, that.unitCosPhi2) &&
                Objects.equals(standardvalCosPhi2, that.standardvalCosPhi2) &&
                Objects.equals(cellvalCosPhi2, that.cellvalCosPhi2) &&
                Objects.equals(floorvalCosPhi2, that.floorvalCosPhi2) &&
                Objects.equals(isMarkCosPhi2, that.isMarkCosPhi2) &&
                Objects.equals(alarmcontentCosPhi2, that.alarmcontentCosPhi2) &&
                Objects.equals(nameCosPhi3, that.nameCosPhi3) &&
                Objects.equals(unitCosPhi3, that.unitCosPhi3) &&
                Objects.equals(standardvalCosPhi3, that.standardvalCosPhi3) &&
                Objects.equals(cellvalCosPhi3, that.cellvalCosPhi3) &&
                Objects.equals(floorvalCosPhi3, that.floorvalCosPhi3) &&
                Objects.equals(isMarkCosPhi3, that.isMarkCosPhi3) &&
                Objects.equals(alarmcontentCosPhi3, that.alarmcontentCosPhi3);
    }

    @Override
    public int hashCode() {

        return Objects.hash(dtid, did, type, nameU1, unitU1, standardvalU1, cellvalU1, floorvalU1, isMarkU1, alarmcontentU1, nameU2, unitU2, standardvalU2, cellvalU2, floorvalU2, isMarkU2, alarmcontentU2, nameU3, unitU3, standardvalU3, cellvalU3, floorvalU3, isMarkU3, alarmcontentU3, nameU4, unitU4, standardvalU4, cellvalU4, floorvalU4, isMarkU4, alarmcontentU4, nameI1, unitI1, standardvalI1, cellvalI1, floorvalI1, isMarkI1, alarmcontentI1, nameI2, unitI2, standardvalI2, cellvalI2, floorvalI2, isMarkI2, alarmcontentI2, nameI3, unitI3, standardvalI3, cellvalI3, floorvalI3, isMarkI3, alarmcontentI3, nameI4, unitI4, standardvalI4, cellvalI4, floorvalI4, isMarkI4, alarmcontentI4, nameP1, unitP1, standardvalP1, cellvalP1, floorvalP1, isMarkP1, alarmcontentP1, nameP2, unitP2, standardvalP2, cellvalP2, floorvalP2, isMarkP2, alarmcontentP2, nameP3, unitP3, standardvalP3, cellvalP3, floorvalP3, isMarkP3, alarmcontentP3, namePsum, unitPsum, standardvalPsum, cellvalPsum, floorvalPsum, isMarkPsum, alarmcontentPsum, nameQ1, unitQ1, standardvalQ1, cellvalQ1, floorvalQ1, isMarkQ1, alarmcontentQ1, nameQ2, unitQ2, standardvalQ2, cellvalQ2, floorvalQ2, isMarkQ2, alarmcontentQ2, nameQ3, unitQ3, standardvalQ3, cellvalQ3, floorvalQ3, isMarkQ3, alarmcontentQ3, nameQsum, unitQsum, standardvalQsum, cellvalQsum, floorvalQsum, isMarkQsum, alarmcontentQsum, nameS1, unitS1, standardvalS1, cellvalS1, floorvalS1, isMarkS1, alarmcontentS1, nameS2, unitS2, standardvalS2, cellvalS2, floorvalS2, isMarkS2, alarmcontentS2, nameS3, unitS3, standardvalS3, cellvalS3, floorvalS3, isMarkS3, alarmcontentS3, nameSsum, unitSsum, standardvalSsum, cellvalSsum, floorvalSsum, isMarkSsum, alarmcontentSsum, namePf1, unitPf1, standardvalPf1, cellvalPf1, floorvalPf1, isMarkPf1, alarmcontentPf1, namePf2, unitPf2, standardvalPf2, cellvalPf2, floorvalPf2, isMarkPf2, alarmcontentPf2, namePf3, unitPf3, standardvalPf3, cellvalPf3, floorvalPf3, isMarkPf3, alarmcontentPf3, namePFsum, unitPFsum, standardvalPFsum, cellvalPFsum, floorvalPFsum, isMarkPFsum, alarmcontentPFsum, nameCosPhi1, unitCosPhi1, standardvalCosPhi1, cellvalCosPhi1, floorvalCosPhi1, isMarkCosPhi1, alarmcontentCosPhi1, nameCosPhi2, unitCosPhi2, standardvalCosPhi2, cellvalCosPhi2, floorvalCosPhi2, isMarkCosPhi2, alarmcontentCosPhi2, nameCosPhi3, unitCosPhi3, standardvalCosPhi3, cellvalCosPhi3, floorvalCosPhi3, isMarkCosPhi3, alarmcontentCosPhi3);
    }
}
