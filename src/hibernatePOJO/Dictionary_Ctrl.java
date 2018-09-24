package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "dictionary_ctrl", schema = "test", catalog = "")
public class Dictionary_Ctrl {
    private int id;
    private Integer functioncode;
    private Integer addr;
    private String description;
    private String forTrue;
    private String forFalse;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "functioncode", nullable = true)
    public Integer getFunctioncode() {
        return functioncode;
    }

    public void setFunctioncode(Integer functioncode) {
        this.functioncode = functioncode;
    }

    @Basic
    @Column(name = "addr", nullable = true)
    public Integer getAddr() {
        return addr;
    }

    public void setAddr(Integer addr) {
        this.addr = addr;
    }

    @Basic
    @Column(name = "description", nullable = true)
    public String getDescription() {
        return description;
    }

    public void setDescription(String start) {
        this.description = description;
    }

    @Basic
    @Column(name = "forTrue", nullable = true)
    public String getForTrue() {
        return forTrue;
    }

    public void setForTrue(String forTrue) {
        this.forTrue = forTrue;
    }

    @Basic
    @Column(name = "forFalse", nullable = true)
    public String getForFalse() {
        return forFalse;
    }

    public void setForFalse(String forFalse) {
        this.forFalse = forFalse;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Dictionary_Ctrl that = (Dictionary_Ctrl) o;
        return id == that.id &&
                Objects.equals(functioncode, that.functioncode) &&
                Objects.equals(addr, that.addr) &&
                Objects.equals(description, that.description) &&
                Objects.equals(forTrue, that.forTrue) &&
                Objects.equals(forFalse, that.forFalse);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, functioncode, addr, description, forTrue, forFalse);
    }
}
