package hibernatePOJO;

import java.util.Objects;

public class Smsplantlevel {
    private int id;
    private int plantlevel;
    private String levelbz;
    private Integer syslevel;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPlantlevel() {
        return plantlevel;
    }

    public void setPlantlevel(int plantlevel) {
        this.plantlevel = plantlevel;
    }

    public String getLevelbz() {
        return levelbz;
    }

    public void setLevelbz(String levelbz) {
        this.levelbz = levelbz;
    }

    public Integer getSyslevel() {
        return syslevel;
    }

    public void setSyslevel(Integer syslevel) {
        this.syslevel = syslevel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Smsplantlevel that = (Smsplantlevel) o;
        return id == that.id && plantlevel == that.plantlevel && Objects.equals(levelbz, that.levelbz) && Objects.equals(syslevel, that.syslevel);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, plantlevel, levelbz, syslevel);
    }
}
