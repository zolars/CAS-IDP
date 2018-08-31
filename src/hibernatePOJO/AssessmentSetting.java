package hibernatePOJO;

import java.util.Objects;

public class AssessmentSetting {
    private String aid;
    private Integer redyellow;
    private Integer yellowgreen;

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public Integer getRedyellow() {
        return redyellow;
    }

    public void setRedyellow(Integer redyellow) {
        this.redyellow = redyellow;
    }

    public Integer getYellowgreen() {
        return yellowgreen;
    }

    public void setYellowgreen(Integer yellowgreen) {
        this.yellowgreen = yellowgreen;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AssessmentSetting that = (AssessmentSetting) o;
        return Objects.equals(aid, that.aid) &&
                Objects.equals(redyellow, that.redyellow) &&
                Objects.equals(yellowgreen, that.yellowgreen);
    }

    @Override
    public int hashCode() {

        return Objects.hash(aid, redyellow, yellowgreen);
    }
}
