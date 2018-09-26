package hibernatePOJO;

import java.util.Objects;

public class DictionaryCtrl {
    private long id;
    private Long addr;
    private String description;
    private String forTrue;
    private String forFalse;
    private int functioncode;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public Long getAddr() {
        return addr;
    }

    public void setAddr(Long addr) {
        this.addr = addr;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getForTrue() {
        return forTrue;
    }

    public void setForTrue(String forTrue) {
        this.forTrue = forTrue;
    }

    public String getForFalse() {
        return forFalse;
    }

    public void setForFalse(String forFalse) {
        this.forFalse = forFalse;
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
        DictionaryCtrl that = (DictionaryCtrl) o;
        return id == that.id &&
                functioncode == that.functioncode &&
                Objects.equals(addr, that.addr) &&
                Objects.equals(description, that.description) &&
                Objects.equals(forTrue, that.forTrue) &&
                Objects.equals(forFalse, that.forFalse);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, addr, description, forTrue, forFalse, functioncode);
    }
}
