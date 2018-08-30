package hibernatePOJO;

import javax.persistence.*;
import java.sql.Time;
import java.util.Objects;

@Entity
@Table(name = "alarm_setting", schema = "test", catalog = "")
public class AlarmSetting {
    private int aid;

    @Id
    @Column(name = "aid", nullable = false)
    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    private String name;

    @Basic
    @Column(name = "name", nullable = true, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String tel;

    @Basic
    @Column(name = "tel", nullable = true, length = 255)
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    private Time stime;

    @Basic
    @Column(name = "stime", nullable = true)
    public Time getStime() {
        return stime;
    }

    public void setStime(Time stime) {
        this.stime = stime;
    }

    private Time etime;

    @Basic
    @Column(name = "etime", nullable = true)
    public Time getEtime() {
        return etime;
    }

    public void setEtime(Time etime) {
        this.etime = etime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AlarmSetting that = (AlarmSetting) o;
        return aid == that.aid &&
                Objects.equals(name, that.name) &&
                Objects.equals(tel, that.tel) &&
                Objects.equals(stime, that.stime) &&
                Objects.equals(etime, that.etime);
    }

    @Override
    public int hashCode() {

        return Objects.hash(aid, name, tel, stime, etime);
    }
}
