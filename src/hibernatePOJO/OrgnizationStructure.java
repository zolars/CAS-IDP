package hibernatePOJO;

import java.util.Objects;

public class OrgnizationStructure {
    private String id;
    private String pid;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
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
        OrgnizationStructure that = (OrgnizationStructure) o;
        return Objects.equals(id, that.id) && Objects.equals(pid, that.pid) && Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, pid, name);
    }
}
