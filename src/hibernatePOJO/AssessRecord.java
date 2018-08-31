package hibernatePOJO;

import java.util.Objects;

public class AssessRecord {
    private int aid;
    private Integer cbid;
    private Integer degree;
    private Integer powernum;
    private Integer tempreturenum;
    private Integer wetnum;
    private Integer devicenum;
    private Integer apowernum;
    private Integer atempreturenum;
    private Integer awetnum;
    private Integer adevicenum;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public Integer getCbid() {
        return cbid;
    }

    public void setCbid(Integer cbid) {
        this.cbid = cbid;
    }

    public Integer getDegree() {
        return degree;
    }

    public void setDegree(Integer degree) {
        this.degree = degree;
    }

    public Integer getPowernum() {
        return powernum;
    }

    public void setPowernum(Integer powernum) {
        this.powernum = powernum;
    }

    public Integer getTempreturenum() {
        return tempreturenum;
    }

    public void setTempreturenum(Integer tempreturenum) {
        this.tempreturenum = tempreturenum;
    }

    public Integer getWetnum() {
        return wetnum;
    }

    public void setWetnum(Integer wetnum) {
        this.wetnum = wetnum;
    }

    public Integer getDevicenum() {
        return devicenum;
    }

    public void setDevicenum(Integer devicenum) {
        this.devicenum = devicenum;
    }

    public Integer getApowernum() {
        return apowernum;
    }

    public void setApowernum(Integer apowernum) {
        this.apowernum = apowernum;
    }

    public Integer getAtempreturenum() {
        return atempreturenum;
    }

    public void setAtempreturenum(Integer atempreturenum) {
        this.atempreturenum = atempreturenum;
    }

    public Integer getAwetnum() {
        return awetnum;
    }

    public void setAwetnum(Integer awetnum) {
        this.awetnum = awetnum;
    }

    public Integer getAdevicenum() {
        return adevicenum;
    }

    public void setAdevicenum(Integer adevicenum) {
        this.adevicenum = adevicenum;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AssessRecord that = (AssessRecord) o;
        return aid == that.aid &&
                Objects.equals(cbid, that.cbid) &&
                Objects.equals(degree, that.degree) &&
                Objects.equals(powernum, that.powernum) &&
                Objects.equals(tempreturenum, that.tempreturenum) &&
                Objects.equals(wetnum, that.wetnum) &&
                Objects.equals(devicenum, that.devicenum) &&
                Objects.equals(apowernum, that.apowernum) &&
                Objects.equals(atempreturenum, that.atempreturenum) &&
                Objects.equals(awetnum, that.awetnum) &&
                Objects.equals(adevicenum, that.adevicenum);
    }

    @Override
    public int hashCode() {

        return Objects.hash(aid, cbid, degree, powernum, tempreturenum, wetnum, devicenum, apowernum, atempreturenum, awetnum, adevicenum);
    }
}
