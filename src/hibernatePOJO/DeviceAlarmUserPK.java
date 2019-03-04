package hibernatePOJO;

import java.io.Serializable;
import java.util.Objects;

public class DeviceAlarmUserPK implements Serializable {
    private String id;
    private int aid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
        DeviceAlarmUserPK that = (DeviceAlarmUserPK) o;
        return aid == that.aid &&
                Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, aid);
    }
}
