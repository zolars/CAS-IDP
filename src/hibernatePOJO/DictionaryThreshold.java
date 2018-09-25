package hibernatePOJO;

import java.util.Objects;

public class DictionaryThreshold {
    private int id;
    private Integer addr;
    private String description;
    private int functioncode;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getAddr() {
        return addr;
    }

    public void setAddr(Integer addr) {
        this.addr = addr;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getFunctioncode() {
        return functioncode;
    }

    public void setFunctioncode(int functioncode) {
        this.functioncode = functioncode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DictionaryThreshold that = (DictionaryThreshold) o;
        return id == that.id &&
                functioncode == that.functioncode &&
                Objects.equals(addr, that.addr) &&
                Objects.equals(description, that.description);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, addr, description, functioncode);
    }
}
