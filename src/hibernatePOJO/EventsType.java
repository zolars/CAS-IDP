package hibernatePOJO;

import java.util.Objects;

public class EventsType {
    private int type;
    private int pid;
    private String name;
    private String subtypeset;
    private Integer prior;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubtypeset() {
        return subtypeset;
    }

    public void setSubtypeset(String subtypeset) {
        this.subtypeset = subtypeset;
    }

    public Integer getPrior() {
        return prior;
    }

    public void setPrior(Integer prior) {
        this.prior = prior;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventsType that = (EventsType) o;
        return type == that.type &&
                Objects.equals(name, that.name) &&
                Objects.equals(subtypeset, that.subtypeset) &&
                Objects.equals(prior, that.prior);
    }

    @Override
    public int hashCode() {

        return Objects.hash(type, name, subtypeset, prior);
    }
}
