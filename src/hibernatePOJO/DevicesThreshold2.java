package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "devices_threshold2", schema = "test", catalog = "")
public class DevicesThreshold2 {
    private int dtid;
    private String did;
    private String type;
    private String nameFU1;
    private String unitFU1;
    private Double standardvalFU1;
    private Double cellvalFU1;
    private Double floorvalFU1;
    private Integer isMarkFU1;
    private String alarmcontentFU1;
    private String nameFU2;
    private String unitFU2;
    private Double standardvalFU2;
    private Double cellvalFU2;
    private Double floorvalFU2;
    private Integer isMarkFU2;
    private String alarmcontentFU2;
    private String nameFU3;
    private String unitFU3;
    private Double standardvalFU3;
    private Double cellvalFU3;
    private Double floorvalFU3;
    private Integer isMarkFU3;
    private String alarmcontentFU3;
    private String namePstU1;
    private String unitPstU1;
    private Double standardvalPstU1;
    private Double cellvalPstU1;
    private Double floorvalPstU1;
    private Integer isMarkPstU1;
    private String alarmcontentPstU1;
    private String namePstU2;
    private String unitPstU2;
    private Double standardvalPstU2;
    private Double cellvalPstU2;
    private Double floorvalPstU2;
    private Integer isMarkPstU2;
    private String alarmcontentPstU2;
    private String namePstU3;
    private String unitPstU3;
    private Double standardvalPstU3;
    private Double cellvalPstU3;
    private Double floorvalPstU3;
    private Integer isMarkPstU3;
    private String alarmcontentPstU3;
    private String namePltU1;
    private String unitPltU1;
    private Double standardvalPltU1;
    private Double cellvalPltU1;
    private Double floorvalPltU1;
    private Integer isMarkPltU1;
    private String alarmcontentPltU1;
    private String namePltU2;
    private String unitPltU2;
    private Double standardvalPltU2;
    private Double cellvalPltU2;
    private Double floorvalPltU2;
    private Integer isMarkPltU2;
    private String alarmcontentPltU2;
    private String namePltU3;
    private String unitPltU3;
    private Double standardvalPltU3;
    private Double cellvalPltU3;
    private Double floorvalPltU3;
    private Integer isMarkPltU3;
    private String alarmcontentPltU3;
    private String nameHz;
    private String unitHz;
    private Double standardvalHz;
    private Double cellvalHz;
    private Double floorvalHz;
    private Integer isMarkHz;
    private String alarmcontentHz;
    private String nameAngleU1;
    private String unitAngleU1;
    private Double standardvalAngleU1;
    private Double cellvalAngleU1;
    private Double floorvalAngleU1;
    private Integer isMarkAngleU1;
    private String alarmcontentAngleU1;
    private String nameAngleU2;
    private String unitAngleU2;
    private Double standardvalAngleU2;
    private Double cellvalAngleU2;
    private Double floorvalAngleU2;
    private Integer isMarkAngleU2;
    private String alarmcontentAngleU2;
    private String nameAngleU3;
    private String unitAngleU3;
    private Double standardvalAngleU3;
    private Double cellvalAngleU3;
    private Double floorvalAngleU3;
    private Integer isMarkAngleU3;
    private String alarmcontentAngleU3;
    private String nameAngleV1;
    private String unitAngleV1;
    private Double standardvalAngleV1;
    private Double cellvalAngleV1;
    private Double floorvalAngleV1;
    private Integer isMarkAngleV1;
    private String alarmcontentAngleV1;
    private String nameAngleV2;
    private String unitAngleV2;
    private Double standardvalAngleV2;
    private Double cellvalAngleV2;
    private Double floorvalAngleV2;
    private Integer isMarkAngleV2;
    private String alarmcontentAngleV2;
    private String nameAngleV3;
    private String unitAngleV3;
    private Double standardvalAngleV3;
    private Double cellvalAngleV3;
    private Double floorvalAngleV3;
    private Integer isMarkAngleV3;
    private String alarmcontentAngleV3;
    private String nameAngleI1;
    private String unitAngleI1;
    private Double standardvalAngleI1;
    private Double cellvalAngleI1;
    private Double floorvalAngleI1;
    private Integer isMarkAngleI1;
    private String alarmcontentAngleI1;
    private String nameAngleI2;
    private String unitAngleI2;
    private Double standardvalAngleI2;
    private Double cellvalAngleI2;
    private Double floorvalAngleI2;
    private Integer isMarkAngleI2;
    private String alarmcontentAngleI2;
    private String nameAngleI3;
    private String unitAngleI3;
    private Double standardvalAngleI3;
    private Double cellvalAngleI3;
    private Double floorvalAngleI3;
    private Integer isMarkAngleI3;
    private String alarmcontentAngleI3;
    private String nameAunb;
    private String unitAunb;
    private Double standardvalAunb;
    private Double cellvalAunb;
    private Double floorvalAunb;
    private Integer isMarkAunb;
    private String alarmcontentAunb;
    private String nameUunb;
    private String unitUunb;
    private Double standardvalUunb;
    private Double cellvalUunb;
    private Double floorvalUunb;
    private Integer isMarkUunb;
    private String alarmcontentUunb;
    private String nameVunb;
    private String unitVunb;
    private Double standardvalVunb;
    private Double cellvalVunb;
    private Double floorvalVunb;
    private Integer isMarkVunb;
    private String alarmcontentVunb;

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
    @Column(name = "name_|f|U1", nullable = true, length = 255)
    public String getNameFU1() {
        return nameFU1;
    }

    public void setNameFU1(String nameFU1) {
        this.nameFU1 = nameFU1;
    }

    @Basic
    @Column(name = "unit_|f|U1", nullable = true, length = 255)
    public String getUnitFU1() {
        return unitFU1;
    }

    public void setUnitFU1(String unitFU1) {
        this.unitFU1 = unitFU1;
    }

    @Basic
    @Column(name = "standardval_|f|U1", nullable = true, precision = 2)
    public Double getStandardvalFU1() {
        return standardvalFU1;
    }

    public void setStandardvalFU1(Double standardvalFU1) {
        this.standardvalFU1 = standardvalFU1;
    }

    @Basic
    @Column(name = "cellval_|f|U1", nullable = true, precision = 2)
    public Double getCellvalFU1() {
        return cellvalFU1;
    }

    public void setCellvalFU1(Double cellvalFU1) {
        this.cellvalFU1 = cellvalFU1;
    }

    @Basic
    @Column(name = "floorval_|f|U1", nullable = true, precision = 2)
    public Double getFloorvalFU1() {
        return floorvalFU1;
    }

    public void setFloorvalFU1(Double floorvalFU1) {
        this.floorvalFU1 = floorvalFU1;
    }

    @Basic
    @Column(name = "isMark_|f|U1", nullable = true)
    public Integer getIsMarkFU1() {
        return isMarkFU1;
    }

    public void setIsMarkFU1(Integer isMarkFU1) {
        this.isMarkFU1 = isMarkFU1;
    }

    @Basic
    @Column(name = "alarmcontent_|f|U1", nullable = true, length = 255)
    public String getAlarmcontentFU1() {
        return alarmcontentFU1;
    }

    public void setAlarmcontentFU1(String alarmcontentFU1) {
        this.alarmcontentFU1 = alarmcontentFU1;
    }

    @Basic
    @Column(name = "name_|f|U2", nullable = true, length = 255)
    public String getNameFU2() {
        return nameFU2;
    }

    public void setNameFU2(String nameFU2) {
        this.nameFU2 = nameFU2;
    }

    @Basic
    @Column(name = "unit_|f|U2", nullable = true, length = 255)
    public String getUnitFU2() {
        return unitFU2;
    }

    public void setUnitFU2(String unitFU2) {
        this.unitFU2 = unitFU2;
    }

    @Basic
    @Column(name = "standardval_|f|U2", nullable = true, precision = 2)
    public Double getStandardvalFU2() {
        return standardvalFU2;
    }

    public void setStandardvalFU2(Double standardvalFU2) {
        this.standardvalFU2 = standardvalFU2;
    }

    @Basic
    @Column(name = "cellval_|f|U2", nullable = true, precision = 2)
    public Double getCellvalFU2() {
        return cellvalFU2;
    }

    public void setCellvalFU2(Double cellvalFU2) {
        this.cellvalFU2 = cellvalFU2;
    }

    @Basic
    @Column(name = "floorval_|f|U2", nullable = true, precision = 2)
    public Double getFloorvalFU2() {
        return floorvalFU2;
    }

    public void setFloorvalFU2(Double floorvalFU2) {
        this.floorvalFU2 = floorvalFU2;
    }

    @Basic
    @Column(name = "isMark_|f|U2", nullable = true)
    public Integer getIsMarkFU2() {
        return isMarkFU2;
    }

    public void setIsMarkFU2(Integer isMarkFU2) {
        this.isMarkFU2 = isMarkFU2;
    }

    @Basic
    @Column(name = "alarmcontent_|f|U2", nullable = true, length = 255)
    public String getAlarmcontentFU2() {
        return alarmcontentFU2;
    }

    public void setAlarmcontentFU2(String alarmcontentFU2) {
        this.alarmcontentFU2 = alarmcontentFU2;
    }

    @Basic
    @Column(name = "name_|f|U3", nullable = true, length = 255)
    public String getNameFU3() {
        return nameFU3;
    }

    public void setNameFU3(String nameFU3) {
        this.nameFU3 = nameFU3;
    }

    @Basic
    @Column(name = "unit_|f|U3", nullable = true, length = 255)
    public String getUnitFU3() {
        return unitFU3;
    }

    public void setUnitFU3(String unitFU3) {
        this.unitFU3 = unitFU3;
    }

    @Basic
    @Column(name = "standardval_|f|U3", nullable = true, precision = 2)
    public Double getStandardvalFU3() {
        return standardvalFU3;
    }

    public void setStandardvalFU3(Double standardvalFU3) {
        this.standardvalFU3 = standardvalFU3;
    }

    @Basic
    @Column(name = "cellval_|f|U3", nullable = true, precision = 2)
    public Double getCellvalFU3() {
        return cellvalFU3;
    }

    public void setCellvalFU3(Double cellvalFU3) {
        this.cellvalFU3 = cellvalFU3;
    }

    @Basic
    @Column(name = "floorval_|f|U3", nullable = true, precision = 2)
    public Double getFloorvalFU3() {
        return floorvalFU3;
    }

    public void setFloorvalFU3(Double floorvalFU3) {
        this.floorvalFU3 = floorvalFU3;
    }

    @Basic
    @Column(name = "isMark_|f|U3", nullable = true)
    public Integer getIsMarkFU3() {
        return isMarkFU3;
    }

    public void setIsMarkFU3(Integer isMarkFU3) {
        this.isMarkFU3 = isMarkFU3;
    }

    @Basic
    @Column(name = "alarmcontent_|f|U3", nullable = true, length = 255)
    public String getAlarmcontentFU3() {
        return alarmcontentFU3;
    }

    public void setAlarmcontentFU3(String alarmcontentFU3) {
        this.alarmcontentFU3 = alarmcontentFU3;
    }

    @Basic
    @Column(name = "name_Pst_U1", nullable = true, length = 255)
    public String getNamePstU1() {
        return namePstU1;
    }

    public void setNamePstU1(String namePstU1) {
        this.namePstU1 = namePstU1;
    }

    @Basic
    @Column(name = "unit_Pst_U1", nullable = true, length = 255)
    public String getUnitPstU1() {
        return unitPstU1;
    }

    public void setUnitPstU1(String unitPstU1) {
        this.unitPstU1 = unitPstU1;
    }

    @Basic
    @Column(name = "standardval_Pst_U1", nullable = true, precision = 2)
    public Double getStandardvalPstU1() {
        return standardvalPstU1;
    }

    public void setStandardvalPstU1(Double standardvalPstU1) {
        this.standardvalPstU1 = standardvalPstU1;
    }

    @Basic
    @Column(name = "cellval_Pst_U1", nullable = true, precision = 2)
    public Double getCellvalPstU1() {
        return cellvalPstU1;
    }

    public void setCellvalPstU1(Double cellvalPstU1) {
        this.cellvalPstU1 = cellvalPstU1;
    }

    @Basic
    @Column(name = "floorval_Pst_U1", nullable = true, precision = 2)
    public Double getFloorvalPstU1() {
        return floorvalPstU1;
    }

    public void setFloorvalPstU1(Double floorvalPstU1) {
        this.floorvalPstU1 = floorvalPstU1;
    }

    @Basic
    @Column(name = "isMark_Pst_U1", nullable = true)
    public Integer getIsMarkPstU1() {
        return isMarkPstU1;
    }

    public void setIsMarkPstU1(Integer isMarkPstU1) {
        this.isMarkPstU1 = isMarkPstU1;
    }

    @Basic
    @Column(name = "alarmcontent_Pst_U1", nullable = true, length = 255)
    public String getAlarmcontentPstU1() {
        return alarmcontentPstU1;
    }

    public void setAlarmcontentPstU1(String alarmcontentPstU1) {
        this.alarmcontentPstU1 = alarmcontentPstU1;
    }

    @Basic
    @Column(name = "name_Pst_U2", nullable = true, length = 255)
    public String getNamePstU2() {
        return namePstU2;
    }

    public void setNamePstU2(String namePstU2) {
        this.namePstU2 = namePstU2;
    }

    @Basic
    @Column(name = "unit_Pst_U2", nullable = true, length = 255)
    public String getUnitPstU2() {
        return unitPstU2;
    }

    public void setUnitPstU2(String unitPstU2) {
        this.unitPstU2 = unitPstU2;
    }

    @Basic
    @Column(name = "standardval_Pst_U2", nullable = true, precision = 2)
    public Double getStandardvalPstU2() {
        return standardvalPstU2;
    }

    public void setStandardvalPstU2(Double standardvalPstU2) {
        this.standardvalPstU2 = standardvalPstU2;
    }

    @Basic
    @Column(name = "cellval_Pst_U2", nullable = true, precision = 2)
    public Double getCellvalPstU2() {
        return cellvalPstU2;
    }

    public void setCellvalPstU2(Double cellvalPstU2) {
        this.cellvalPstU2 = cellvalPstU2;
    }

    @Basic
    @Column(name = "floorval_Pst_U2", nullable = true, precision = 2)
    public Double getFloorvalPstU2() {
        return floorvalPstU2;
    }

    public void setFloorvalPstU2(Double floorvalPstU2) {
        this.floorvalPstU2 = floorvalPstU2;
    }

    @Basic
    @Column(name = "isMark_Pst_U2", nullable = true)
    public Integer getIsMarkPstU2() {
        return isMarkPstU2;
    }

    public void setIsMarkPstU2(Integer isMarkPstU2) {
        this.isMarkPstU2 = isMarkPstU2;
    }

    @Basic
    @Column(name = "alarmcontent_Pst_U2", nullable = true, length = 255)
    public String getAlarmcontentPstU2() {
        return alarmcontentPstU2;
    }

    public void setAlarmcontentPstU2(String alarmcontentPstU2) {
        this.alarmcontentPstU2 = alarmcontentPstU2;
    }

    @Basic
    @Column(name = "name_Pst_U3", nullable = true, length = 255)
    public String getNamePstU3() {
        return namePstU3;
    }

    public void setNamePstU3(String namePstU3) {
        this.namePstU3 = namePstU3;
    }

    @Basic
    @Column(name = "unit_Pst_U3", nullable = true, length = 255)
    public String getUnitPstU3() {
        return unitPstU3;
    }

    public void setUnitPstU3(String unitPstU3) {
        this.unitPstU3 = unitPstU3;
    }

    @Basic
    @Column(name = "standardval_Pst_U3", nullable = true, precision = 2)
    public Double getStandardvalPstU3() {
        return standardvalPstU3;
    }

    public void setStandardvalPstU3(Double standardvalPstU3) {
        this.standardvalPstU3 = standardvalPstU3;
    }

    @Basic
    @Column(name = "cellval_Pst_U3", nullable = true, precision = 2)
    public Double getCellvalPstU3() {
        return cellvalPstU3;
    }

    public void setCellvalPstU3(Double cellvalPstU3) {
        this.cellvalPstU3 = cellvalPstU3;
    }

    @Basic
    @Column(name = "floorval_Pst_U3", nullable = true, precision = 2)
    public Double getFloorvalPstU3() {
        return floorvalPstU3;
    }

    public void setFloorvalPstU3(Double floorvalPstU3) {
        this.floorvalPstU3 = floorvalPstU3;
    }

    @Basic
    @Column(name = "isMark_Pst_U3", nullable = true)
    public Integer getIsMarkPstU3() {
        return isMarkPstU3;
    }

    public void setIsMarkPstU3(Integer isMarkPstU3) {
        this.isMarkPstU3 = isMarkPstU3;
    }

    @Basic
    @Column(name = "alarmcontent_Pst_U3", nullable = true, length = 255)
    public String getAlarmcontentPstU3() {
        return alarmcontentPstU3;
    }

    public void setAlarmcontentPstU3(String alarmcontentPstU3) {
        this.alarmcontentPstU3 = alarmcontentPstU3;
    }

    @Basic
    @Column(name = "name_Plt_U1", nullable = true, length = 255)
    public String getNamePltU1() {
        return namePltU1;
    }

    public void setNamePltU1(String namePltU1) {
        this.namePltU1 = namePltU1;
    }

    @Basic
    @Column(name = "unit_Plt_U1", nullable = true, length = 255)
    public String getUnitPltU1() {
        return unitPltU1;
    }

    public void setUnitPltU1(String unitPltU1) {
        this.unitPltU1 = unitPltU1;
    }

    @Basic
    @Column(name = "standardval_Plt_U1", nullable = true, precision = 2)
    public Double getStandardvalPltU1() {
        return standardvalPltU1;
    }

    public void setStandardvalPltU1(Double standardvalPltU1) {
        this.standardvalPltU1 = standardvalPltU1;
    }

    @Basic
    @Column(name = "cellval_Plt_U1", nullable = true, precision = 2)
    public Double getCellvalPltU1() {
        return cellvalPltU1;
    }

    public void setCellvalPltU1(Double cellvalPltU1) {
        this.cellvalPltU1 = cellvalPltU1;
    }

    @Basic
    @Column(name = "floorval_Plt_U1", nullable = true, precision = 2)
    public Double getFloorvalPltU1() {
        return floorvalPltU1;
    }

    public void setFloorvalPltU1(Double floorvalPltU1) {
        this.floorvalPltU1 = floorvalPltU1;
    }

    @Basic
    @Column(name = "isMark_Plt_U1", nullable = true)
    public Integer getIsMarkPltU1() {
        return isMarkPltU1;
    }

    public void setIsMarkPltU1(Integer isMarkPltU1) {
        this.isMarkPltU1 = isMarkPltU1;
    }

    @Basic
    @Column(name = "alarmcontent_Plt_U1", nullable = true, length = 255)
    public String getAlarmcontentPltU1() {
        return alarmcontentPltU1;
    }

    public void setAlarmcontentPltU1(String alarmcontentPltU1) {
        this.alarmcontentPltU1 = alarmcontentPltU1;
    }

    @Basic
    @Column(name = "name_Plt_U2", nullable = true, length = 255)
    public String getNamePltU2() {
        return namePltU2;
    }

    public void setNamePltU2(String namePltU2) {
        this.namePltU2 = namePltU2;
    }

    @Basic
    @Column(name = "unit_Plt_U2", nullable = true, length = 255)
    public String getUnitPltU2() {
        return unitPltU2;
    }

    public void setUnitPltU2(String unitPltU2) {
        this.unitPltU2 = unitPltU2;
    }

    @Basic
    @Column(name = "standardval_Plt_U2", nullable = true, precision = 2)
    public Double getStandardvalPltU2() {
        return standardvalPltU2;
    }

    public void setStandardvalPltU2(Double standardvalPltU2) {
        this.standardvalPltU2 = standardvalPltU2;
    }

    @Basic
    @Column(name = "cellval_Plt_U2", nullable = true, precision = 2)
    public Double getCellvalPltU2() {
        return cellvalPltU2;
    }

    public void setCellvalPltU2(Double cellvalPltU2) {
        this.cellvalPltU2 = cellvalPltU2;
    }

    @Basic
    @Column(name = "floorval_Plt_U2", nullable = true, precision = 2)
    public Double getFloorvalPltU2() {
        return floorvalPltU2;
    }

    public void setFloorvalPltU2(Double floorvalPltU2) {
        this.floorvalPltU2 = floorvalPltU2;
    }

    @Basic
    @Column(name = "isMark_Plt_U2", nullable = true)
    public Integer getIsMarkPltU2() {
        return isMarkPltU2;
    }

    public void setIsMarkPltU2(Integer isMarkPltU2) {
        this.isMarkPltU2 = isMarkPltU2;
    }

    @Basic
    @Column(name = "alarmcontent_Plt_U2", nullable = true, length = 255)
    public String getAlarmcontentPltU2() {
        return alarmcontentPltU2;
    }

    public void setAlarmcontentPltU2(String alarmcontentPltU2) {
        this.alarmcontentPltU2 = alarmcontentPltU2;
    }

    @Basic
    @Column(name = "name_Plt_U3", nullable = true, length = 255)
    public String getNamePltU3() {
        return namePltU3;
    }

    public void setNamePltU3(String namePltU3) {
        this.namePltU3 = namePltU3;
    }

    @Basic
    @Column(name = "unit_Plt_U3", nullable = true, length = 255)
    public String getUnitPltU3() {
        return unitPltU3;
    }

    public void setUnitPltU3(String unitPltU3) {
        this.unitPltU3 = unitPltU3;
    }

    @Basic
    @Column(name = "standardval_Plt_U3", nullable = true, precision = 2)
    public Double getStandardvalPltU3() {
        return standardvalPltU3;
    }

    public void setStandardvalPltU3(Double standardvalPltU3) {
        this.standardvalPltU3 = standardvalPltU3;
    }

    @Basic
    @Column(name = "cellval_Plt_U3", nullable = true, precision = 2)
    public Double getCellvalPltU3() {
        return cellvalPltU3;
    }

    public void setCellvalPltU3(Double cellvalPltU3) {
        this.cellvalPltU3 = cellvalPltU3;
    }

    @Basic
    @Column(name = "floorval_Plt_U3", nullable = true, precision = 2)
    public Double getFloorvalPltU3() {
        return floorvalPltU3;
    }

    public void setFloorvalPltU3(Double floorvalPltU3) {
        this.floorvalPltU3 = floorvalPltU3;
    }

    @Basic
    @Column(name = "isMark_Plt_U3", nullable = true)
    public Integer getIsMarkPltU3() {
        return isMarkPltU3;
    }

    public void setIsMarkPltU3(Integer isMarkPltU3) {
        this.isMarkPltU3 = isMarkPltU3;
    }

    @Basic
    @Column(name = "alarmcontent_Plt_U3", nullable = true, length = 255)
    public String getAlarmcontentPltU3() {
        return alarmcontentPltU3;
    }

    public void setAlarmcontentPltU3(String alarmcontentPltU3) {
        this.alarmcontentPltU3 = alarmcontentPltU3;
    }

    @Basic
    @Column(name = "name_Hz", nullable = true, length = 255)
    public String getNameHz() {
        return nameHz;
    }

    public void setNameHz(String nameHz) {
        this.nameHz = nameHz;
    }

    @Basic
    @Column(name = "unit_Hz", nullable = true, length = 255)
    public String getUnitHz() {
        return unitHz;
    }

    public void setUnitHz(String unitHz) {
        this.unitHz = unitHz;
    }

    @Basic
    @Column(name = "standardval_Hz", nullable = true, precision = 2)
    public Double getStandardvalHz() {
        return standardvalHz;
    }

    public void setStandardvalHz(Double standardvalHz) {
        this.standardvalHz = standardvalHz;
    }

    @Basic
    @Column(name = "cellval_Hz", nullable = true, precision = 2)
    public Double getCellvalHz() {
        return cellvalHz;
    }

    public void setCellvalHz(Double cellvalHz) {
        this.cellvalHz = cellvalHz;
    }

    @Basic
    @Column(name = "floorval_Hz", nullable = true, precision = 2)
    public Double getFloorvalHz() {
        return floorvalHz;
    }

    public void setFloorvalHz(Double floorvalHz) {
        this.floorvalHz = floorvalHz;
    }

    @Basic
    @Column(name = "isMark_Hz", nullable = true)
    public Integer getIsMarkHz() {
        return isMarkHz;
    }

    public void setIsMarkHz(Integer isMarkHz) {
        this.isMarkHz = isMarkHz;
    }

    @Basic
    @Column(name = "alarmcontent_Hz", nullable = true, length = 255)
    public String getAlarmcontentHz() {
        return alarmcontentHz;
    }

    public void setAlarmcontentHz(String alarmcontentHz) {
        this.alarmcontentHz = alarmcontentHz;
    }

    @Basic
    @Column(name = "name_angleU1", nullable = true, length = 255)
    public String getNameAngleU1() {
        return nameAngleU1;
    }

    public void setNameAngleU1(String nameAngleU1) {
        this.nameAngleU1 = nameAngleU1;
    }

    @Basic
    @Column(name = "unit_angleU1", nullable = true, length = 255)
    public String getUnitAngleU1() {
        return unitAngleU1;
    }

    public void setUnitAngleU1(String unitAngleU1) {
        this.unitAngleU1 = unitAngleU1;
    }

    @Basic
    @Column(name = "standardval_angleU1", nullable = true, precision = 2)
    public Double getStandardvalAngleU1() {
        return standardvalAngleU1;
    }

    public void setStandardvalAngleU1(Double standardvalAngleU1) {
        this.standardvalAngleU1 = standardvalAngleU1;
    }

    @Basic
    @Column(name = "cellval_angleU1", nullable = true, precision = 2)
    public Double getCellvalAngleU1() {
        return cellvalAngleU1;
    }

    public void setCellvalAngleU1(Double cellvalAngleU1) {
        this.cellvalAngleU1 = cellvalAngleU1;
    }

    @Basic
    @Column(name = "floorval_angleU1", nullable = true, precision = 2)
    public Double getFloorvalAngleU1() {
        return floorvalAngleU1;
    }

    public void setFloorvalAngleU1(Double floorvalAngleU1) {
        this.floorvalAngleU1 = floorvalAngleU1;
    }

    @Basic
    @Column(name = "isMark_angleU1", nullable = true)
    public Integer getIsMarkAngleU1() {
        return isMarkAngleU1;
    }

    public void setIsMarkAngleU1(Integer isMarkAngleU1) {
        this.isMarkAngleU1 = isMarkAngleU1;
    }

    @Basic
    @Column(name = "alarmcontent_angleU1", nullable = true, length = 255)
    public String getAlarmcontentAngleU1() {
        return alarmcontentAngleU1;
    }

    public void setAlarmcontentAngleU1(String alarmcontentAngleU1) {
        this.alarmcontentAngleU1 = alarmcontentAngleU1;
    }

    @Basic
    @Column(name = "name_angleU2", nullable = true, length = 255)
    public String getNameAngleU2() {
        return nameAngleU2;
    }

    public void setNameAngleU2(String nameAngleU2) {
        this.nameAngleU2 = nameAngleU2;
    }

    @Basic
    @Column(name = "unit_angleU2", nullable = true, length = 255)
    public String getUnitAngleU2() {
        return unitAngleU2;
    }

    public void setUnitAngleU2(String unitAngleU2) {
        this.unitAngleU2 = unitAngleU2;
    }

    @Basic
    @Column(name = "standardval_angleU2", nullable = true, precision = 2)
    public Double getStandardvalAngleU2() {
        return standardvalAngleU2;
    }

    public void setStandardvalAngleU2(Double standardvalAngleU2) {
        this.standardvalAngleU2 = standardvalAngleU2;
    }

    @Basic
    @Column(name = "cellval_angleU2", nullable = true, precision = 2)
    public Double getCellvalAngleU2() {
        return cellvalAngleU2;
    }

    public void setCellvalAngleU2(Double cellvalAngleU2) {
        this.cellvalAngleU2 = cellvalAngleU2;
    }

    @Basic
    @Column(name = "floorval_angleU2", nullable = true, precision = 2)
    public Double getFloorvalAngleU2() {
        return floorvalAngleU2;
    }

    public void setFloorvalAngleU2(Double floorvalAngleU2) {
        this.floorvalAngleU2 = floorvalAngleU2;
    }

    @Basic
    @Column(name = "isMark_angleU2", nullable = true)
    public Integer getIsMarkAngleU2() {
        return isMarkAngleU2;
    }

    public void setIsMarkAngleU2(Integer isMarkAngleU2) {
        this.isMarkAngleU2 = isMarkAngleU2;
    }

    @Basic
    @Column(name = "alarmcontent_angleU2", nullable = true, length = 255)
    public String getAlarmcontentAngleU2() {
        return alarmcontentAngleU2;
    }

    public void setAlarmcontentAngleU2(String alarmcontentAngleU2) {
        this.alarmcontentAngleU2 = alarmcontentAngleU2;
    }

    @Basic
    @Column(name = "name_angleU3", nullable = true, length = 255)
    public String getNameAngleU3() {
        return nameAngleU3;
    }

    public void setNameAngleU3(String nameAngleU3) {
        this.nameAngleU3 = nameAngleU3;
    }

    @Basic
    @Column(name = "unit_angleU3", nullable = true, length = 255)
    public String getUnitAngleU3() {
        return unitAngleU3;
    }

    public void setUnitAngleU3(String unitAngleU3) {
        this.unitAngleU3 = unitAngleU3;
    }

    @Basic
    @Column(name = "standardval_angleU3", nullable = true, precision = 2)
    public Double getStandardvalAngleU3() {
        return standardvalAngleU3;
    }

    public void setStandardvalAngleU3(Double standardvalAngleU3) {
        this.standardvalAngleU3 = standardvalAngleU3;
    }

    @Basic
    @Column(name = "cellval_angleU3", nullable = true, precision = 2)
    public Double getCellvalAngleU3() {
        return cellvalAngleU3;
    }

    public void setCellvalAngleU3(Double cellvalAngleU3) {
        this.cellvalAngleU3 = cellvalAngleU3;
    }

    @Basic
    @Column(name = "floorval_angleU3", nullable = true, precision = 2)
    public Double getFloorvalAngleU3() {
        return floorvalAngleU3;
    }

    public void setFloorvalAngleU3(Double floorvalAngleU3) {
        this.floorvalAngleU3 = floorvalAngleU3;
    }

    @Basic
    @Column(name = "isMark_angleU3", nullable = true)
    public Integer getIsMarkAngleU3() {
        return isMarkAngleU3;
    }

    public void setIsMarkAngleU3(Integer isMarkAngleU3) {
        this.isMarkAngleU3 = isMarkAngleU3;
    }

    @Basic
    @Column(name = "alarmcontent_angleU3", nullable = true, length = 255)
    public String getAlarmcontentAngleU3() {
        return alarmcontentAngleU3;
    }

    public void setAlarmcontentAngleU3(String alarmcontentAngleU3) {
        this.alarmcontentAngleU3 = alarmcontentAngleU3;
    }

    @Basic
    @Column(name = "name_angleV1", nullable = true, length = 255)
    public String getNameAngleV1() {
        return nameAngleV1;
    }

    public void setNameAngleV1(String nameAngleV1) {
        this.nameAngleV1 = nameAngleV1;
    }

    @Basic
    @Column(name = "unit_angleV1", nullable = true, length = 255)
    public String getUnitAngleV1() {
        return unitAngleV1;
    }

    public void setUnitAngleV1(String unitAngleV1) {
        this.unitAngleV1 = unitAngleV1;
    }

    @Basic
    @Column(name = "standardval_angleV1", nullable = true, precision = 2)
    public Double getStandardvalAngleV1() {
        return standardvalAngleV1;
    }

    public void setStandardvalAngleV1(Double standardvalAngleV1) {
        this.standardvalAngleV1 = standardvalAngleV1;
    }

    @Basic
    @Column(name = "cellval_angleV1", nullable = true, precision = 2)
    public Double getCellvalAngleV1() {
        return cellvalAngleV1;
    }

    public void setCellvalAngleV1(Double cellvalAngleV1) {
        this.cellvalAngleV1 = cellvalAngleV1;
    }

    @Basic
    @Column(name = "floorval_angleV1", nullable = true, precision = 2)
    public Double getFloorvalAngleV1() {
        return floorvalAngleV1;
    }

    public void setFloorvalAngleV1(Double floorvalAngleV1) {
        this.floorvalAngleV1 = floorvalAngleV1;
    }

    @Basic
    @Column(name = "isMark_angleV1", nullable = true)
    public Integer getIsMarkAngleV1() {
        return isMarkAngleV1;
    }

    public void setIsMarkAngleV1(Integer isMarkAngleV1) {
        this.isMarkAngleV1 = isMarkAngleV1;
    }

    @Basic
    @Column(name = "alarmcontent_angleV1", nullable = true, length = 255)
    public String getAlarmcontentAngleV1() {
        return alarmcontentAngleV1;
    }

    public void setAlarmcontentAngleV1(String alarmcontentAngleV1) {
        this.alarmcontentAngleV1 = alarmcontentAngleV1;
    }

    @Basic
    @Column(name = "name_angleV2", nullable = true, length = 255)
    public String getNameAngleV2() {
        return nameAngleV2;
    }

    public void setNameAngleV2(String nameAngleV2) {
        this.nameAngleV2 = nameAngleV2;
    }

    @Basic
    @Column(name = "unit_angleV2", nullable = true, length = 255)
    public String getUnitAngleV2() {
        return unitAngleV2;
    }

    public void setUnitAngleV2(String unitAngleV2) {
        this.unitAngleV2 = unitAngleV2;
    }

    @Basic
    @Column(name = "standardval_angleV2", nullable = true, precision = 2)
    public Double getStandardvalAngleV2() {
        return standardvalAngleV2;
    }

    public void setStandardvalAngleV2(Double standardvalAngleV2) {
        this.standardvalAngleV2 = standardvalAngleV2;
    }

    @Basic
    @Column(name = "cellval_angleV2", nullable = true, precision = 2)
    public Double getCellvalAngleV2() {
        return cellvalAngleV2;
    }

    public void setCellvalAngleV2(Double cellvalAngleV2) {
        this.cellvalAngleV2 = cellvalAngleV2;
    }

    @Basic
    @Column(name = "floorval_angleV2", nullable = true, precision = 2)
    public Double getFloorvalAngleV2() {
        return floorvalAngleV2;
    }

    public void setFloorvalAngleV2(Double floorvalAngleV2) {
        this.floorvalAngleV2 = floorvalAngleV2;
    }

    @Basic
    @Column(name = "isMark_angleV2", nullable = true)
    public Integer getIsMarkAngleV2() {
        return isMarkAngleV2;
    }

    public void setIsMarkAngleV2(Integer isMarkAngleV2) {
        this.isMarkAngleV2 = isMarkAngleV2;
    }

    @Basic
    @Column(name = "alarmcontent_angleV2", nullable = true, length = 255)
    public String getAlarmcontentAngleV2() {
        return alarmcontentAngleV2;
    }

    public void setAlarmcontentAngleV2(String alarmcontentAngleV2) {
        this.alarmcontentAngleV2 = alarmcontentAngleV2;
    }

    @Basic
    @Column(name = "name_angleV3", nullable = true, length = 255)
    public String getNameAngleV3() {
        return nameAngleV3;
    }

    public void setNameAngleV3(String nameAngleV3) {
        this.nameAngleV3 = nameAngleV3;
    }

    @Basic
    @Column(name = "unit_angleV3", nullable = true, length = 255)
    public String getUnitAngleV3() {
        return unitAngleV3;
    }

    public void setUnitAngleV3(String unitAngleV3) {
        this.unitAngleV3 = unitAngleV3;
    }

    @Basic
    @Column(name = "standardval_angleV3", nullable = true, precision = 2)
    public Double getStandardvalAngleV3() {
        return standardvalAngleV3;
    }

    public void setStandardvalAngleV3(Double standardvalAngleV3) {
        this.standardvalAngleV3 = standardvalAngleV3;
    }

    @Basic
    @Column(name = "cellval_angleV3", nullable = true, precision = 2)
    public Double getCellvalAngleV3() {
        return cellvalAngleV3;
    }

    public void setCellvalAngleV3(Double cellvalAngleV3) {
        this.cellvalAngleV3 = cellvalAngleV3;
    }

    @Basic
    @Column(name = "floorval_angleV3", nullable = true, precision = 2)
    public Double getFloorvalAngleV3() {
        return floorvalAngleV3;
    }

    public void setFloorvalAngleV3(Double floorvalAngleV3) {
        this.floorvalAngleV3 = floorvalAngleV3;
    }

    @Basic
    @Column(name = "isMark_angleV3", nullable = true)
    public Integer getIsMarkAngleV3() {
        return isMarkAngleV3;
    }

    public void setIsMarkAngleV3(Integer isMarkAngleV3) {
        this.isMarkAngleV3 = isMarkAngleV3;
    }

    @Basic
    @Column(name = "alarmcontent_angleV3", nullable = true, length = 255)
    public String getAlarmcontentAngleV3() {
        return alarmcontentAngleV3;
    }

    public void setAlarmcontentAngleV3(String alarmcontentAngleV3) {
        this.alarmcontentAngleV3 = alarmcontentAngleV3;
    }

    @Basic
    @Column(name = "name_angleI1", nullable = true, length = 255)
    public String getNameAngleI1() {
        return nameAngleI1;
    }

    public void setNameAngleI1(String nameAngleI1) {
        this.nameAngleI1 = nameAngleI1;
    }

    @Basic
    @Column(name = "unit_angleI1", nullable = true, length = 255)
    public String getUnitAngleI1() {
        return unitAngleI1;
    }

    public void setUnitAngleI1(String unitAngleI1) {
        this.unitAngleI1 = unitAngleI1;
    }

    @Basic
    @Column(name = "standardval_angleI1", nullable = true, precision = 2)
    public Double getStandardvalAngleI1() {
        return standardvalAngleI1;
    }

    public void setStandardvalAngleI1(Double standardvalAngleI1) {
        this.standardvalAngleI1 = standardvalAngleI1;
    }

    @Basic
    @Column(name = "cellval_angleI1", nullable = true, precision = 2)
    public Double getCellvalAngleI1() {
        return cellvalAngleI1;
    }

    public void setCellvalAngleI1(Double cellvalAngleI1) {
        this.cellvalAngleI1 = cellvalAngleI1;
    }

    @Basic
    @Column(name = "floorval_angleI1", nullable = true, precision = 2)
    public Double getFloorvalAngleI1() {
        return floorvalAngleI1;
    }

    public void setFloorvalAngleI1(Double floorvalAngleI1) {
        this.floorvalAngleI1 = floorvalAngleI1;
    }

    @Basic
    @Column(name = "isMark_angleI1", nullable = true)
    public Integer getIsMarkAngleI1() {
        return isMarkAngleI1;
    }

    public void setIsMarkAngleI1(Integer isMarkAngleI1) {
        this.isMarkAngleI1 = isMarkAngleI1;
    }

    @Basic
    @Column(name = "alarmcontent_angleI1", nullable = true, length = 255)
    public String getAlarmcontentAngleI1() {
        return alarmcontentAngleI1;
    }

    public void setAlarmcontentAngleI1(String alarmcontentAngleI1) {
        this.alarmcontentAngleI1 = alarmcontentAngleI1;
    }

    @Basic
    @Column(name = "name_angleI2", nullable = true, length = 255)
    public String getNameAngleI2() {
        return nameAngleI2;
    }

    public void setNameAngleI2(String nameAngleI2) {
        this.nameAngleI2 = nameAngleI2;
    }

    @Basic
    @Column(name = "unit_angleI2", nullable = true, length = 255)
    public String getUnitAngleI2() {
        return unitAngleI2;
    }

    public void setUnitAngleI2(String unitAngleI2) {
        this.unitAngleI2 = unitAngleI2;
    }

    @Basic
    @Column(name = "standardval_angleI2", nullable = true, precision = 2)
    public Double getStandardvalAngleI2() {
        return standardvalAngleI2;
    }

    public void setStandardvalAngleI2(Double standardvalAngleI2) {
        this.standardvalAngleI2 = standardvalAngleI2;
    }

    @Basic
    @Column(name = "cellval_angleI2", nullable = true, precision = 2)
    public Double getCellvalAngleI2() {
        return cellvalAngleI2;
    }

    public void setCellvalAngleI2(Double cellvalAngleI2) {
        this.cellvalAngleI2 = cellvalAngleI2;
    }

    @Basic
    @Column(name = "floorval_angleI2", nullable = true, precision = 2)
    public Double getFloorvalAngleI2() {
        return floorvalAngleI2;
    }

    public void setFloorvalAngleI2(Double floorvalAngleI2) {
        this.floorvalAngleI2 = floorvalAngleI2;
    }

    @Basic
    @Column(name = "isMark_angleI2", nullable = true)
    public Integer getIsMarkAngleI2() {
        return isMarkAngleI2;
    }

    public void setIsMarkAngleI2(Integer isMarkAngleI2) {
        this.isMarkAngleI2 = isMarkAngleI2;
    }

    @Basic
    @Column(name = "alarmcontent_angleI2", nullable = true, length = 255)
    public String getAlarmcontentAngleI2() {
        return alarmcontentAngleI2;
    }

    public void setAlarmcontentAngleI2(String alarmcontentAngleI2) {
        this.alarmcontentAngleI2 = alarmcontentAngleI2;
    }

    @Basic
    @Column(name = "name_angleI3", nullable = true, length = 255)
    public String getNameAngleI3() {
        return nameAngleI3;
    }

    public void setNameAngleI3(String nameAngleI3) {
        this.nameAngleI3 = nameAngleI3;
    }

    @Basic
    @Column(name = "unit_angleI3", nullable = true, length = 255)
    public String getUnitAngleI3() {
        return unitAngleI3;
    }

    public void setUnitAngleI3(String unitAngleI3) {
        this.unitAngleI3 = unitAngleI3;
    }

    @Basic
    @Column(name = "standardval_angleI3", nullable = true, precision = 2)
    public Double getStandardvalAngleI3() {
        return standardvalAngleI3;
    }

    public void setStandardvalAngleI3(Double standardvalAngleI3) {
        this.standardvalAngleI3 = standardvalAngleI3;
    }

    @Basic
    @Column(name = "cellval_angleI3", nullable = true, precision = 2)
    public Double getCellvalAngleI3() {
        return cellvalAngleI3;
    }

    public void setCellvalAngleI3(Double cellvalAngleI3) {
        this.cellvalAngleI3 = cellvalAngleI3;
    }

    @Basic
    @Column(name = "floorval_angleI3", nullable = true, precision = 2)
    public Double getFloorvalAngleI3() {
        return floorvalAngleI3;
    }

    public void setFloorvalAngleI3(Double floorvalAngleI3) {
        this.floorvalAngleI3 = floorvalAngleI3;
    }

    @Basic
    @Column(name = "isMark_angleI3", nullable = true)
    public Integer getIsMarkAngleI3() {
        return isMarkAngleI3;
    }

    public void setIsMarkAngleI3(Integer isMarkAngleI3) {
        this.isMarkAngleI3 = isMarkAngleI3;
    }

    @Basic
    @Column(name = "alarmcontent_angleI3", nullable = true, length = 255)
    public String getAlarmcontentAngleI3() {
        return alarmcontentAngleI3;
    }

    public void setAlarmcontentAngleI3(String alarmcontentAngleI3) {
        this.alarmcontentAngleI3 = alarmcontentAngleI3;
    }

    @Basic
    @Column(name = "name_Aunb", nullable = true, length = 255)
    public String getNameAunb() {
        return nameAunb;
    }

    public void setNameAunb(String nameAunb) {
        this.nameAunb = nameAunb;
    }

    @Basic
    @Column(name = "unit_Aunb", nullable = true, length = 255)
    public String getUnitAunb() {
        return unitAunb;
    }

    public void setUnitAunb(String unitAunb) {
        this.unitAunb = unitAunb;
    }

    @Basic
    @Column(name = "standardval_Aunb", nullable = true, precision = 2)
    public Double getStandardvalAunb() {
        return standardvalAunb;
    }

    public void setStandardvalAunb(Double standardvalAunb) {
        this.standardvalAunb = standardvalAunb;
    }

    @Basic
    @Column(name = "cellval_Aunb", nullable = true, precision = 2)
    public Double getCellvalAunb() {
        return cellvalAunb;
    }

    public void setCellvalAunb(Double cellvalAunb) {
        this.cellvalAunb = cellvalAunb;
    }

    @Basic
    @Column(name = "floorval_Aunb", nullable = true, precision = 2)
    public Double getFloorvalAunb() {
        return floorvalAunb;
    }

    public void setFloorvalAunb(Double floorvalAunb) {
        this.floorvalAunb = floorvalAunb;
    }

    @Basic
    @Column(name = "isMark_Aunb", nullable = true)
    public Integer getIsMarkAunb() {
        return isMarkAunb;
    }

    public void setIsMarkAunb(Integer isMarkAunb) {
        this.isMarkAunb = isMarkAunb;
    }

    @Basic
    @Column(name = "alarmcontent_Aunb", nullable = true, length = 255)
    public String getAlarmcontentAunb() {
        return alarmcontentAunb;
    }

    public void setAlarmcontentAunb(String alarmcontentAunb) {
        this.alarmcontentAunb = alarmcontentAunb;
    }

    @Basic
    @Column(name = "name_Uunb", nullable = true, length = 255)
    public String getNameUunb() {
        return nameUunb;
    }

    public void setNameUunb(String nameUunb) {
        this.nameUunb = nameUunb;
    }

    @Basic
    @Column(name = "unit_Uunb", nullable = true, length = 255)
    public String getUnitUunb() {
        return unitUunb;
    }

    public void setUnitUunb(String unitUunb) {
        this.unitUunb = unitUunb;
    }

    @Basic
    @Column(name = "standardval_Uunb", nullable = true, precision = 2)
    public Double getStandardvalUunb() {
        return standardvalUunb;
    }

    public void setStandardvalUunb(Double standardvalUunb) {
        this.standardvalUunb = standardvalUunb;
    }

    @Basic
    @Column(name = "cellval_Uunb", nullable = true, precision = 2)
    public Double getCellvalUunb() {
        return cellvalUunb;
    }

    public void setCellvalUunb(Double cellvalUunb) {
        this.cellvalUunb = cellvalUunb;
    }

    @Basic
    @Column(name = "floorval_Uunb", nullable = true, precision = 2)
    public Double getFloorvalUunb() {
        return floorvalUunb;
    }

    public void setFloorvalUunb(Double floorvalUunb) {
        this.floorvalUunb = floorvalUunb;
    }

    @Basic
    @Column(name = "isMark_Uunb", nullable = true)
    public Integer getIsMarkUunb() {
        return isMarkUunb;
    }

    public void setIsMarkUunb(Integer isMarkUunb) {
        this.isMarkUunb = isMarkUunb;
    }

    @Basic
    @Column(name = "alarmcontent_Uunb", nullable = true, length = 255)
    public String getAlarmcontentUunb() {
        return alarmcontentUunb;
    }

    public void setAlarmcontentUunb(String alarmcontentUunb) {
        this.alarmcontentUunb = alarmcontentUunb;
    }

    @Basic
    @Column(name = "name_Vunb", nullable = true, length = 255)
    public String getNameVunb() {
        return nameVunb;
    }

    public void setNameVunb(String nameVunb) {
        this.nameVunb = nameVunb;
    }

    @Basic
    @Column(name = "unit_Vunb", nullable = true, length = 255)
    public String getUnitVunb() {
        return unitVunb;
    }

    public void setUnitVunb(String unitVunb) {
        this.unitVunb = unitVunb;
    }

    @Basic
    @Column(name = "standardval_Vunb", nullable = true, precision = 2)
    public Double getStandardvalVunb() {
        return standardvalVunb;
    }

    public void setStandardvalVunb(Double standardvalVunb) {
        this.standardvalVunb = standardvalVunb;
    }

    @Basic
    @Column(name = "cellval_Vunb", nullable = true, precision = 2)
    public Double getCellvalVunb() {
        return cellvalVunb;
    }

    public void setCellvalVunb(Double cellvalVunb) {
        this.cellvalVunb = cellvalVunb;
    }

    @Basic
    @Column(name = "floorval_Vunb", nullable = true, precision = 2)
    public Double getFloorvalVunb() {
        return floorvalVunb;
    }

    public void setFloorvalVunb(Double floorvalVunb) {
        this.floorvalVunb = floorvalVunb;
    }

    @Basic
    @Column(name = "isMark_Vunb", nullable = true)
    public Integer getIsMarkVunb() {
        return isMarkVunb;
    }

    public void setIsMarkVunb(Integer isMarkVunb) {
        this.isMarkVunb = isMarkVunb;
    }

    @Basic
    @Column(name = "alarmcontent_Vunb", nullable = true, length = 255)
    public String getAlarmcontentVunb() {
        return alarmcontentVunb;
    }

    public void setAlarmcontentVunb(String alarmcontentVunb) {
        this.alarmcontentVunb = alarmcontentVunb;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DevicesThreshold2 that = (DevicesThreshold2) o;
        return dtid == that.dtid &&
                Objects.equals(did, that.did) &&
                Objects.equals(type, that.type) &&
                Objects.equals(nameFU1, that.nameFU1) &&
                Objects.equals(unitFU1, that.unitFU1) &&
                Objects.equals(standardvalFU1, that.standardvalFU1) &&
                Objects.equals(cellvalFU1, that.cellvalFU1) &&
                Objects.equals(floorvalFU1, that.floorvalFU1) &&
                Objects.equals(isMarkFU1, that.isMarkFU1) &&
                Objects.equals(alarmcontentFU1, that.alarmcontentFU1) &&
                Objects.equals(nameFU2, that.nameFU2) &&
                Objects.equals(unitFU2, that.unitFU2) &&
                Objects.equals(standardvalFU2, that.standardvalFU2) &&
                Objects.equals(cellvalFU2, that.cellvalFU2) &&
                Objects.equals(floorvalFU2, that.floorvalFU2) &&
                Objects.equals(isMarkFU2, that.isMarkFU2) &&
                Objects.equals(alarmcontentFU2, that.alarmcontentFU2) &&
                Objects.equals(nameFU3, that.nameFU3) &&
                Objects.equals(unitFU3, that.unitFU3) &&
                Objects.equals(standardvalFU3, that.standardvalFU3) &&
                Objects.equals(cellvalFU3, that.cellvalFU3) &&
                Objects.equals(floorvalFU3, that.floorvalFU3) &&
                Objects.equals(isMarkFU3, that.isMarkFU3) &&
                Objects.equals(alarmcontentFU3, that.alarmcontentFU3) &&
                Objects.equals(namePstU1, that.namePstU1) &&
                Objects.equals(unitPstU1, that.unitPstU1) &&
                Objects.equals(standardvalPstU1, that.standardvalPstU1) &&
                Objects.equals(cellvalPstU1, that.cellvalPstU1) &&
                Objects.equals(floorvalPstU1, that.floorvalPstU1) &&
                Objects.equals(isMarkPstU1, that.isMarkPstU1) &&
                Objects.equals(alarmcontentPstU1, that.alarmcontentPstU1) &&
                Objects.equals(namePstU2, that.namePstU2) &&
                Objects.equals(unitPstU2, that.unitPstU2) &&
                Objects.equals(standardvalPstU2, that.standardvalPstU2) &&
                Objects.equals(cellvalPstU2, that.cellvalPstU2) &&
                Objects.equals(floorvalPstU2, that.floorvalPstU2) &&
                Objects.equals(isMarkPstU2, that.isMarkPstU2) &&
                Objects.equals(alarmcontentPstU2, that.alarmcontentPstU2) &&
                Objects.equals(namePstU3, that.namePstU3) &&
                Objects.equals(unitPstU3, that.unitPstU3) &&
                Objects.equals(standardvalPstU3, that.standardvalPstU3) &&
                Objects.equals(cellvalPstU3, that.cellvalPstU3) &&
                Objects.equals(floorvalPstU3, that.floorvalPstU3) &&
                Objects.equals(isMarkPstU3, that.isMarkPstU3) &&
                Objects.equals(alarmcontentPstU3, that.alarmcontentPstU3) &&
                Objects.equals(namePltU1, that.namePltU1) &&
                Objects.equals(unitPltU1, that.unitPltU1) &&
                Objects.equals(standardvalPltU1, that.standardvalPltU1) &&
                Objects.equals(cellvalPltU1, that.cellvalPltU1) &&
                Objects.equals(floorvalPltU1, that.floorvalPltU1) &&
                Objects.equals(isMarkPltU1, that.isMarkPltU1) &&
                Objects.equals(alarmcontentPltU1, that.alarmcontentPltU1) &&
                Objects.equals(namePltU2, that.namePltU2) &&
                Objects.equals(unitPltU2, that.unitPltU2) &&
                Objects.equals(standardvalPltU2, that.standardvalPltU2) &&
                Objects.equals(cellvalPltU2, that.cellvalPltU2) &&
                Objects.equals(floorvalPltU2, that.floorvalPltU2) &&
                Objects.equals(isMarkPltU2, that.isMarkPltU2) &&
                Objects.equals(alarmcontentPltU2, that.alarmcontentPltU2) &&
                Objects.equals(namePltU3, that.namePltU3) &&
                Objects.equals(unitPltU3, that.unitPltU3) &&
                Objects.equals(standardvalPltU3, that.standardvalPltU3) &&
                Objects.equals(cellvalPltU3, that.cellvalPltU3) &&
                Objects.equals(floorvalPltU3, that.floorvalPltU3) &&
                Objects.equals(isMarkPltU3, that.isMarkPltU3) &&
                Objects.equals(alarmcontentPltU3, that.alarmcontentPltU3) &&
                Objects.equals(nameHz, that.nameHz) &&
                Objects.equals(unitHz, that.unitHz) &&
                Objects.equals(standardvalHz, that.standardvalHz) &&
                Objects.equals(cellvalHz, that.cellvalHz) &&
                Objects.equals(floorvalHz, that.floorvalHz) &&
                Objects.equals(isMarkHz, that.isMarkHz) &&
                Objects.equals(alarmcontentHz, that.alarmcontentHz) &&
                Objects.equals(nameAngleU1, that.nameAngleU1) &&
                Objects.equals(unitAngleU1, that.unitAngleU1) &&
                Objects.equals(standardvalAngleU1, that.standardvalAngleU1) &&
                Objects.equals(cellvalAngleU1, that.cellvalAngleU1) &&
                Objects.equals(floorvalAngleU1, that.floorvalAngleU1) &&
                Objects.equals(isMarkAngleU1, that.isMarkAngleU1) &&
                Objects.equals(alarmcontentAngleU1, that.alarmcontentAngleU1) &&
                Objects.equals(nameAngleU2, that.nameAngleU2) &&
                Objects.equals(unitAngleU2, that.unitAngleU2) &&
                Objects.equals(standardvalAngleU2, that.standardvalAngleU2) &&
                Objects.equals(cellvalAngleU2, that.cellvalAngleU2) &&
                Objects.equals(floorvalAngleU2, that.floorvalAngleU2) &&
                Objects.equals(isMarkAngleU2, that.isMarkAngleU2) &&
                Objects.equals(alarmcontentAngleU2, that.alarmcontentAngleU2) &&
                Objects.equals(nameAngleU3, that.nameAngleU3) &&
                Objects.equals(unitAngleU3, that.unitAngleU3) &&
                Objects.equals(standardvalAngleU3, that.standardvalAngleU3) &&
                Objects.equals(cellvalAngleU3, that.cellvalAngleU3) &&
                Objects.equals(floorvalAngleU3, that.floorvalAngleU3) &&
                Objects.equals(isMarkAngleU3, that.isMarkAngleU3) &&
                Objects.equals(alarmcontentAngleU3, that.alarmcontentAngleU3) &&
                Objects.equals(nameAngleV1, that.nameAngleV1) &&
                Objects.equals(unitAngleV1, that.unitAngleV1) &&
                Objects.equals(standardvalAngleV1, that.standardvalAngleV1) &&
                Objects.equals(cellvalAngleV1, that.cellvalAngleV1) &&
                Objects.equals(floorvalAngleV1, that.floorvalAngleV1) &&
                Objects.equals(isMarkAngleV1, that.isMarkAngleV1) &&
                Objects.equals(alarmcontentAngleV1, that.alarmcontentAngleV1) &&
                Objects.equals(nameAngleV2, that.nameAngleV2) &&
                Objects.equals(unitAngleV2, that.unitAngleV2) &&
                Objects.equals(standardvalAngleV2, that.standardvalAngleV2) &&
                Objects.equals(cellvalAngleV2, that.cellvalAngleV2) &&
                Objects.equals(floorvalAngleV2, that.floorvalAngleV2) &&
                Objects.equals(isMarkAngleV2, that.isMarkAngleV2) &&
                Objects.equals(alarmcontentAngleV2, that.alarmcontentAngleV2) &&
                Objects.equals(nameAngleV3, that.nameAngleV3) &&
                Objects.equals(unitAngleV3, that.unitAngleV3) &&
                Objects.equals(standardvalAngleV3, that.standardvalAngleV3) &&
                Objects.equals(cellvalAngleV3, that.cellvalAngleV3) &&
                Objects.equals(floorvalAngleV3, that.floorvalAngleV3) &&
                Objects.equals(isMarkAngleV3, that.isMarkAngleV3) &&
                Objects.equals(alarmcontentAngleV3, that.alarmcontentAngleV3) &&
                Objects.equals(nameAngleI1, that.nameAngleI1) &&
                Objects.equals(unitAngleI1, that.unitAngleI1) &&
                Objects.equals(standardvalAngleI1, that.standardvalAngleI1) &&
                Objects.equals(cellvalAngleI1, that.cellvalAngleI1) &&
                Objects.equals(floorvalAngleI1, that.floorvalAngleI1) &&
                Objects.equals(isMarkAngleI1, that.isMarkAngleI1) &&
                Objects.equals(alarmcontentAngleI1, that.alarmcontentAngleI1) &&
                Objects.equals(nameAngleI2, that.nameAngleI2) &&
                Objects.equals(unitAngleI2, that.unitAngleI2) &&
                Objects.equals(standardvalAngleI2, that.standardvalAngleI2) &&
                Objects.equals(cellvalAngleI2, that.cellvalAngleI2) &&
                Objects.equals(floorvalAngleI2, that.floorvalAngleI2) &&
                Objects.equals(isMarkAngleI2, that.isMarkAngleI2) &&
                Objects.equals(alarmcontentAngleI2, that.alarmcontentAngleI2) &&
                Objects.equals(nameAngleI3, that.nameAngleI3) &&
                Objects.equals(unitAngleI3, that.unitAngleI3) &&
                Objects.equals(standardvalAngleI3, that.standardvalAngleI3) &&
                Objects.equals(cellvalAngleI3, that.cellvalAngleI3) &&
                Objects.equals(floorvalAngleI3, that.floorvalAngleI3) &&
                Objects.equals(isMarkAngleI3, that.isMarkAngleI3) &&
                Objects.equals(alarmcontentAngleI3, that.alarmcontentAngleI3) &&
                Objects.equals(nameAunb, that.nameAunb) &&
                Objects.equals(unitAunb, that.unitAunb) &&
                Objects.equals(standardvalAunb, that.standardvalAunb) &&
                Objects.equals(cellvalAunb, that.cellvalAunb) &&
                Objects.equals(floorvalAunb, that.floorvalAunb) &&
                Objects.equals(isMarkAunb, that.isMarkAunb) &&
                Objects.equals(alarmcontentAunb, that.alarmcontentAunb) &&
                Objects.equals(nameUunb, that.nameUunb) &&
                Objects.equals(unitUunb, that.unitUunb) &&
                Objects.equals(standardvalUunb, that.standardvalUunb) &&
                Objects.equals(cellvalUunb, that.cellvalUunb) &&
                Objects.equals(floorvalUunb, that.floorvalUunb) &&
                Objects.equals(isMarkUunb, that.isMarkUunb) &&
                Objects.equals(alarmcontentUunb, that.alarmcontentUunb) &&
                Objects.equals(nameVunb, that.nameVunb) &&
                Objects.equals(unitVunb, that.unitVunb) &&
                Objects.equals(standardvalVunb, that.standardvalVunb) &&
                Objects.equals(cellvalVunb, that.cellvalVunb) &&
                Objects.equals(floorvalVunb, that.floorvalVunb) &&
                Objects.equals(isMarkVunb, that.isMarkVunb) &&
                Objects.equals(alarmcontentVunb, that.alarmcontentVunb);
    }

    @Override
    public int hashCode() {

        return Objects.hash(dtid, did, type, nameFU1, unitFU1, standardvalFU1, cellvalFU1, floorvalFU1, isMarkFU1, alarmcontentFU1, nameFU2, unitFU2, standardvalFU2, cellvalFU2, floorvalFU2, isMarkFU2, alarmcontentFU2, nameFU3, unitFU3, standardvalFU3, cellvalFU3, floorvalFU3, isMarkFU3, alarmcontentFU3, namePstU1, unitPstU1, standardvalPstU1, cellvalPstU1, floorvalPstU1, isMarkPstU1, alarmcontentPstU1, namePstU2, unitPstU2, standardvalPstU2, cellvalPstU2, floorvalPstU2, isMarkPstU2, alarmcontentPstU2, namePstU3, unitPstU3, standardvalPstU3, cellvalPstU3, floorvalPstU3, isMarkPstU3, alarmcontentPstU3, namePltU1, unitPltU1, standardvalPltU1, cellvalPltU1, floorvalPltU1, isMarkPltU1, alarmcontentPltU1, namePltU2, unitPltU2, standardvalPltU2, cellvalPltU2, floorvalPltU2, isMarkPltU2, alarmcontentPltU2, namePltU3, unitPltU3, standardvalPltU3, cellvalPltU3, floorvalPltU3, isMarkPltU3, alarmcontentPltU3, nameHz, unitHz, standardvalHz, cellvalHz, floorvalHz, isMarkHz, alarmcontentHz, nameAngleU1, unitAngleU1, standardvalAngleU1, cellvalAngleU1, floorvalAngleU1, isMarkAngleU1, alarmcontentAngleU1, nameAngleU2, unitAngleU2, standardvalAngleU2, cellvalAngleU2, floorvalAngleU2, isMarkAngleU2, alarmcontentAngleU2, nameAngleU3, unitAngleU3, standardvalAngleU3, cellvalAngleU3, floorvalAngleU3, isMarkAngleU3, alarmcontentAngleU3, nameAngleV1, unitAngleV1, standardvalAngleV1, cellvalAngleV1, floorvalAngleV1, isMarkAngleV1, alarmcontentAngleV1, nameAngleV2, unitAngleV2, standardvalAngleV2, cellvalAngleV2, floorvalAngleV2, isMarkAngleV2, alarmcontentAngleV2, nameAngleV3, unitAngleV3, standardvalAngleV3, cellvalAngleV3, floorvalAngleV3, isMarkAngleV3, alarmcontentAngleV3, nameAngleI1, unitAngleI1, standardvalAngleI1, cellvalAngleI1, floorvalAngleI1, isMarkAngleI1, alarmcontentAngleI1, nameAngleI2, unitAngleI2, standardvalAngleI2, cellvalAngleI2, floorvalAngleI2, isMarkAngleI2, alarmcontentAngleI2, nameAngleI3, unitAngleI3, standardvalAngleI3, cellvalAngleI3, floorvalAngleI3, isMarkAngleI3, alarmcontentAngleI3, nameAunb, unitAunb, standardvalAunb, cellvalAunb, floorvalAunb, isMarkAunb, alarmcontentAunb, nameUunb, unitUunb, standardvalUunb, cellvalUunb, floorvalUunb, isMarkUunb, alarmcontentUunb, nameVunb, unitVunb, standardvalVunb, cellvalVunb, floorvalVunb, isMarkVunb, alarmcontentVunb);
    }
}
