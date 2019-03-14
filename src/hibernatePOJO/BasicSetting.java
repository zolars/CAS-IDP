package hibernatePOJO;

import java.util.Objects;

public class BasicSetting {
    private int id;
    private Integer onlineinterval;
    private Integer thansentinterval;
    private Integer uploadinterval;
    private Integer qstinterval;
    private Integer assessinterval;
    private Integer alarminterval;
    private Integer tempinterval;
    private Integer ctrlinterval;
    private Integer thresholdsaveinterval;
    private Integer datainterval;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getOnlineinterval() {
        return onlineinterval;
    }

    public void setOnlineinterval(Integer onlineinterval) {
        this.onlineinterval = onlineinterval;
    }

    public Integer getThansentinterval() {
        return thansentinterval;
    }

    public void setThansentinterval(Integer thansentinterval) {
        this.thansentinterval = thansentinterval;
    }

    public Integer getUploadinterval() {
        return uploadinterval;
    }

    public void setUploadinterval(Integer uploadinterval) {
        this.uploadinterval = uploadinterval;
    }

    public Integer getQstinterval() {
        return qstinterval;
    }

    public void setQstinterval(Integer qstinterval) {
        this.qstinterval = qstinterval;
    }

    public Integer getAssessinterval() {
        return assessinterval;
    }

    public Integer getAlarminterval() {
        return alarminterval;
    }

    public Integer getTempinterval() {
        return tempinterval;
    }

    public Integer getCtrlinterval() {
        return ctrlinterval;
    }

    public Integer getThresholdsaveinterval() {
        return thresholdsaveinterval;
    }

    public Integer getDatainterval() {
        return datainterval;
    }

    public void setAssessinterval(Integer assessinterval) {
        this.assessinterval = assessinterval;
    }

    public void setAlarminterval(Integer alarminterval) {
        this.alarminterval = alarminterval;
    }

    public void setTempinterval(Integer tempinterval) {
        this.tempinterval = tempinterval;
    }

    public void setCtrlinterval(Integer ctrlinterval) {
        this.ctrlinterval = ctrlinterval;
    }

    public void setThresholdsaveinterval(Integer thresholdsaveinterval) {
        this.thresholdsaveinterval = thresholdsaveinterval;
    }

    public void setDatainterval(Integer datainterval) {
        this.datainterval = datainterval;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BasicSetting that = (BasicSetting) o;
        return id == that.id &&
                Objects.equals(onlineinterval, that.onlineinterval) &&
                Objects.equals(thansentinterval, that.thansentinterval) &&
                Objects.equals(uploadinterval, that.uploadinterval) &&
                Objects.equals(qstinterval, that.qstinterval) &&
                Objects.equals(assessinterval, that.assessinterval) &&
                Objects.equals(alarminterval, that.alarminterval) &&
                Objects.equals(tempinterval, that.tempinterval) &&
                Objects.equals(ctrlinterval, that.ctrlinterval) &&
                Objects.equals(thresholdsaveinterval, that.thresholdsaveinterval) &&
                Objects.equals(datainterval, that.datainterval);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, onlineinterval, thansentinterval, uploadinterval);
    }
}
