package hibernatePOJO;

import java.util.Objects;

public class DictionaryThreshold {
    private int id;
    private Integer addr1;
    private Integer addr2;
    private String description;
    private int functioncode;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getAddr1() {
        return addr1;
    }

    public void setAddr1(Integer addr1) {
        this.addr1 = addr1;
    }

    public Integer getAddr2() {
        return addr2;
    }

    public void setAddr2(Integer addr2) {
        this.addr2 = addr2;
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
                Objects.equals(addr1, that.addr1) &&
                Objects.equals(addr2, that.addr2) &&
                Objects.equals(description, that.description);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, addr1, addr2, description, functioncode);
    }
}
