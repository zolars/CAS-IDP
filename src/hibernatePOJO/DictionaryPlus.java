package hibernatePOJO;

import java.util.Objects;

public class DictionaryPlus {
    private int part1Slaveid;
    private String part1Functioncode;
    private Integer part1Start;
    private Integer part1Length;
    private Integer part2Slaveid;
    private String part2Funtioncode;
    private Integer part2Start;
    private Integer part2Length;
    private Integer part3Slaveid;
    private String part3Functioncode;
    private Integer part3Start;
    private Integer part3Length;
    private Integer part4Slaveid;
    private String part4Functioncode;
    private Integer part4Start;
    private Integer part4Length;
    private Integer part5Slaveid;
    private String part5Functioncode;
    private Integer part5Start;
    private Integer part5Length;
    private Integer part6Slaveid;
    private String part6Functioncode;
    private Integer part6Start;
    private Integer part6Length;
    private Integer part7Slaveid;
    private String part7Functioncode;
    private Integer part7Start;
    private Integer part7Length;

    public int getPart1Slaveid() {
        return part1Slaveid;
    }

    public void setPart1Slaveid(int part1Slaveid) {
        this.part1Slaveid = part1Slaveid;
    }

    public String getPart1Functioncode() {
        return part1Functioncode;
    }

    public void setPart1Functioncode(String part1Functioncode) {
        this.part1Functioncode = part1Functioncode;
    }

    public Integer getPart1Start() {
        return part1Start;
    }

    public void setPart1Start(Integer part1Start) {
        this.part1Start = part1Start;
    }

    public Integer getPart1Length() {
        return part1Length;
    }

    public void setPart1Length(Integer part1Length) {
        this.part1Length = part1Length;
    }

    public Integer getPart2Slaveid() {
        return part2Slaveid;
    }

    public void setPart2Slaveid(Integer part2Slaveid) {
        this.part2Slaveid = part2Slaveid;
    }

    public String getPart2Funtioncode() {
        return part2Funtioncode;
    }

    public void setPart2Funtioncode(String part2Funtioncode) {
        this.part2Funtioncode = part2Funtioncode;
    }

    public Integer getPart2Start() {
        return part2Start;
    }

    public void setPart2Start(Integer part2Start) {
        this.part2Start = part2Start;
    }

    public Integer getPart2Length() {
        return part2Length;
    }

    public void setPart2Length(Integer part2Length) {
        this.part2Length = part2Length;
    }

    public Integer getPart3Slaveid() {
        return part3Slaveid;
    }

    public void setPart3Slaveid(Integer part3Slaveid) {
        this.part3Slaveid = part3Slaveid;
    }

    public String getPart3Functioncode() {
        return part3Functioncode;
    }

    public void setPart3Functioncode(String part3Functioncode) {
        this.part3Functioncode = part3Functioncode;
    }

    public Integer getPart3Start() {
        return part3Start;
    }

    public void setPart3Start(Integer part3Start) {
        this.part3Start = part3Start;
    }

    public Integer getPart3Length() {
        return part3Length;
    }

    public void setPart3Length(Integer part3Length) {
        this.part3Length = part3Length;
    }

    public Integer getPart4Slaveid() {
        return part4Slaveid;
    }

    public void setPart4Slaveid(Integer part4Slaveid) {
        this.part4Slaveid = part4Slaveid;
    }

    public String getPart4Functioncode() {
        return part4Functioncode;
    }

    public void setPart4Functioncode(String part4Functioncode) {
        this.part4Functioncode = part4Functioncode;
    }

    public Integer getPart4Start() {
        return part4Start;
    }

    public void setPart4Start(Integer part4Start) {
        this.part4Start = part4Start;
    }

    public Integer getPart4Length() {
        return part4Length;
    }

    public void setPart4Length(Integer part4Length) {
        this.part4Length = part4Length;
    }

    public Integer getPart5Slaveid() {
        return part5Slaveid;
    }

    public void setPart5Slaveid(Integer part5Slaveid) {
        this.part5Slaveid = part5Slaveid;
    }

    public String getPart5Functioncode() {
        return part5Functioncode;
    }

    public void setPart5Functioncode(String part5Functioncode) {
        this.part5Functioncode = part5Functioncode;
    }

    public Integer getPart5Start() {
        return part5Start;
    }

    public void setPart5Start(Integer part5Start) {
        this.part5Start = part5Start;
    }

    public Integer getPart5Length() {
        return part5Length;
    }

    public void setPart5Length(Integer part5Length) {
        this.part5Length = part5Length;
    }

    public Integer getPart6Slaveid() {
        return part6Slaveid;
    }

    public void setPart6Slaveid(Integer part6Slaveid) {
        this.part6Slaveid = part6Slaveid;
    }

    public String getPart6Functioncode() {
        return part6Functioncode;
    }

    public void setPart6Functioncode(String part6Functioncode) {
        this.part6Functioncode = part6Functioncode;
    }

    public Integer getPart6Start() {
        return part6Start;
    }

    public void setPart6Start(Integer part6Start) {
        this.part6Start = part6Start;
    }

    public Integer getPart6Length() {
        return part6Length;
    }

    public void setPart6Length(Integer part6Length) {
        this.part6Length = part6Length;
    }

    public Integer getPart7Slaveid() {
        return part7Slaveid;
    }

    public void setPart7Slaveid(Integer part7Slaveid) {
        this.part7Slaveid = part7Slaveid;
    }

    public String getPart7Functioncode() {
        return part7Functioncode;
    }

    public void setPart7Functioncode(String part7Functioncode) {
        this.part7Functioncode = part7Functioncode;
    }

    public Integer getPart7Start() {
        return part7Start;
    }

    public void setPart7Start(Integer part7Start) {
        this.part7Start = part7Start;
    }

    public Integer getPart7Length() {
        return part7Length;
    }

    public void setPart7Length(Integer part7Length) {
        this.part7Length = part7Length;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DictionaryPlus that = (DictionaryPlus) o;
        return part1Slaveid == that.part1Slaveid &&
                Objects.equals(part1Functioncode, that.part1Functioncode) &&
                Objects.equals(part1Start, that.part1Start) &&
                Objects.equals(part1Length, that.part1Length) &&
                Objects.equals(part2Slaveid, that.part2Slaveid) &&
                Objects.equals(part2Funtioncode, that.part2Funtioncode) &&
                Objects.equals(part2Start, that.part2Start) &&
                Objects.equals(part2Length, that.part2Length) &&
                Objects.equals(part3Slaveid, that.part3Slaveid) &&
                Objects.equals(part3Functioncode, that.part3Functioncode) &&
                Objects.equals(part3Start, that.part3Start) &&
                Objects.equals(part3Length, that.part3Length) &&
                Objects.equals(part4Slaveid, that.part4Slaveid) &&
                Objects.equals(part4Functioncode, that.part4Functioncode) &&
                Objects.equals(part4Start, that.part4Start) &&
                Objects.equals(part4Length, that.part4Length) &&
                Objects.equals(part5Slaveid, that.part5Slaveid) &&
                Objects.equals(part5Functioncode, that.part5Functioncode) &&
                Objects.equals(part5Start, that.part5Start) &&
                Objects.equals(part5Length, that.part5Length) &&
                Objects.equals(part6Slaveid, that.part6Slaveid) &&
                Objects.equals(part6Functioncode, that.part6Functioncode) &&
                Objects.equals(part6Start, that.part6Start) &&
                Objects.equals(part6Length, that.part6Length) &&
                Objects.equals(part7Slaveid, that.part7Slaveid) &&
                Objects.equals(part7Functioncode, that.part7Functioncode) &&
                Objects.equals(part7Start, that.part7Start) &&
                Objects.equals(part7Length, that.part7Length);
    }

    @Override
    public int hashCode() {

        return Objects.hash(part1Slaveid, part1Functioncode, part1Start, part1Length, part2Slaveid, part2Funtioncode, part2Start, part2Length, part3Slaveid, part3Functioncode, part3Start, part3Length, part4Slaveid, part4Functioncode, part4Start, part4Length, part5Slaveid, part5Functioncode, part5Start, part5Length, part6Slaveid, part6Functioncode, part6Start, part6Length, part7Slaveid, part7Functioncode, part7Start, part7Length);
    }
}
