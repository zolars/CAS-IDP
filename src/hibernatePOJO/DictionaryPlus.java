package hibernatePOJO;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "dictionary_plus", schema = "test", catalog = "")
public class DictionaryPlus {
    private int part;
    private Integer slaveid;
    private Integer functioncode;
    private Integer start;
    private Integer length;

    @Id
    @Column(name = "part", nullable = false)
    public int getPart() {
        return part;
    }

    public void setPart(int part) {
        this.part = part;
    }

    @Basic
    @Column(name = "slaveid", nullable = true)
    public Integer getSlaveid() {
        return slaveid;
    }

    public void setSlaveid(Integer slaveid) {
        this.slaveid = slaveid;
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
    @Column(name = "start", nullable = true)
    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    @Basic
    @Column(name = "length", nullable = true)
    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DictionaryPlus that = (DictionaryPlus) o;
        return part == that.part &&
                Objects.equals(slaveid, that.slaveid) &&
                Objects.equals(functioncode, that.functioncode) &&
                Objects.equals(start, that.start) &&
                Objects.equals(length, that.length);
    }

    @Override
    public int hashCode() {

        return Objects.hash(part, slaveid, functioncode, start, length);
    }
}
