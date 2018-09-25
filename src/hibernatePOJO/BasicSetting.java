package hibernatePOJO;

import java.util.Objects;

public class BasicSetting {
    private int id;
    private Integer onlineinterval;
    private Integer thansentinterval;
    private Integer uploadinterval;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BasicSetting that = (BasicSetting) o;
        return id == that.id &&
                Objects.equals(onlineinterval, that.onlineinterval) &&
                Objects.equals(thansentinterval, that.thansentinterval) &&
                Objects.equals(uploadinterval, that.uploadinterval);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, onlineinterval, thansentinterval, uploadinterval);
    }
}
