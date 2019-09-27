package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "basic_setting", schema = "test", catalog = "")
public class BasicSetting {
    private int id;
    private Integer onlineinterval;
    private Integer qstinterval;
    private Integer thansentinterval;
    private Integer uploadinterval;
    private Integer assessinterval;
    private Integer alarminterval;
    private Integer tempinterval;
    private Integer ctrlinterval;
    private Integer thresholdsaveinterval;
    private Integer datainterval;
    private Integer alarmmethod;
    private Integer alarmanalysisinterval;
    private Integer alarmanalysispercentthreshold;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "onlineinterval", nullable = true)
    public Integer getOnlineinterval() {
        return onlineinterval;
    }

    public void setOnlineinterval(Integer onlineinterval) {
        this.onlineinterval = onlineinterval;
    }

    @Basic
    @Column(name = "qstinterval", nullable = true)
    public Integer getQstinterval() {
        return qstinterval;
    }

    public void setQstinterval(Integer qstinterval) {
        this.qstinterval = qstinterval;
    }

    @Basic
    @Column(name = "thansentinterval", nullable = true)
    public Integer getThansentinterval() {
        return thansentinterval;
    }

    public void setThansentinterval(Integer thansentinterval) {
        this.thansentinterval = thansentinterval;
    }

    @Basic
    @Column(name = "uploadinterval", nullable = true)
    public Integer getUploadinterval() {
        return uploadinterval;
    }

    public void setUploadinterval(Integer uploadinterval) {
        this.uploadinterval = uploadinterval;
    }

    @Basic
    @Column(name = "assessinterval", nullable = true)
    public Integer getAssessinterval() {
        return assessinterval;
    }

    public void setAssessinterval(Integer assessinterval) {
        this.assessinterval = assessinterval;
    }

    @Basic
    @Column(name = "alarminterval", nullable = true)
    public Integer getAlarminterval() {
        return alarminterval;
    }

    public void setAlarminterval(Integer alarminterval) {
        this.alarminterval = alarminterval;
    }

    @Basic
    @Column(name = "tempinterval", nullable = true)
    public Integer getTempinterval() {
        return tempinterval;
    }

    public void setTempinterval(Integer tempinterval) {
        this.tempinterval = tempinterval;
    }

    @Basic
    @Column(name = "ctrlinterval", nullable = true)
    public Integer getCtrlinterval() {
        return ctrlinterval;
    }

    public void setCtrlinterval(Integer ctrlinterval) {
        this.ctrlinterval = ctrlinterval;
    }

    @Basic
    @Column(name = "thresholdsaveinterval", nullable = true)
    public Integer getThresholdsaveinterval() {
        return thresholdsaveinterval;
    }

    public void setThresholdsaveinterval(Integer thresholdsaveinterval) {
        this.thresholdsaveinterval = thresholdsaveinterval;
    }

    @Basic
    @Column(name = "datainterval", nullable = true)
    public Integer getDatainterval() {
        return datainterval;
    }

    public void setDatainterval(Integer datainterval) {
        this.datainterval = datainterval;
    }

    @Basic
    @Column(name = "alarmmethod", nullable = true)
    public Integer getAlarmmethod() {
        return alarmmethod;
    }

    public void setAlarmmethod(Integer alarmmethod) {
        this.alarmmethod = alarmmethod;
    }

    @Basic
    @Column(name = "alarmanalysisinterval", nullable = true)
    public Integer getAlarmanalysisinterval() {
        return alarmanalysisinterval;
    }

    public void setAlarmanalysisinterval(Integer alarmanalysisinterval) {
        this.alarmanalysisinterval = alarmanalysisinterval;
    }

    @Basic
    @Column(name = "alarmanalysispercentthreshold", nullable = true)
    public Integer getAlarmanalysispercentthreshold() {
        return alarmanalysispercentthreshold;
    }

    public void setAlarmanalysispercentthreshold(Integer alarmanalysispercentthreshold) {
        this.alarmanalysispercentthreshold = alarmanalysispercentthreshold;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BasicSetting that = (BasicSetting) o;
        return id == that.id &&
                Objects.equals(onlineinterval, that.onlineinterval) &&
                Objects.equals(qstinterval, that.qstinterval) &&
                Objects.equals(thansentinterval, that.thansentinterval) &&
                Objects.equals(uploadinterval, that.uploadinterval) &&
                Objects.equals(assessinterval, that.assessinterval) &&
                Objects.equals(alarminterval, that.alarminterval) &&
                Objects.equals(tempinterval, that.tempinterval) &&
                Objects.equals(ctrlinterval, that.ctrlinterval) &&
                Objects.equals(thresholdsaveinterval, that.thresholdsaveinterval) &&
                Objects.equals(datainterval, that.datainterval) &&
                Objects.equals(alarmmethod, that.alarmmethod) &&
                Objects.equals(alarmanalysisinterval, that.alarmanalysisinterval) &&
                Objects.equals(alarmanalysispercentthreshold, that.alarmanalysispercentthreshold);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, onlineinterval, qstinterval, thansentinterval, uploadinterval, assessinterval, alarminterval, tempinterval, ctrlinterval, thresholdsaveinterval, datainterval, alarmmethod, alarmanalysisinterval, alarmanalysispercentthreshold);
    }
}
