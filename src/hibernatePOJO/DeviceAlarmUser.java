package hibernatePOJO;

import java.util.Objects;

public class DeviceAlarmUser {
    private String id;
    private Integer level;
    private String timeperiod;
    private Integer isAlert;
    private Integer isPlantform;
    private Integer isSms;
    private String precontent;
    private String uid;
    private String did;
    private int aid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getTimeperiod() {
        return timeperiod;
    }

    public void setTimeperiod(String timeperiod) {
        this.timeperiod = timeperiod;
    }

    public Integer getIsAlert() {
        return isAlert;
    }

    public void setIsAlert(Integer isAlert) {
        this.isAlert = isAlert;
    }

    public Integer getIsPlantform() {
        return isPlantform;
    }

    public void setIsPlantform(Integer isPlantform) {
        this.isPlantform = isPlantform;
    }

    public Integer getIsSms() {
        return isSms;
    }

    public void setIsSms(Integer isSms) {
        this.isSms = isSms;
    }

    public String getPrecontent() {
        return precontent;
    }

    public void setPrecontent(String precontent) {
        this.precontent = precontent;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DeviceAlarmUser that = (DeviceAlarmUser) o;
        return aid == that.aid &&
                Objects.equals(id, that.id) &&
                Objects.equals(level, that.level) &&
                Objects.equals(timeperiod, that.timeperiod) &&
                Objects.equals(isAlert, that.isAlert) &&
                Objects.equals(isPlantform, that.isPlantform) &&
                Objects.equals(isSms, that.isSms) &&
                Objects.equals(precontent, that.precontent) &&
                Objects.equals(uid, that.uid) &&
                Objects.equals(did, that.did);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, level, timeperiod, isAlert, isPlantform, isSms, precontent, uid, did, aid);
    }
}
