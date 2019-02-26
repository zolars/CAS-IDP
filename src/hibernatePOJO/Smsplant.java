package hibernatePOJO;

import java.util.Objects;

public class Smsplant {
    private short id;
    private String bwt;
    private String sbname;
    private String sbip;
    private String status;
    private String gjpro;
    private String gjexp;
    private String zbj;
    private String ext1;
    private String ext2;
    private String ext3;

    public short getId() {
        return id;
    }

    public void setId(short id) {
        this.id = id;
    }

    public String getBwt() {
        return bwt;
    }

    public void setBwt(String bwt) {
        this.bwt = bwt;
    }

    public String getSbname() {
        return sbname;
    }

    public void setSbname(String sbname) {
        this.sbname = sbname;
    }

    public String getSbip() {
        return sbip;
    }

    public void setSbip(String sbip) {
        this.sbip = sbip;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getGjpro() {
        return gjpro;
    }

    public void setGjpro(String gjpro) {
        this.gjpro = gjpro;
    }

    public String getGjexp() {
        return gjexp;
    }

    public void setGjexp(String gjexp) {
        this.gjexp = gjexp;
    }

    public String getZbj() {
        return zbj;
    }

    public void setZbj(String zbj) {
        this.zbj = zbj;
    }

    public String getExt1() {
        return ext1;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    public String getExt2() {
        return ext2;
    }

    public void setExt2(String ext2) {
        this.ext2 = ext2;
    }

    public String getExt3() {
        return ext3;
    }

    public void setExt3(String ext3) {
        this.ext3 = ext3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Smsplant smsplant = (Smsplant) o;
        return id == smsplant.id &&
                Objects.equals(bwt, smsplant.bwt) &&
                Objects.equals(sbname, smsplant.sbname) &&
                Objects.equals(sbip, smsplant.sbip) &&
                Objects.equals(status, smsplant.status) &&
                Objects.equals(gjpro, smsplant.gjpro) &&
                Objects.equals(gjexp, smsplant.gjexp) &&
                Objects.equals(zbj, smsplant.zbj) &&
                Objects.equals(ext1, smsplant.ext1) &&
                Objects.equals(ext2, smsplant.ext2) &&
                Objects.equals(ext3, smsplant.ext3);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, bwt, sbname, sbip, status, gjpro, gjexp, zbj, ext1, ext2, ext3);
    }
}
