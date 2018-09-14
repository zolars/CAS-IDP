package hibernatePOJO;

import java.util.Objects;

public class EventtypeEnvironment {
    private int eid;
    private String name;

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventtypeEnvironment that = (EventtypeEnvironment) o;
        return eid == that.eid &&
                Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {

        return Objects.hash(eid, name);
    }
}
