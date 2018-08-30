package hibernatePOJO;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "powerxb_monitor", schema = "test", catalog = "")
public class PowerxbMonitor {
    private int xbid;
    private Integer mpid;
    private Timestamp time;
    private Float u1Xb1;
    private Float u2Xb1;
    private Float u3Xb1;
    private Float u1Va1;
    private Float u2Va1;
    private Float u3Va1;
    private Float i1Xb1;
    private Float i2Xb1;
    private Float i3Xb1;
    private Float i1Va1;
    private Float i2Va1;
    private Float i3Va1;
    private Float u1Xb2;
    private Float u2Xb2;
    private Float u3Xb2;
    private Float u1Va2;
    private Float u2Va2;
    private Float u3Va2;
    private Float i1Xb2;
    private Float i2Xb2;
    private Float i3Xb2;
    private Float i1Va2;
    private Float i2Va2;
    private Float i3Va2;
    private Float u1Xb3;
    private Float u2Xb3;
    private Float u3Xb3;
    private Float u1Va3;
    private Float u2Va3;
    private Float u3Va3;
    private Float i1Xb3;
    private Float i2Xb3;
    private Float i3Xb3;
    private Float i1Va3;
    private Float i2Va3;
    private Float i3Va3;
    private Float u1Xb4;
    private Float u2Xb4;
    private Float u3Xb4;
    private Float u1Va4;
    private Float u2Va4;
    private Float u3Va4;
    private Float i1Xb4;
    private Float i2Xb4;
    private Float i3Xb4;
    private Float i1Va4;
    private Float i2Va4;
    private Float i3Va4;
    private Float u1Xb5;
    private Float u2Xb5;
    private Float u3Xb5;
    private Float u1Va5;
    private Float u2Va5;
    private Float u3Va5;
    private Float i1Xb5;
    private Float i2Xb5;
    private Float i3Xb5;
    private Float i1Va5;
    private Float i2Va5;
    private Float i3Va5;
    private Float u1Xb6;
    private Float u2Xb6;
    private Float u3Xb6;
    private Float u1Va6;
    private Float u2Va6;
    private Float u3Va6;
    private Float i1Xb6;
    private Float i2Xb6;
    private Float i3Xb6;
    private Float i1Va6;
    private Float i2Va6;
    private Float i3Va6;
    private Float u1Xb7;
    private Float u2Xb7;
    private Float u3Xb7;
    private Float u1Va7;
    private Float u2Va7;
    private Float u3Va7;
    private Float i1Xb7;
    private Float i2Xb7;
    private Float i3Xb7;
    private Float i1Va7;
    private Float i2Va7;
    private Float i3Va7;
    private Float u1Xb8;
    private Float u2Xb8;
    private Float u3Xb8;
    private Float u1Va8;
    private Float u2Va8;
    private Float u3Va8;
    private Float i1Xb8;
    private Float i2Xb8;
    private Float i3Xb8;
    private Float i1Va8;
    private Float i2Va8;
    private Float i3Va8;
    private Float u1Xb9;
    private Float u2Xb9;
    private Float u3Xb9;
    private Float u1Va9;
    private Float u2Va9;
    private Float u3Va9;
    private Float i1Xb9;
    private Float i2Xb9;
    private Float i3Xb9;
    private Float i1Va9;
    private Float i2Va9;
    private Float i3Va9;
    private Float u1Xb10;
    private Float u2Xb10;
    private Float u3Xb10;
    private Float u1Va10;
    private Float u2Va10;
    private Float u3Va10;
    private Float i1Xb10;
    private Float i2Xb10;
    private Float i3Xb10;
    private Float i1Va10;
    private Float i2Va10;
    private Float i3Va10;
    private Float u1Xb11;
    private Float u2Xb11;
    private Float u3Xb11;
    private Float u1Va11;
    private Float u2Va11;
    private Float u3Va11;
    private Float i1Xb11;
    private Float i2Xb11;
    private Float i3Xb11;
    private Float i1Va11;
    private Float i2Va11;
    private Float i3Va11;
    private Float u1Xb12;
    private Float u2Xb12;
    private Float u3Xb12;
    private Float u1Va12;
    private Float u2Va12;
    private Float u3Va12;
    private Float i1Xb12;
    private Float i2Xb12;
    private Float i3Xb12;
    private Float i1Va12;
    private Float i2Va12;
    private Float i3Va12;
    private Float u1Xb13;
    private Float u2Xb13;
    private Float u3Xb13;
    private Float u1Va13;
    private Float u2Va13;
    private Float u3Va13;
    private Float i1Xb13;
    private Float i2Xb13;
    private Float i3Xb13;
    private Float i1Va13;
    private Float i2Va13;
    private Float i3Va13;
    private Float u1Xb14;
    private Float u2Xb14;
    private Float u3Xb14;
    private Float u1Va14;
    private Float u2Va14;
    private Float u3Va14;
    private Float i1Xb14;
    private Float i2Xb14;
    private Float i3Xb14;
    private Float i1Va14;
    private Float i2Va14;
    private Float i3Va14;
    private Float u1Xb15;
    private Float u2Xb15;
    private Float u3Xb15;
    private Float u1Va15;
    private Float u2Va15;
    private Float u3Va15;
    private Float i1Xb15;
    private Float i2Xb15;
    private Float i3Xb15;
    private Float i1Va15;
    private Float i2Va15;
    private Float i3Va15;
    private Float u1Xb16;
    private Float u2Xb16;
    private Float u3Xb16;
    private Float u1Va16;
    private Float u2Va16;
    private Float u3Va16;
    private Float i1Xb16;
    private Float i2Xb16;
    private Float i3Xb16;
    private Float i1Va16;
    private Float i2Va16;
    private Float i3Va16;
    private Float u1Xb17;
    private Float u2Xb17;
    private Float u3Xb17;
    private Float u1Va17;
    private Float u2Va17;
    private Float u3Va17;
    private Float i1Xb17;
    private Float i2Xb17;
    private Float i3Xb17;
    private Float i1Va17;
    private Float i2Va17;
    private Float i3Va17;
    private Float u1Xb18;
    private Float u2Xb18;
    private Float u3Xb18;
    private Float u1Va18;
    private Float u2Va18;
    private Float u3Va18;
    private Float i1Xb18;
    private Float i2Xb18;
    private Float i3Xb18;
    private Float i1Va18;
    private Float i2Va18;
    private Float i3Va18;
    private Float u1Xb19;
    private Float u2Xb19;
    private Float u3Xb19;
    private Float u1Va19;
    private Float u2Va19;
    private Float u3Va19;
    private Float i1Xb19;
    private Float i2Xb19;
    private Float i3Xb19;
    private Float i1Va19;
    private Float i2Va19;
    private Float i3Va19;
    private Float u1Xb20;
    private Float u2Xb20;
    private Float u3Xb20;
    private Float u1Va20;
    private Float u2Va20;
    private Float u3Va20;
    private Float i1Xb20;
    private Float i2Xb20;
    private Float i3Xb20;
    private Float i1Va20;
    private Float i2Va20;
    private Float i3Va20;
    private Float u1Xb21;
    private Float u2Xb21;
    private Float u3Xb21;
    private Float u1Va21;
    private Float u2Va21;
    private Float u3Va21;
    private Float i1Xb21;
    private Float i2Xb21;
    private Float i3Xb21;
    private Float i1Va21;
    private Float i2Va21;
    private Float i3Va21;
    private Float u1Xb22;
    private Float u2Xb22;
    private Float u3Xb22;
    private Float u1Va22;
    private Float u2Va22;
    private Float u3Va22;
    private Float i1Xb22;
    private Float i2Xb22;
    private Float i3Xb22;
    private Float i1Va22;
    private Float i2Va22;
    private Float i3Va22;
    private Float u1Xb23;
    private Float u2Xb23;
    private Float u3Xb23;
    private Float u1Va23;
    private Float u2Va23;
    private Float u3Va23;
    private Float i1Xb23;
    private Float i2Xb23;
    private Float i3Xb23;
    private Float i1Va23;
    private Float i2Va23;
    private Float i3Va23;
    private Float u1Xb24;
    private Float u2Xb24;
    private Float u3Xb24;
    private Float u1Va24;
    private Float u2Va24;
    private Float u3Va24;
    private Float i1Xb24;
    private Float i2Xb24;
    private Float i3Xb24;
    private Float i1Va24;
    private Float i2Va24;
    private Float i3Va24;
    private Float u1Xb25;
    private Float u2Xb25;
    private Float u3Xb25;
    private Float u1Va25;
    private Float u2Va25;
    private Float u3Va25;
    private Float i1Xb25;
    private Float i2Xb25;
    private Float i3Xb25;
    private Float i1Va25;
    private Float i2Va25;
    private Float i3Va25;
    private Float u1Xb26;
    private Float u2Xb26;
    private Float u3Xb26;
    private Float u1Va26;
    private Float u2Va26;
    private Float u3Va26;
    private Float i1Xb26;
    private Float i2Xb26;
    private Float i3Xb26;
    private Float i1Va26;
    private Float i2Va26;
    private Float i3Va26;
    private Float u1Xb27;
    private Float u2Xb27;
    private Float u3Xb27;
    private Float u1Va27;
    private Float u2Va27;
    private Float u3Va27;
    private Float i1Xb27;
    private Float i2Xb27;
    private Float i3Xb27;
    private Float i1Va27;
    private Float i2Va27;
    private Float i3Va27;
    private Float u1Xb28;
    private Float u2Xb28;
    private Float u3Xb28;
    private Float u1Va28;
    private Float u2Va28;
    private Float u3Va28;
    private Float i1Xb28;
    private Float i2Xb28;
    private Float i3Xb28;
    private Float i1Va28;
    private Float i2Va28;
    private Float i3Va28;
    private Float u1Xb29;
    private Float u2Xb29;
    private Float u3Xb29;
    private Float u1Va29;
    private Float u2Va29;
    private Float u3Va29;
    private Float i1Xb29;
    private Float i2Xb29;
    private Float i3Xb29;
    private Float i1Va29;
    private Float i2Va29;
    private Float i3Va29;
    private Float u1Xb30;
    private Float u2Xb30;
    private Float u3Xb30;
    private Float u1Va30;
    private Float u2Va30;
    private Float u3Va30;
    private Float i1Xb30;
    private Float i2Xb30;
    private Float i3Xb30;
    private Float i1Va30;
    private Float i2Va30;
    private Float i3Va30;
    private Float u1Xb31;
    private Float u2Xb31;
    private Float u3Xb31;
    private Float u1Va31;
    private Float u2Va31;
    private Float u3Va31;
    private Float i1Xb31;
    private Float i2Xb31;
    private Float i3Xb31;
    private Float i1Va31;
    private Float i2Va31;
    private Float i3Va31;
    private Float u1Xb32;
    private Float u2Xb32;
    private Float u3Xb32;
    private Float u1Va32;
    private Float u2Va32;
    private Float u3Va32;
    private Float i1Xb32;
    private Float i2Xb32;
    private Float i3Xb32;
    private Float i1Va32;
    private Float i2Va32;
    private Float i3Va32;
    private Float u1Xb33;
    private Float u2Xb33;
    private Float u3Xb33;
    private Float u1Va33;
    private Float u2Va33;
    private Float u3Va33;
    private Float i1Xb33;
    private Float i2Xb33;
    private Float i3Xb33;
    private Float i1Va33;
    private Float i2Va33;
    private Float i3Va33;
    private Float u1Xb34;
    private Float u2Xb34;
    private Float u3Xb34;
    private Float u1Va34;
    private Float u2Va34;
    private Float u3Va34;
    private Float i1Xb34;
    private Float i2Xb34;
    private Float i3Xb34;
    private Float i1Va34;
    private Float i2Va34;
    private Float i3Va34;
    private Float u1Xb35;
    private Float u2Xb35;
    private Float u3Xb35;
    private Float u1Va35;
    private Float u2Va35;
    private Float u3Va35;
    private Float i1Xb35;
    private Float i2Xb35;
    private Float i3Xb35;
    private Float i1Va35;
    private Float i2Va35;
    private Float i3Va35;
    private Float u1Xb36;
    private Float u2Xb36;
    private Float u3Xb36;
    private Float u1Va36;
    private Float u2Va36;
    private Float u3Va36;
    private Float i1Xb36;
    private Float i2Xb36;
    private Float i3Xb36;
    private Float i1Va36;
    private Float i2Va36;
    private Float i3Va36;
    private Float u1Xb37;
    private Float u2Xb37;
    private Float u3Xb37;
    private Float u1Va37;
    private Float u2Va37;
    private Float u3Va37;
    private Float i1Xb37;
    private Float i2Xb37;
    private Float i3Xb37;
    private Float i1Va37;
    private Float i2Va37;
    private Float i3Va37;
    private Float u1Xb38;
    private Float u2Xb38;
    private Float u3Xb38;
    private Float u1Va38;
    private Float u2Va38;
    private Float u3Va38;
    private Float i1Xb38;
    private Float i2Xb38;
    private Float i3Xb38;
    private Float i1Va38;
    private Float i2Va38;
    private Float i3Va38;
    private Float u1Xb39;
    private Float u2Xb39;
    private Float u3Xb39;
    private Float u1Va39;
    private Float u2Va39;
    private Float u3Va39;
    private Float i1Xb39;
    private Float i2Xb39;
    private Float i3Xb39;
    private Float i1Va39;
    private Float i2Va39;
    private Float i3Va39;
    private Float u1Xb40;
    private Float u2Xb40;
    private Float u3Xb40;
    private Float u1Va40;
    private Float u2Va40;
    private Float u3Va40;
    private Float i1Xb40;
    private Float i2Xb40;
    private Float i3Xb40;
    private Float i1Va40;
    private Float i2Va40;
    private Float i3Va40;
    private Float u1Xb41;
    private Float u2Xb41;
    private Float u3Xb41;
    private Float u1Va41;
    private Float u2Va41;
    private Float u3Va41;
    private Float i1Xb41;
    private Float i2Xb41;
    private Float i3Xb41;
    private Float i1Va41;
    private Float i2Va41;
    private Float i3Va41;
    private Float u1Xb42;
    private Float u2Xb42;
    private Float u3Xb42;
    private Float u1Va42;
    private Float u2Va42;
    private Float u3Va42;
    private Float i1Xb42;
    private Float i2Xb42;
    private Float i3Xb42;
    private Float i1Va42;
    private Float i2Va42;
    private Float i3Va42;
    private Float u1Xb43;
    private Float u2Xb43;
    private Float u3Xb43;
    private Float u1Va43;
    private Float u2Va43;
    private Float u3Va43;
    private Float i1Xb43;
    private Float i2Xb43;
    private Float i3Xb43;
    private Float i1Va43;
    private Float i2Va43;
    private Float i3Va43;
    private Float u1Xb44;
    private Float u2Xb44;
    private Float u3Xb44;
    private Float u1Va44;
    private Float u2Va44;
    private Float u3Va44;
    private Float i1Xb44;
    private Float i2Xb44;
    private Float i3Xb44;
    private Float i1Va44;
    private Float i2Va44;
    private Float i3Va44;
    private Float u1Xb45;
    private Float u2Xb45;
    private Float u3Xb45;
    private Float u1Va45;
    private Float u2Va45;
    private Float u3Va45;
    private Float i1Xb45;
    private Float i2Xb45;
    private Float i3Xb45;
    private Float i1Va45;
    private Float i2Va45;
    private Float i3Va45;
    private Float u1Xb46;
    private Float u2Xb46;
    private Float u3Xb46;
    private Float u1Va46;
    private Float u2Va46;
    private Float u3Va46;
    private Float i1Xb46;
    private Float i2Xb46;
    private Float i3Xb46;
    private Float i1Va46;
    private Float i2Va46;
    private Float i3Va46;
    private Float u1Xb47;
    private Float u2Xb47;
    private Float u3Xb47;
    private Float u1Va47;
    private Float u2Va47;
    private Float u3Va47;
    private Float i1Xb47;
    private Float i2Xb47;
    private Float i3Xb47;
    private Float i1Va47;
    private Float i2Va47;
    private Float i3Va47;
    private Float u1Xb48;
    private Float u2Xb48;
    private Float u3Xb48;
    private Float u1Va48;
    private Float u2Va48;
    private Float u3Va48;
    private Float i1Xb48;
    private Float i2Xb48;
    private Float i3Xb48;
    private Float i1Va48;
    private Float i2Va48;
    private Float i3Va48;
    private Float u1Xb49;
    private Float u2Xb49;
    private Float u3Xb49;
    private Float u1Va49;
    private Float u2Va49;
    private Float u3Va49;
    private Float i1Xb49;
    private Float i2Xb49;
    private Float i3Xb49;
    private Float i1Va49;
    private Float i2Va49;
    private Float i3Va49;
    private Float u1Xb50;
    private Float u2Xb50;
    private Float u3Xb50;
    private Float u1Va50;
    private Float u2Va50;
    private Float u3Va50;
    private Float i1Xb50;
    private Float i2Xb50;
    private Float i3Xb50;
    private Float i1Va50;
    private Float i2Va50;
    private Float i3Va50;

    @Id
    @Column(name = "xbid", nullable = false)
    public int getXbid() {
        return xbid;
    }

    public void setXbid(int xbid) {
        this.xbid = xbid;
    }

    @Basic
    @Column(name = "mpid", nullable = true)
    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
    }

    @Basic
    @Column(name = "time", nullable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "U1xb_1", nullable = true, precision = 2)
    public Float getU1Xb1() {
        return u1Xb1;
    }

    public void setU1Xb1(Float u1Xb1) {
        this.u1Xb1 = u1Xb1;
    }

    @Basic
    @Column(name = "U2xb_1", nullable = true, precision = 2)
    public Float getU2Xb1() {
        return u2Xb1;
    }

    public void setU2Xb1(Float u2Xb1) {
        this.u2Xb1 = u2Xb1;
    }

    @Basic
    @Column(name = "U3xb_1", nullable = true, precision = 2)
    public Float getU3Xb1() {
        return u3Xb1;
    }

    public void setU3Xb1(Float u3Xb1) {
        this.u3Xb1 = u3Xb1;
    }

    @Basic
    @Column(name = "U1va_1", nullable = true, precision = 2)
    public Float getU1Va1() {
        return u1Va1;
    }

    public void setU1Va1(Float u1Va1) {
        this.u1Va1 = u1Va1;
    }

    @Basic
    @Column(name = "U2va_1", nullable = true, precision = 2)
    public Float getU2Va1() {
        return u2Va1;
    }

    public void setU2Va1(Float u2Va1) {
        this.u2Va1 = u2Va1;
    }

    @Basic
    @Column(name = "U3va_1", nullable = true, precision = 2)
    public Float getU3Va1() {
        return u3Va1;
    }

    public void setU3Va1(Float u3Va1) {
        this.u3Va1 = u3Va1;
    }

    @Basic
    @Column(name = "I1xb_1", nullable = true, precision = 2)
    public Float getI1Xb1() {
        return i1Xb1;
    }

    public void setI1Xb1(Float i1Xb1) {
        this.i1Xb1 = i1Xb1;
    }

    @Basic
    @Column(name = "I2xb_1", nullable = true, precision = 2)
    public Float getI2Xb1() {
        return i2Xb1;
    }

    public void setI2Xb1(Float i2Xb1) {
        this.i2Xb1 = i2Xb1;
    }

    @Basic
    @Column(name = "I3xb_1", nullable = true, precision = 2)
    public Float getI3Xb1() {
        return i3Xb1;
    }

    public void setI3Xb1(Float i3Xb1) {
        this.i3Xb1 = i3Xb1;
    }

    @Basic
    @Column(name = "I1va_1", nullable = true, precision = 2)
    public Float getI1Va1() {
        return i1Va1;
    }

    public void setI1Va1(Float i1Va1) {
        this.i1Va1 = i1Va1;
    }

    @Basic
    @Column(name = "I2va_1", nullable = true, precision = 2)
    public Float getI2Va1() {
        return i2Va1;
    }

    public void setI2Va1(Float i2Va1) {
        this.i2Va1 = i2Va1;
    }

    @Basic
    @Column(name = "I3va_1", nullable = true, precision = 2)
    public Float getI3Va1() {
        return i3Va1;
    }

    public void setI3Va1(Float i3Va1) {
        this.i3Va1 = i3Va1;
    }

    @Basic
    @Column(name = "U1xb_2", nullable = true, precision = 2)
    public Float getU1Xb2() {
        return u1Xb2;
    }

    public void setU1Xb2(Float u1Xb2) {
        this.u1Xb2 = u1Xb2;
    }

    @Basic
    @Column(name = "U2xb_2", nullable = true, precision = 2)
    public Float getU2Xb2() {
        return u2Xb2;
    }

    public void setU2Xb2(Float u2Xb2) {
        this.u2Xb2 = u2Xb2;
    }

    @Basic
    @Column(name = "U3xb_2", nullable = true, precision = 2)
    public Float getU3Xb2() {
        return u3Xb2;
    }

    public void setU3Xb2(Float u3Xb2) {
        this.u3Xb2 = u3Xb2;
    }

    @Basic
    @Column(name = "U1va_2", nullable = true, precision = 2)
    public Float getU1Va2() {
        return u1Va2;
    }

    public void setU1Va2(Float u1Va2) {
        this.u1Va2 = u1Va2;
    }

    @Basic
    @Column(name = "U2va_2", nullable = true, precision = 2)
    public Float getU2Va2() {
        return u2Va2;
    }

    public void setU2Va2(Float u2Va2) {
        this.u2Va2 = u2Va2;
    }

    @Basic
    @Column(name = "U3va_2", nullable = true, precision = 2)
    public Float getU3Va2() {
        return u3Va2;
    }

    public void setU3Va2(Float u3Va2) {
        this.u3Va2 = u3Va2;
    }

    @Basic
    @Column(name = "I1xb_2", nullable = true, precision = 2)
    public Float getI1Xb2() {
        return i1Xb2;
    }

    public void setI1Xb2(Float i1Xb2) {
        this.i1Xb2 = i1Xb2;
    }

    @Basic
    @Column(name = "I2xb_2", nullable = true, precision = 2)
    public Float getI2Xb2() {
        return i2Xb2;
    }

    public void setI2Xb2(Float i2Xb2) {
        this.i2Xb2 = i2Xb2;
    }

    @Basic
    @Column(name = "I3xb_2", nullable = true, precision = 2)
    public Float getI3Xb2() {
        return i3Xb2;
    }

    public void setI3Xb2(Float i3Xb2) {
        this.i3Xb2 = i3Xb2;
    }

    @Basic
    @Column(name = "I1va_2", nullable = true, precision = 2)
    public Float getI1Va2() {
        return i1Va2;
    }

    public void setI1Va2(Float i1Va2) {
        this.i1Va2 = i1Va2;
    }

    @Basic
    @Column(name = "I2va_2", nullable = true, precision = 2)
    public Float getI2Va2() {
        return i2Va2;
    }

    public void setI2Va2(Float i2Va2) {
        this.i2Va2 = i2Va2;
    }

    @Basic
    @Column(name = "I3va_2", nullable = true, precision = 2)
    public Float getI3Va2() {
        return i3Va2;
    }

    public void setI3Va2(Float i3Va2) {
        this.i3Va2 = i3Va2;
    }

    @Basic
    @Column(name = "U1xb_3", nullable = true, precision = 2)
    public Float getU1Xb3() {
        return u1Xb3;
    }

    public void setU1Xb3(Float u1Xb3) {
        this.u1Xb3 = u1Xb3;
    }

    @Basic
    @Column(name = "U2xb_3", nullable = true, precision = 2)
    public Float getU2Xb3() {
        return u2Xb3;
    }

    public void setU2Xb3(Float u2Xb3) {
        this.u2Xb3 = u2Xb3;
    }

    @Basic
    @Column(name = "U3xb_3", nullable = true, precision = 2)
    public Float getU3Xb3() {
        return u3Xb3;
    }

    public void setU3Xb3(Float u3Xb3) {
        this.u3Xb3 = u3Xb3;
    }

    @Basic
    @Column(name = "U1va_3", nullable = true, precision = 2)
    public Float getU1Va3() {
        return u1Va3;
    }

    public void setU1Va3(Float u1Va3) {
        this.u1Va3 = u1Va3;
    }

    @Basic
    @Column(name = "U2va_3", nullable = true, precision = 2)
    public Float getU2Va3() {
        return u2Va3;
    }

    public void setU2Va3(Float u2Va3) {
        this.u2Va3 = u2Va3;
    }

    @Basic
    @Column(name = "U3va_3", nullable = true, precision = 2)
    public Float getU3Va3() {
        return u3Va3;
    }

    public void setU3Va3(Float u3Va3) {
        this.u3Va3 = u3Va3;
    }

    @Basic
    @Column(name = "I1xb_3", nullable = true, precision = 2)
    public Float getI1Xb3() {
        return i1Xb3;
    }

    public void setI1Xb3(Float i1Xb3) {
        this.i1Xb3 = i1Xb3;
    }

    @Basic
    @Column(name = "I2xb_3", nullable = true, precision = 2)
    public Float getI2Xb3() {
        return i2Xb3;
    }

    public void setI2Xb3(Float i2Xb3) {
        this.i2Xb3 = i2Xb3;
    }

    @Basic
    @Column(name = "I3xb_3", nullable = true, precision = 2)
    public Float getI3Xb3() {
        return i3Xb3;
    }

    public void setI3Xb3(Float i3Xb3) {
        this.i3Xb3 = i3Xb3;
    }

    @Basic
    @Column(name = "I1va_3", nullable = true, precision = 2)
    public Float getI1Va3() {
        return i1Va3;
    }

    public void setI1Va3(Float i1Va3) {
        this.i1Va3 = i1Va3;
    }

    @Basic
    @Column(name = "I2va_3", nullable = true, precision = 2)
    public Float getI2Va3() {
        return i2Va3;
    }

    public void setI2Va3(Float i2Va3) {
        this.i2Va3 = i2Va3;
    }

    @Basic
    @Column(name = "I3va_3", nullable = true, precision = 2)
    public Float getI3Va3() {
        return i3Va3;
    }

    public void setI3Va3(Float i3Va3) {
        this.i3Va3 = i3Va3;
    }

    @Basic
    @Column(name = "U1xb_4", nullable = true, precision = 2)
    public Float getU1Xb4() {
        return u1Xb4;
    }

    public void setU1Xb4(Float u1Xb4) {
        this.u1Xb4 = u1Xb4;
    }

    @Basic
    @Column(name = "U2xb_4", nullable = true, precision = 2)
    public Float getU2Xb4() {
        return u2Xb4;
    }

    public void setU2Xb4(Float u2Xb4) {
        this.u2Xb4 = u2Xb4;
    }

    @Basic
    @Column(name = "U3xb_4", nullable = true, precision = 2)
    public Float getU3Xb4() {
        return u3Xb4;
    }

    public void setU3Xb4(Float u3Xb4) {
        this.u3Xb4 = u3Xb4;
    }

    @Basic
    @Column(name = "U1va_4", nullable = true, precision = 2)
    public Float getU1Va4() {
        return u1Va4;
    }

    public void setU1Va4(Float u1Va4) {
        this.u1Va4 = u1Va4;
    }

    @Basic
    @Column(name = "U2va_4", nullable = true, precision = 2)
    public Float getU2Va4() {
        return u2Va4;
    }

    public void setU2Va4(Float u2Va4) {
        this.u2Va4 = u2Va4;
    }

    @Basic
    @Column(name = "U3va_4", nullable = true, precision = 2)
    public Float getU3Va4() {
        return u3Va4;
    }

    public void setU3Va4(Float u3Va4) {
        this.u3Va4 = u3Va4;
    }

    @Basic
    @Column(name = "I1xb_4", nullable = true, precision = 2)
    public Float getI1Xb4() {
        return i1Xb4;
    }

    public void setI1Xb4(Float i1Xb4) {
        this.i1Xb4 = i1Xb4;
    }

    @Basic
    @Column(name = "I2xb_4", nullable = true, precision = 2)
    public Float getI2Xb4() {
        return i2Xb4;
    }

    public void setI2Xb4(Float i2Xb4) {
        this.i2Xb4 = i2Xb4;
    }

    @Basic
    @Column(name = "I3xb_4", nullable = true, precision = 2)
    public Float getI3Xb4() {
        return i3Xb4;
    }

    public void setI3Xb4(Float i3Xb4) {
        this.i3Xb4 = i3Xb4;
    }

    @Basic
    @Column(name = "I1va_4", nullable = true, precision = 2)
    public Float getI1Va4() {
        return i1Va4;
    }

    public void setI1Va4(Float i1Va4) {
        this.i1Va4 = i1Va4;
    }

    @Basic
    @Column(name = "I2va_4", nullable = true, precision = 2)
    public Float getI2Va4() {
        return i2Va4;
    }

    public void setI2Va4(Float i2Va4) {
        this.i2Va4 = i2Va4;
    }

    @Basic
    @Column(name = "I3va_4", nullable = true, precision = 2)
    public Float getI3Va4() {
        return i3Va4;
    }

    public void setI3Va4(Float i3Va4) {
        this.i3Va4 = i3Va4;
    }

    @Basic
    @Column(name = "U1xb_5", nullable = true, precision = 2)
    public Float getU1Xb5() {
        return u1Xb5;
    }

    public void setU1Xb5(Float u1Xb5) {
        this.u1Xb5 = u1Xb5;
    }

    @Basic
    @Column(name = "U2xb_5", nullable = true, precision = 2)
    public Float getU2Xb5() {
        return u2Xb5;
    }

    public void setU2Xb5(Float u2Xb5) {
        this.u2Xb5 = u2Xb5;
    }

    @Basic
    @Column(name = "U3xb_5", nullable = true, precision = 2)
    public Float getU3Xb5() {
        return u3Xb5;
    }

    public void setU3Xb5(Float u3Xb5) {
        this.u3Xb5 = u3Xb5;
    }

    @Basic
    @Column(name = "U1va_5", nullable = true, precision = 2)
    public Float getU1Va5() {
        return u1Va5;
    }

    public void setU1Va5(Float u1Va5) {
        this.u1Va5 = u1Va5;
    }

    @Basic
    @Column(name = "U2va_5", nullable = true, precision = 2)
    public Float getU2Va5() {
        return u2Va5;
    }

    public void setU2Va5(Float u2Va5) {
        this.u2Va5 = u2Va5;
    }

    @Basic
    @Column(name = "U3va_5", nullable = true, precision = 2)
    public Float getU3Va5() {
        return u3Va5;
    }

    public void setU3Va5(Float u3Va5) {
        this.u3Va5 = u3Va5;
    }

    @Basic
    @Column(name = "I1xb_5", nullable = true, precision = 2)
    public Float getI1Xb5() {
        return i1Xb5;
    }

    public void setI1Xb5(Float i1Xb5) {
        this.i1Xb5 = i1Xb5;
    }

    @Basic
    @Column(name = "I2xb_5", nullable = true, precision = 2)
    public Float getI2Xb5() {
        return i2Xb5;
    }

    public void setI2Xb5(Float i2Xb5) {
        this.i2Xb5 = i2Xb5;
    }

    @Basic
    @Column(name = "I3xb_5", nullable = true, precision = 2)
    public Float getI3Xb5() {
        return i3Xb5;
    }

    public void setI3Xb5(Float i3Xb5) {
        this.i3Xb5 = i3Xb5;
    }

    @Basic
    @Column(name = "I1va_5", nullable = true, precision = 2)
    public Float getI1Va5() {
        return i1Va5;
    }

    public void setI1Va5(Float i1Va5) {
        this.i1Va5 = i1Va5;
    }

    @Basic
    @Column(name = "I2va_5", nullable = true, precision = 2)
    public Float getI2Va5() {
        return i2Va5;
    }

    public void setI2Va5(Float i2Va5) {
        this.i2Va5 = i2Va5;
    }

    @Basic
    @Column(name = "I3va_5", nullable = true, precision = 2)
    public Float getI3Va5() {
        return i3Va5;
    }

    public void setI3Va5(Float i3Va5) {
        this.i3Va5 = i3Va5;
    }

    @Basic
    @Column(name = "U1xb_6", nullable = true, precision = 2)
    public Float getU1Xb6() {
        return u1Xb6;
    }

    public void setU1Xb6(Float u1Xb6) {
        this.u1Xb6 = u1Xb6;
    }

    @Basic
    @Column(name = "U2xb_6", nullable = true, precision = 2)
    public Float getU2Xb6() {
        return u2Xb6;
    }

    public void setU2Xb6(Float u2Xb6) {
        this.u2Xb6 = u2Xb6;
    }

    @Basic
    @Column(name = "U3xb_6", nullable = true, precision = 2)
    public Float getU3Xb6() {
        return u3Xb6;
    }

    public void setU3Xb6(Float u3Xb6) {
        this.u3Xb6 = u3Xb6;
    }

    @Basic
    @Column(name = "U1va_6", nullable = true, precision = 2)
    public Float getU1Va6() {
        return u1Va6;
    }

    public void setU1Va6(Float u1Va6) {
        this.u1Va6 = u1Va6;
    }

    @Basic
    @Column(name = "U2va_6", nullable = true, precision = 2)
    public Float getU2Va6() {
        return u2Va6;
    }

    public void setU2Va6(Float u2Va6) {
        this.u2Va6 = u2Va6;
    }

    @Basic
    @Column(name = "U3va_6", nullable = true, precision = 2)
    public Float getU3Va6() {
        return u3Va6;
    }

    public void setU3Va6(Float u3Va6) {
        this.u3Va6 = u3Va6;
    }

    @Basic
    @Column(name = "I1xb_6", nullable = true, precision = 2)
    public Float getI1Xb6() {
        return i1Xb6;
    }

    public void setI1Xb6(Float i1Xb6) {
        this.i1Xb6 = i1Xb6;
    }

    @Basic
    @Column(name = "I2xb_6", nullable = true, precision = 2)
    public Float getI2Xb6() {
        return i2Xb6;
    }

    public void setI2Xb6(Float i2Xb6) {
        this.i2Xb6 = i2Xb6;
    }

    @Basic
    @Column(name = "I3xb_6", nullable = true, precision = 2)
    public Float getI3Xb6() {
        return i3Xb6;
    }

    public void setI3Xb6(Float i3Xb6) {
        this.i3Xb6 = i3Xb6;
    }

    @Basic
    @Column(name = "I1va_6", nullable = true, precision = 2)
    public Float getI1Va6() {
        return i1Va6;
    }

    public void setI1Va6(Float i1Va6) {
        this.i1Va6 = i1Va6;
    }

    @Basic
    @Column(name = "I2va_6", nullable = true, precision = 2)
    public Float getI2Va6() {
        return i2Va6;
    }

    public void setI2Va6(Float i2Va6) {
        this.i2Va6 = i2Va6;
    }

    @Basic
    @Column(name = "I3va_6", nullable = true, precision = 2)
    public Float getI3Va6() {
        return i3Va6;
    }

    public void setI3Va6(Float i3Va6) {
        this.i3Va6 = i3Va6;
    }

    @Basic
    @Column(name = "U1xb_7", nullable = true, precision = 2)
    public Float getU1Xb7() {
        return u1Xb7;
    }

    public void setU1Xb7(Float u1Xb7) {
        this.u1Xb7 = u1Xb7;
    }

    @Basic
    @Column(name = "U2xb_7", nullable = true, precision = 2)
    public Float getU2Xb7() {
        return u2Xb7;
    }

    public void setU2Xb7(Float u2Xb7) {
        this.u2Xb7 = u2Xb7;
    }

    @Basic
    @Column(name = "U3xb_7", nullable = true, precision = 2)
    public Float getU3Xb7() {
        return u3Xb7;
    }

    public void setU3Xb7(Float u3Xb7) {
        this.u3Xb7 = u3Xb7;
    }

    @Basic
    @Column(name = "U1va_7", nullable = true, precision = 2)
    public Float getU1Va7() {
        return u1Va7;
    }

    public void setU1Va7(Float u1Va7) {
        this.u1Va7 = u1Va7;
    }

    @Basic
    @Column(name = "U2va_7", nullable = true, precision = 2)
    public Float getU2Va7() {
        return u2Va7;
    }

    public void setU2Va7(Float u2Va7) {
        this.u2Va7 = u2Va7;
    }

    @Basic
    @Column(name = "U3va_7", nullable = true, precision = 2)
    public Float getU3Va7() {
        return u3Va7;
    }

    public void setU3Va7(Float u3Va7) {
        this.u3Va7 = u3Va7;
    }

    @Basic
    @Column(name = "I1xb_7", nullable = true, precision = 2)
    public Float getI1Xb7() {
        return i1Xb7;
    }

    public void setI1Xb7(Float i1Xb7) {
        this.i1Xb7 = i1Xb7;
    }

    @Basic
    @Column(name = "I2xb_7", nullable = true, precision = 2)
    public Float getI2Xb7() {
        return i2Xb7;
    }

    public void setI2Xb7(Float i2Xb7) {
        this.i2Xb7 = i2Xb7;
    }

    @Basic
    @Column(name = "I3xb_7", nullable = true, precision = 2)
    public Float getI3Xb7() {
        return i3Xb7;
    }

    public void setI3Xb7(Float i3Xb7) {
        this.i3Xb7 = i3Xb7;
    }

    @Basic
    @Column(name = "I1va_7", nullable = true, precision = 2)
    public Float getI1Va7() {
        return i1Va7;
    }

    public void setI1Va7(Float i1Va7) {
        this.i1Va7 = i1Va7;
    }

    @Basic
    @Column(name = "I2va_7", nullable = true, precision = 2)
    public Float getI2Va7() {
        return i2Va7;
    }

    public void setI2Va7(Float i2Va7) {
        this.i2Va7 = i2Va7;
    }

    @Basic
    @Column(name = "I3va_7", nullable = true, precision = 2)
    public Float getI3Va7() {
        return i3Va7;
    }

    public void setI3Va7(Float i3Va7) {
        this.i3Va7 = i3Va7;
    }

    @Basic
    @Column(name = "U1xb_8", nullable = true, precision = 2)
    public Float getU1Xb8() {
        return u1Xb8;
    }

    public void setU1Xb8(Float u1Xb8) {
        this.u1Xb8 = u1Xb8;
    }

    @Basic
    @Column(name = "U2xb_8", nullable = true, precision = 2)
    public Float getU2Xb8() {
        return u2Xb8;
    }

    public void setU2Xb8(Float u2Xb8) {
        this.u2Xb8 = u2Xb8;
    }

    @Basic
    @Column(name = "U3xb_8", nullable = true, precision = 2)
    public Float getU3Xb8() {
        return u3Xb8;
    }

    public void setU3Xb8(Float u3Xb8) {
        this.u3Xb8 = u3Xb8;
    }

    @Basic
    @Column(name = "U1va_8", nullable = true, precision = 2)
    public Float getU1Va8() {
        return u1Va8;
    }

    public void setU1Va8(Float u1Va8) {
        this.u1Va8 = u1Va8;
    }

    @Basic
    @Column(name = "U2va_8", nullable = true, precision = 2)
    public Float getU2Va8() {
        return u2Va8;
    }

    public void setU2Va8(Float u2Va8) {
        this.u2Va8 = u2Va8;
    }

    @Basic
    @Column(name = "U3va_8", nullable = true, precision = 2)
    public Float getU3Va8() {
        return u3Va8;
    }

    public void setU3Va8(Float u3Va8) {
        this.u3Va8 = u3Va8;
    }

    @Basic
    @Column(name = "I1xb_8", nullable = true, precision = 2)
    public Float getI1Xb8() {
        return i1Xb8;
    }

    public void setI1Xb8(Float i1Xb8) {
        this.i1Xb8 = i1Xb8;
    }

    @Basic
    @Column(name = "I2xb_8", nullable = true, precision = 2)
    public Float getI2Xb8() {
        return i2Xb8;
    }

    public void setI2Xb8(Float i2Xb8) {
        this.i2Xb8 = i2Xb8;
    }

    @Basic
    @Column(name = "I3xb_8", nullable = true, precision = 2)
    public Float getI3Xb8() {
        return i3Xb8;
    }

    public void setI3Xb8(Float i3Xb8) {
        this.i3Xb8 = i3Xb8;
    }

    @Basic
    @Column(name = "I1va_8", nullable = true, precision = 2)
    public Float getI1Va8() {
        return i1Va8;
    }

    public void setI1Va8(Float i1Va8) {
        this.i1Va8 = i1Va8;
    }

    @Basic
    @Column(name = "I2va_8", nullable = true, precision = 2)
    public Float getI2Va8() {
        return i2Va8;
    }

    public void setI2Va8(Float i2Va8) {
        this.i2Va8 = i2Va8;
    }

    @Basic
    @Column(name = "I3va_8", nullable = true, precision = 2)
    public Float getI3Va8() {
        return i3Va8;
    }

    public void setI3Va8(Float i3Va8) {
        this.i3Va8 = i3Va8;
    }

    @Basic
    @Column(name = "U1xb_9", nullable = true, precision = 2)
    public Float getU1Xb9() {
        return u1Xb9;
    }

    public void setU1Xb9(Float u1Xb9) {
        this.u1Xb9 = u1Xb9;
    }

    @Basic
    @Column(name = "U2xb_9", nullable = true, precision = 2)
    public Float getU2Xb9() {
        return u2Xb9;
    }

    public void setU2Xb9(Float u2Xb9) {
        this.u2Xb9 = u2Xb9;
    }

    @Basic
    @Column(name = "U3xb_9", nullable = true, precision = 2)
    public Float getU3Xb9() {
        return u3Xb9;
    }

    public void setU3Xb9(Float u3Xb9) {
        this.u3Xb9 = u3Xb9;
    }

    @Basic
    @Column(name = "U1va_9", nullable = true, precision = 2)
    public Float getU1Va9() {
        return u1Va9;
    }

    public void setU1Va9(Float u1Va9) {
        this.u1Va9 = u1Va9;
    }

    @Basic
    @Column(name = "U2va_9", nullable = true, precision = 2)
    public Float getU2Va9() {
        return u2Va9;
    }

    public void setU2Va9(Float u2Va9) {
        this.u2Va9 = u2Va9;
    }

    @Basic
    @Column(name = "U3va_9", nullable = true, precision = 2)
    public Float getU3Va9() {
        return u3Va9;
    }

    public void setU3Va9(Float u3Va9) {
        this.u3Va9 = u3Va9;
    }

    @Basic
    @Column(name = "I1xb_9", nullable = true, precision = 2)
    public Float getI1Xb9() {
        return i1Xb9;
    }

    public void setI1Xb9(Float i1Xb9) {
        this.i1Xb9 = i1Xb9;
    }

    @Basic
    @Column(name = "I2xb_9", nullable = true, precision = 2)
    public Float getI2Xb9() {
        return i2Xb9;
    }

    public void setI2Xb9(Float i2Xb9) {
        this.i2Xb9 = i2Xb9;
    }

    @Basic
    @Column(name = "I3xb_9", nullable = true, precision = 2)
    public Float getI3Xb9() {
        return i3Xb9;
    }

    public void setI3Xb9(Float i3Xb9) {
        this.i3Xb9 = i3Xb9;
    }

    @Basic
    @Column(name = "I1va_9", nullable = true, precision = 2)
    public Float getI1Va9() {
        return i1Va9;
    }

    public void setI1Va9(Float i1Va9) {
        this.i1Va9 = i1Va9;
    }

    @Basic
    @Column(name = "I2va_9", nullable = true, precision = 2)
    public Float getI2Va9() {
        return i2Va9;
    }

    public void setI2Va9(Float i2Va9) {
        this.i2Va9 = i2Va9;
    }

    @Basic
    @Column(name = "I3va_9", nullable = true, precision = 2)
    public Float getI3Va9() {
        return i3Va9;
    }

    public void setI3Va9(Float i3Va9) {
        this.i3Va9 = i3Va9;
    }

    @Basic
    @Column(name = "U1xb_10", nullable = true, precision = 2)
    public Float getU1Xb10() {
        return u1Xb10;
    }

    public void setU1Xb10(Float u1Xb10) {
        this.u1Xb10 = u1Xb10;
    }

    @Basic
    @Column(name = "U2xb_10", nullable = true, precision = 2)
    public Float getU2Xb10() {
        return u2Xb10;
    }

    public void setU2Xb10(Float u2Xb10) {
        this.u2Xb10 = u2Xb10;
    }

    @Basic
    @Column(name = "U3xb_10", nullable = true, precision = 2)
    public Float getU3Xb10() {
        return u3Xb10;
    }

    public void setU3Xb10(Float u3Xb10) {
        this.u3Xb10 = u3Xb10;
    }

    @Basic
    @Column(name = "U1va_10", nullable = true, precision = 2)
    public Float getU1Va10() {
        return u1Va10;
    }

    public void setU1Va10(Float u1Va10) {
        this.u1Va10 = u1Va10;
    }

    @Basic
    @Column(name = "U2va_10", nullable = true, precision = 2)
    public Float getU2Va10() {
        return u2Va10;
    }

    public void setU2Va10(Float u2Va10) {
        this.u2Va10 = u2Va10;
    }

    @Basic
    @Column(name = "U3va_10", nullable = true, precision = 2)
    public Float getU3Va10() {
        return u3Va10;
    }

    public void setU3Va10(Float u3Va10) {
        this.u3Va10 = u3Va10;
    }

    @Basic
    @Column(name = "I1xb_10", nullable = true, precision = 2)
    public Float getI1Xb10() {
        return i1Xb10;
    }

    public void setI1Xb10(Float i1Xb10) {
        this.i1Xb10 = i1Xb10;
    }

    @Basic
    @Column(name = "I2xb_10", nullable = true, precision = 2)
    public Float getI2Xb10() {
        return i2Xb10;
    }

    public void setI2Xb10(Float i2Xb10) {
        this.i2Xb10 = i2Xb10;
    }

    @Basic
    @Column(name = "I3xb_10", nullable = true, precision = 2)
    public Float getI3Xb10() {
        return i3Xb10;
    }

    public void setI3Xb10(Float i3Xb10) {
        this.i3Xb10 = i3Xb10;
    }

    @Basic
    @Column(name = "I1va_10", nullable = true, precision = 2)
    public Float getI1Va10() {
        return i1Va10;
    }

    public void setI1Va10(Float i1Va10) {
        this.i1Va10 = i1Va10;
    }

    @Basic
    @Column(name = "I2va_10", nullable = true, precision = 2)
    public Float getI2Va10() {
        return i2Va10;
    }

    public void setI2Va10(Float i2Va10) {
        this.i2Va10 = i2Va10;
    }

    @Basic
    @Column(name = "I3va_10", nullable = true, precision = 2)
    public Float getI3Va10() {
        return i3Va10;
    }

    public void setI3Va10(Float i3Va10) {
        this.i3Va10 = i3Va10;
    }

    @Basic
    @Column(name = "U1xb_11", nullable = true, precision = 2)
    public Float getU1Xb11() {
        return u1Xb11;
    }

    public void setU1Xb11(Float u1Xb11) {
        this.u1Xb11 = u1Xb11;
    }

    @Basic
    @Column(name = "U2xb_11", nullable = true, precision = 2)
    public Float getU2Xb11() {
        return u2Xb11;
    }

    public void setU2Xb11(Float u2Xb11) {
        this.u2Xb11 = u2Xb11;
    }

    @Basic
    @Column(name = "U3xb_11", nullable = true, precision = 2)
    public Float getU3Xb11() {
        return u3Xb11;
    }

    public void setU3Xb11(Float u3Xb11) {
        this.u3Xb11 = u3Xb11;
    }

    @Basic
    @Column(name = "U1va_11", nullable = true, precision = 2)
    public Float getU1Va11() {
        return u1Va11;
    }

    public void setU1Va11(Float u1Va11) {
        this.u1Va11 = u1Va11;
    }

    @Basic
    @Column(name = "U2va_11", nullable = true, precision = 2)
    public Float getU2Va11() {
        return u2Va11;
    }

    public void setU2Va11(Float u2Va11) {
        this.u2Va11 = u2Va11;
    }

    @Basic
    @Column(name = "U3va_11", nullable = true, precision = 2)
    public Float getU3Va11() {
        return u3Va11;
    }

    public void setU3Va11(Float u3Va11) {
        this.u3Va11 = u3Va11;
    }

    @Basic
    @Column(name = "I1xb_11", nullable = true, precision = 2)
    public Float getI1Xb11() {
        return i1Xb11;
    }

    public void setI1Xb11(Float i1Xb11) {
        this.i1Xb11 = i1Xb11;
    }

    @Basic
    @Column(name = "I2xb_11", nullable = true, precision = 2)
    public Float getI2Xb11() {
        return i2Xb11;
    }

    public void setI2Xb11(Float i2Xb11) {
        this.i2Xb11 = i2Xb11;
    }

    @Basic
    @Column(name = "I3xb_11", nullable = true, precision = 2)
    public Float getI3Xb11() {
        return i3Xb11;
    }

    public void setI3Xb11(Float i3Xb11) {
        this.i3Xb11 = i3Xb11;
    }

    @Basic
    @Column(name = "I1va_11", nullable = true, precision = 2)
    public Float getI1Va11() {
        return i1Va11;
    }

    public void setI1Va11(Float i1Va11) {
        this.i1Va11 = i1Va11;
    }

    @Basic
    @Column(name = "I2va_11", nullable = true, precision = 2)
    public Float getI2Va11() {
        return i2Va11;
    }

    public void setI2Va11(Float i2Va11) {
        this.i2Va11 = i2Va11;
    }

    @Basic
    @Column(name = "I3va_11", nullable = true, precision = 2)
    public Float getI3Va11() {
        return i3Va11;
    }

    public void setI3Va11(Float i3Va11) {
        this.i3Va11 = i3Va11;
    }

    @Basic
    @Column(name = "U1xb_12", nullable = true, precision = 2)
    public Float getU1Xb12() {
        return u1Xb12;
    }

    public void setU1Xb12(Float u1Xb12) {
        this.u1Xb12 = u1Xb12;
    }

    @Basic
    @Column(name = "U2xb_12", nullable = true, precision = 2)
    public Float getU2Xb12() {
        return u2Xb12;
    }

    public void setU2Xb12(Float u2Xb12) {
        this.u2Xb12 = u2Xb12;
    }

    @Basic
    @Column(name = "U3xb_12", nullable = true, precision = 2)
    public Float getU3Xb12() {
        return u3Xb12;
    }

    public void setU3Xb12(Float u3Xb12) {
        this.u3Xb12 = u3Xb12;
    }

    @Basic
    @Column(name = "U1va_12", nullable = true, precision = 2)
    public Float getU1Va12() {
        return u1Va12;
    }

    public void setU1Va12(Float u1Va12) {
        this.u1Va12 = u1Va12;
    }

    @Basic
    @Column(name = "U2va_12", nullable = true, precision = 2)
    public Float getU2Va12() {
        return u2Va12;
    }

    public void setU2Va12(Float u2Va12) {
        this.u2Va12 = u2Va12;
    }

    @Basic
    @Column(name = "U3va_12", nullable = true, precision = 2)
    public Float getU3Va12() {
        return u3Va12;
    }

    public void setU3Va12(Float u3Va12) {
        this.u3Va12 = u3Va12;
    }

    @Basic
    @Column(name = "I1xb_12", nullable = true, precision = 2)
    public Float getI1Xb12() {
        return i1Xb12;
    }

    public void setI1Xb12(Float i1Xb12) {
        this.i1Xb12 = i1Xb12;
    }

    @Basic
    @Column(name = "I2xb_12", nullable = true, precision = 2)
    public Float getI2Xb12() {
        return i2Xb12;
    }

    public void setI2Xb12(Float i2Xb12) {
        this.i2Xb12 = i2Xb12;
    }

    @Basic
    @Column(name = "I3xb_12", nullable = true, precision = 2)
    public Float getI3Xb12() {
        return i3Xb12;
    }

    public void setI3Xb12(Float i3Xb12) {
        this.i3Xb12 = i3Xb12;
    }

    @Basic
    @Column(name = "I1va_12", nullable = true, precision = 2)
    public Float getI1Va12() {
        return i1Va12;
    }

    public void setI1Va12(Float i1Va12) {
        this.i1Va12 = i1Va12;
    }

    @Basic
    @Column(name = "I2va_12", nullable = true, precision = 2)
    public Float getI2Va12() {
        return i2Va12;
    }

    public void setI2Va12(Float i2Va12) {
        this.i2Va12 = i2Va12;
    }

    @Basic
    @Column(name = "I3va_12", nullable = true, precision = 2)
    public Float getI3Va12() {
        return i3Va12;
    }

    public void setI3Va12(Float i3Va12) {
        this.i3Va12 = i3Va12;
    }

    @Basic
    @Column(name = "U1xb_13", nullable = true, precision = 2)
    public Float getU1Xb13() {
        return u1Xb13;
    }

    public void setU1Xb13(Float u1Xb13) {
        this.u1Xb13 = u1Xb13;
    }

    @Basic
    @Column(name = "U2xb_13", nullable = true, precision = 2)
    public Float getU2Xb13() {
        return u2Xb13;
    }

    public void setU2Xb13(Float u2Xb13) {
        this.u2Xb13 = u2Xb13;
    }

    @Basic
    @Column(name = "U3xb_13", nullable = true, precision = 2)
    public Float getU3Xb13() {
        return u3Xb13;
    }

    public void setU3Xb13(Float u3Xb13) {
        this.u3Xb13 = u3Xb13;
    }

    @Basic
    @Column(name = "U1va_13", nullable = true, precision = 2)
    public Float getU1Va13() {
        return u1Va13;
    }

    public void setU1Va13(Float u1Va13) {
        this.u1Va13 = u1Va13;
    }

    @Basic
    @Column(name = "U2va_13", nullable = true, precision = 2)
    public Float getU2Va13() {
        return u2Va13;
    }

    public void setU2Va13(Float u2Va13) {
        this.u2Va13 = u2Va13;
    }

    @Basic
    @Column(name = "U3va_13", nullable = true, precision = 2)
    public Float getU3Va13() {
        return u3Va13;
    }

    public void setU3Va13(Float u3Va13) {
        this.u3Va13 = u3Va13;
    }

    @Basic
    @Column(name = "I1xb_13", nullable = true, precision = 2)
    public Float getI1Xb13() {
        return i1Xb13;
    }

    public void setI1Xb13(Float i1Xb13) {
        this.i1Xb13 = i1Xb13;
    }

    @Basic
    @Column(name = "I2xb_13", nullable = true, precision = 2)
    public Float getI2Xb13() {
        return i2Xb13;
    }

    public void setI2Xb13(Float i2Xb13) {
        this.i2Xb13 = i2Xb13;
    }

    @Basic
    @Column(name = "I3xb_13", nullable = true, precision = 2)
    public Float getI3Xb13() {
        return i3Xb13;
    }

    public void setI3Xb13(Float i3Xb13) {
        this.i3Xb13 = i3Xb13;
    }

    @Basic
    @Column(name = "I1va_13", nullable = true, precision = 2)
    public Float getI1Va13() {
        return i1Va13;
    }

    public void setI1Va13(Float i1Va13) {
        this.i1Va13 = i1Va13;
    }

    @Basic
    @Column(name = "I2va_13", nullable = true, precision = 2)
    public Float getI2Va13() {
        return i2Va13;
    }

    public void setI2Va13(Float i2Va13) {
        this.i2Va13 = i2Va13;
    }

    @Basic
    @Column(name = "I3va_13", nullable = true, precision = 2)
    public Float getI3Va13() {
        return i3Va13;
    }

    public void setI3Va13(Float i3Va13) {
        this.i3Va13 = i3Va13;
    }

    @Basic
    @Column(name = "U1xb_14", nullable = true, precision = 2)
    public Float getU1Xb14() {
        return u1Xb14;
    }

    public void setU1Xb14(Float u1Xb14) {
        this.u1Xb14 = u1Xb14;
    }

    @Basic
    @Column(name = "U2xb_14", nullable = true, precision = 2)
    public Float getU2Xb14() {
        return u2Xb14;
    }

    public void setU2Xb14(Float u2Xb14) {
        this.u2Xb14 = u2Xb14;
    }

    @Basic
    @Column(name = "U3xb_14", nullable = true, precision = 2)
    public Float getU3Xb14() {
        return u3Xb14;
    }

    public void setU3Xb14(Float u3Xb14) {
        this.u3Xb14 = u3Xb14;
    }

    @Basic
    @Column(name = "U1va_14", nullable = true, precision = 2)
    public Float getU1Va14() {
        return u1Va14;
    }

    public void setU1Va14(Float u1Va14) {
        this.u1Va14 = u1Va14;
    }

    @Basic
    @Column(name = "U2va_14", nullable = true, precision = 2)
    public Float getU2Va14() {
        return u2Va14;
    }

    public void setU2Va14(Float u2Va14) {
        this.u2Va14 = u2Va14;
    }

    @Basic
    @Column(name = "U3va_14", nullable = true, precision = 2)
    public Float getU3Va14() {
        return u3Va14;
    }

    public void setU3Va14(Float u3Va14) {
        this.u3Va14 = u3Va14;
    }

    @Basic
    @Column(name = "I1xb_14", nullable = true, precision = 2)
    public Float getI1Xb14() {
        return i1Xb14;
    }

    public void setI1Xb14(Float i1Xb14) {
        this.i1Xb14 = i1Xb14;
    }

    @Basic
    @Column(name = "I2xb_14", nullable = true, precision = 2)
    public Float getI2Xb14() {
        return i2Xb14;
    }

    public void setI2Xb14(Float i2Xb14) {
        this.i2Xb14 = i2Xb14;
    }

    @Basic
    @Column(name = "I3xb_14", nullable = true, precision = 2)
    public Float getI3Xb14() {
        return i3Xb14;
    }

    public void setI3Xb14(Float i3Xb14) {
        this.i3Xb14 = i3Xb14;
    }

    @Basic
    @Column(name = "I1va_14", nullable = true, precision = 2)
    public Float getI1Va14() {
        return i1Va14;
    }

    public void setI1Va14(Float i1Va14) {
        this.i1Va14 = i1Va14;
    }

    @Basic
    @Column(name = "I2va_14", nullable = true, precision = 2)
    public Float getI2Va14() {
        return i2Va14;
    }

    public void setI2Va14(Float i2Va14) {
        this.i2Va14 = i2Va14;
    }

    @Basic
    @Column(name = "I3va_14", nullable = true, precision = 2)
    public Float getI3Va14() {
        return i3Va14;
    }

    public void setI3Va14(Float i3Va14) {
        this.i3Va14 = i3Va14;
    }

    @Basic
    @Column(name = "U1xb_15", nullable = true, precision = 2)
    public Float getU1Xb15() {
        return u1Xb15;
    }

    public void setU1Xb15(Float u1Xb15) {
        this.u1Xb15 = u1Xb15;
    }

    @Basic
    @Column(name = "U2xb_15", nullable = true, precision = 2)
    public Float getU2Xb15() {
        return u2Xb15;
    }

    public void setU2Xb15(Float u2Xb15) {
        this.u2Xb15 = u2Xb15;
    }

    @Basic
    @Column(name = "U3xb_15", nullable = true, precision = 2)
    public Float getU3Xb15() {
        return u3Xb15;
    }

    public void setU3Xb15(Float u3Xb15) {
        this.u3Xb15 = u3Xb15;
    }

    @Basic
    @Column(name = "U1va_15", nullable = true, precision = 2)
    public Float getU1Va15() {
        return u1Va15;
    }

    public void setU1Va15(Float u1Va15) {
        this.u1Va15 = u1Va15;
    }

    @Basic
    @Column(name = "U2va_15", nullable = true, precision = 2)
    public Float getU2Va15() {
        return u2Va15;
    }

    public void setU2Va15(Float u2Va15) {
        this.u2Va15 = u2Va15;
    }

    @Basic
    @Column(name = "U3va_15", nullable = true, precision = 2)
    public Float getU3Va15() {
        return u3Va15;
    }

    public void setU3Va15(Float u3Va15) {
        this.u3Va15 = u3Va15;
    }

    @Basic
    @Column(name = "I1xb_15", nullable = true, precision = 2)
    public Float getI1Xb15() {
        return i1Xb15;
    }

    public void setI1Xb15(Float i1Xb15) {
        this.i1Xb15 = i1Xb15;
    }

    @Basic
    @Column(name = "I2xb_15", nullable = true, precision = 2)
    public Float getI2Xb15() {
        return i2Xb15;
    }

    public void setI2Xb15(Float i2Xb15) {
        this.i2Xb15 = i2Xb15;
    }

    @Basic
    @Column(name = "I3xb_15", nullable = true, precision = 2)
    public Float getI3Xb15() {
        return i3Xb15;
    }

    public void setI3Xb15(Float i3Xb15) {
        this.i3Xb15 = i3Xb15;
    }

    @Basic
    @Column(name = "I1va_15", nullable = true, precision = 2)
    public Float getI1Va15() {
        return i1Va15;
    }

    public void setI1Va15(Float i1Va15) {
        this.i1Va15 = i1Va15;
    }

    @Basic
    @Column(name = "I2va_15", nullable = true, precision = 2)
    public Float getI2Va15() {
        return i2Va15;
    }

    public void setI2Va15(Float i2Va15) {
        this.i2Va15 = i2Va15;
    }

    @Basic
    @Column(name = "I3va_15", nullable = true, precision = 2)
    public Float getI3Va15() {
        return i3Va15;
    }

    public void setI3Va15(Float i3Va15) {
        this.i3Va15 = i3Va15;
    }

    @Basic
    @Column(name = "U1xb_16", nullable = true, precision = 2)
    public Float getU1Xb16() {
        return u1Xb16;
    }

    public void setU1Xb16(Float u1Xb16) {
        this.u1Xb16 = u1Xb16;
    }

    @Basic
    @Column(name = "U2xb_16", nullable = true, precision = 2)
    public Float getU2Xb16() {
        return u2Xb16;
    }

    public void setU2Xb16(Float u2Xb16) {
        this.u2Xb16 = u2Xb16;
    }

    @Basic
    @Column(name = "U3xb_16", nullable = true, precision = 2)
    public Float getU3Xb16() {
        return u3Xb16;
    }

    public void setU3Xb16(Float u3Xb16) {
        this.u3Xb16 = u3Xb16;
    }

    @Basic
    @Column(name = "U1va_16", nullable = true, precision = 2)
    public Float getU1Va16() {
        return u1Va16;
    }

    public void setU1Va16(Float u1Va16) {
        this.u1Va16 = u1Va16;
    }

    @Basic
    @Column(name = "U2va_16", nullable = true, precision = 2)
    public Float getU2Va16() {
        return u2Va16;
    }

    public void setU2Va16(Float u2Va16) {
        this.u2Va16 = u2Va16;
    }

    @Basic
    @Column(name = "U3va_16", nullable = true, precision = 2)
    public Float getU3Va16() {
        return u3Va16;
    }

    public void setU3Va16(Float u3Va16) {
        this.u3Va16 = u3Va16;
    }

    @Basic
    @Column(name = "I1xb_16", nullable = true, precision = 2)
    public Float getI1Xb16() {
        return i1Xb16;
    }

    public void setI1Xb16(Float i1Xb16) {
        this.i1Xb16 = i1Xb16;
    }

    @Basic
    @Column(name = "I2xb_16", nullable = true, precision = 2)
    public Float getI2Xb16() {
        return i2Xb16;
    }

    public void setI2Xb16(Float i2Xb16) {
        this.i2Xb16 = i2Xb16;
    }

    @Basic
    @Column(name = "I3xb_16", nullable = true, precision = 2)
    public Float getI3Xb16() {
        return i3Xb16;
    }

    public void setI3Xb16(Float i3Xb16) {
        this.i3Xb16 = i3Xb16;
    }

    @Basic
    @Column(name = "I1va_16", nullable = true, precision = 2)
    public Float getI1Va16() {
        return i1Va16;
    }

    public void setI1Va16(Float i1Va16) {
        this.i1Va16 = i1Va16;
    }

    @Basic
    @Column(name = "I2va_16", nullable = true, precision = 2)
    public Float getI2Va16() {
        return i2Va16;
    }

    public void setI2Va16(Float i2Va16) {
        this.i2Va16 = i2Va16;
    }

    @Basic
    @Column(name = "I3va_16", nullable = true, precision = 2)
    public Float getI3Va16() {
        return i3Va16;
    }

    public void setI3Va16(Float i3Va16) {
        this.i3Va16 = i3Va16;
    }

    @Basic
    @Column(name = "U1xb_17", nullable = true, precision = 2)
    public Float getU1Xb17() {
        return u1Xb17;
    }

    public void setU1Xb17(Float u1Xb17) {
        this.u1Xb17 = u1Xb17;
    }

    @Basic
    @Column(name = "U2xb_17", nullable = true, precision = 2)
    public Float getU2Xb17() {
        return u2Xb17;
    }

    public void setU2Xb17(Float u2Xb17) {
        this.u2Xb17 = u2Xb17;
    }

    @Basic
    @Column(name = "U3xb_17", nullable = true, precision = 2)
    public Float getU3Xb17() {
        return u3Xb17;
    }

    public void setU3Xb17(Float u3Xb17) {
        this.u3Xb17 = u3Xb17;
    }

    @Basic
    @Column(name = "U1va_17", nullable = true, precision = 2)
    public Float getU1Va17() {
        return u1Va17;
    }

    public void setU1Va17(Float u1Va17) {
        this.u1Va17 = u1Va17;
    }

    @Basic
    @Column(name = "U2va_17", nullable = true, precision = 2)
    public Float getU2Va17() {
        return u2Va17;
    }

    public void setU2Va17(Float u2Va17) {
        this.u2Va17 = u2Va17;
    }

    @Basic
    @Column(name = "U3va_17", nullable = true, precision = 2)
    public Float getU3Va17() {
        return u3Va17;
    }

    public void setU3Va17(Float u3Va17) {
        this.u3Va17 = u3Va17;
    }

    @Basic
    @Column(name = "I1xb_17", nullable = true, precision = 2)
    public Float getI1Xb17() {
        return i1Xb17;
    }

    public void setI1Xb17(Float i1Xb17) {
        this.i1Xb17 = i1Xb17;
    }

    @Basic
    @Column(name = "I2xb_17", nullable = true, precision = 2)
    public Float getI2Xb17() {
        return i2Xb17;
    }

    public void setI2Xb17(Float i2Xb17) {
        this.i2Xb17 = i2Xb17;
    }

    @Basic
    @Column(name = "I3xb_17", nullable = true, precision = 2)
    public Float getI3Xb17() {
        return i3Xb17;
    }

    public void setI3Xb17(Float i3Xb17) {
        this.i3Xb17 = i3Xb17;
    }

    @Basic
    @Column(name = "I1va_17", nullable = true, precision = 2)
    public Float getI1Va17() {
        return i1Va17;
    }

    public void setI1Va17(Float i1Va17) {
        this.i1Va17 = i1Va17;
    }

    @Basic
    @Column(name = "I2va_17", nullable = true, precision = 2)
    public Float getI2Va17() {
        return i2Va17;
    }

    public void setI2Va17(Float i2Va17) {
        this.i2Va17 = i2Va17;
    }

    @Basic
    @Column(name = "I3va_17", nullable = true, precision = 2)
    public Float getI3Va17() {
        return i3Va17;
    }

    public void setI3Va17(Float i3Va17) {
        this.i3Va17 = i3Va17;
    }

    @Basic
    @Column(name = "U1xb_18", nullable = true, precision = 2)
    public Float getU1Xb18() {
        return u1Xb18;
    }

    public void setU1Xb18(Float u1Xb18) {
        this.u1Xb18 = u1Xb18;
    }

    @Basic
    @Column(name = "U2xb_18", nullable = true, precision = 2)
    public Float getU2Xb18() {
        return u2Xb18;
    }

    public void setU2Xb18(Float u2Xb18) {
        this.u2Xb18 = u2Xb18;
    }

    @Basic
    @Column(name = "U3xb_18", nullable = true, precision = 2)
    public Float getU3Xb18() {
        return u3Xb18;
    }

    public void setU3Xb18(Float u3Xb18) {
        this.u3Xb18 = u3Xb18;
    }

    @Basic
    @Column(name = "U1va_18", nullable = true, precision = 2)
    public Float getU1Va18() {
        return u1Va18;
    }

    public void setU1Va18(Float u1Va18) {
        this.u1Va18 = u1Va18;
    }

    @Basic
    @Column(name = "U2va_18", nullable = true, precision = 2)
    public Float getU2Va18() {
        return u2Va18;
    }

    public void setU2Va18(Float u2Va18) {
        this.u2Va18 = u2Va18;
    }

    @Basic
    @Column(name = "U3va_18", nullable = true, precision = 2)
    public Float getU3Va18() {
        return u3Va18;
    }

    public void setU3Va18(Float u3Va18) {
        this.u3Va18 = u3Va18;
    }

    @Basic
    @Column(name = "I1xb_18", nullable = true, precision = 2)
    public Float getI1Xb18() {
        return i1Xb18;
    }

    public void setI1Xb18(Float i1Xb18) {
        this.i1Xb18 = i1Xb18;
    }

    @Basic
    @Column(name = "I2xb_18", nullable = true, precision = 2)
    public Float getI2Xb18() {
        return i2Xb18;
    }

    public void setI2Xb18(Float i2Xb18) {
        this.i2Xb18 = i2Xb18;
    }

    @Basic
    @Column(name = "I3xb_18", nullable = true, precision = 2)
    public Float getI3Xb18() {
        return i3Xb18;
    }

    public void setI3Xb18(Float i3Xb18) {
        this.i3Xb18 = i3Xb18;
    }

    @Basic
    @Column(name = "I1va_18", nullable = true, precision = 2)
    public Float getI1Va18() {
        return i1Va18;
    }

    public void setI1Va18(Float i1Va18) {
        this.i1Va18 = i1Va18;
    }

    @Basic
    @Column(name = "I2va_18", nullable = true, precision = 2)
    public Float getI2Va18() {
        return i2Va18;
    }

    public void setI2Va18(Float i2Va18) {
        this.i2Va18 = i2Va18;
    }

    @Basic
    @Column(name = "I3va_18", nullable = true, precision = 2)
    public Float getI3Va18() {
        return i3Va18;
    }

    public void setI3Va18(Float i3Va18) {
        this.i3Va18 = i3Va18;
    }

    @Basic
    @Column(name = "U1xb_19", nullable = true, precision = 2)
    public Float getU1Xb19() {
        return u1Xb19;
    }

    public void setU1Xb19(Float u1Xb19) {
        this.u1Xb19 = u1Xb19;
    }

    @Basic
    @Column(name = "U2xb_19", nullable = true, precision = 2)
    public Float getU2Xb19() {
        return u2Xb19;
    }

    public void setU2Xb19(Float u2Xb19) {
        this.u2Xb19 = u2Xb19;
    }

    @Basic
    @Column(name = "U3xb_19", nullable = true, precision = 2)
    public Float getU3Xb19() {
        return u3Xb19;
    }

    public void setU3Xb19(Float u3Xb19) {
        this.u3Xb19 = u3Xb19;
    }

    @Basic
    @Column(name = "U1va_19", nullable = true, precision = 2)
    public Float getU1Va19() {
        return u1Va19;
    }

    public void setU1Va19(Float u1Va19) {
        this.u1Va19 = u1Va19;
    }

    @Basic
    @Column(name = "U2va_19", nullable = true, precision = 2)
    public Float getU2Va19() {
        return u2Va19;
    }

    public void setU2Va19(Float u2Va19) {
        this.u2Va19 = u2Va19;
    }

    @Basic
    @Column(name = "U3va_19", nullable = true, precision = 2)
    public Float getU3Va19() {
        return u3Va19;
    }

    public void setU3Va19(Float u3Va19) {
        this.u3Va19 = u3Va19;
    }

    @Basic
    @Column(name = "I1xb_19", nullable = true, precision = 2)
    public Float getI1Xb19() {
        return i1Xb19;
    }

    public void setI1Xb19(Float i1Xb19) {
        this.i1Xb19 = i1Xb19;
    }

    @Basic
    @Column(name = "I2xb_19", nullable = true, precision = 2)
    public Float getI2Xb19() {
        return i2Xb19;
    }

    public void setI2Xb19(Float i2Xb19) {
        this.i2Xb19 = i2Xb19;
    }

    @Basic
    @Column(name = "I3xb_19", nullable = true, precision = 2)
    public Float getI3Xb19() {
        return i3Xb19;
    }

    public void setI3Xb19(Float i3Xb19) {
        this.i3Xb19 = i3Xb19;
    }

    @Basic
    @Column(name = "I1va_19", nullable = true, precision = 2)
    public Float getI1Va19() {
        return i1Va19;
    }

    public void setI1Va19(Float i1Va19) {
        this.i1Va19 = i1Va19;
    }

    @Basic
    @Column(name = "I2va_19", nullable = true, precision = 2)
    public Float getI2Va19() {
        return i2Va19;
    }

    public void setI2Va19(Float i2Va19) {
        this.i2Va19 = i2Va19;
    }

    @Basic
    @Column(name = "I3va_19", nullable = true, precision = 2)
    public Float getI3Va19() {
        return i3Va19;
    }

    public void setI3Va19(Float i3Va19) {
        this.i3Va19 = i3Va19;
    }

    @Basic
    @Column(name = "U1xb_20", nullable = true, precision = 2)
    public Float getU1Xb20() {
        return u1Xb20;
    }

    public void setU1Xb20(Float u1Xb20) {
        this.u1Xb20 = u1Xb20;
    }

    @Basic
    @Column(name = "U2xb_20", nullable = true, precision = 2)
    public Float getU2Xb20() {
        return u2Xb20;
    }

    public void setU2Xb20(Float u2Xb20) {
        this.u2Xb20 = u2Xb20;
    }

    @Basic
    @Column(name = "U3xb_20", nullable = true, precision = 2)
    public Float getU3Xb20() {
        return u3Xb20;
    }

    public void setU3Xb20(Float u3Xb20) {
        this.u3Xb20 = u3Xb20;
    }

    @Basic
    @Column(name = "U1va_20", nullable = true, precision = 2)
    public Float getU1Va20() {
        return u1Va20;
    }

    public void setU1Va20(Float u1Va20) {
        this.u1Va20 = u1Va20;
    }

    @Basic
    @Column(name = "U2va_20", nullable = true, precision = 2)
    public Float getU2Va20() {
        return u2Va20;
    }

    public void setU2Va20(Float u2Va20) {
        this.u2Va20 = u2Va20;
    }

    @Basic
    @Column(name = "U3va_20", nullable = true, precision = 2)
    public Float getU3Va20() {
        return u3Va20;
    }

    public void setU3Va20(Float u3Va20) {
        this.u3Va20 = u3Va20;
    }

    @Basic
    @Column(name = "I1xb_20", nullable = true, precision = 2)
    public Float getI1Xb20() {
        return i1Xb20;
    }

    public void setI1Xb20(Float i1Xb20) {
        this.i1Xb20 = i1Xb20;
    }

    @Basic
    @Column(name = "I2xb_20", nullable = true, precision = 2)
    public Float getI2Xb20() {
        return i2Xb20;
    }

    public void setI2Xb20(Float i2Xb20) {
        this.i2Xb20 = i2Xb20;
    }

    @Basic
    @Column(name = "I3xb_20", nullable = true, precision = 2)
    public Float getI3Xb20() {
        return i3Xb20;
    }

    public void setI3Xb20(Float i3Xb20) {
        this.i3Xb20 = i3Xb20;
    }

    @Basic
    @Column(name = "I1va_20", nullable = true, precision = 2)
    public Float getI1Va20() {
        return i1Va20;
    }

    public void setI1Va20(Float i1Va20) {
        this.i1Va20 = i1Va20;
    }

    @Basic
    @Column(name = "I2va_20", nullable = true, precision = 2)
    public Float getI2Va20() {
        return i2Va20;
    }

    public void setI2Va20(Float i2Va20) {
        this.i2Va20 = i2Va20;
    }

    @Basic
    @Column(name = "I3va_20", nullable = true, precision = 2)
    public Float getI3Va20() {
        return i3Va20;
    }

    public void setI3Va20(Float i3Va20) {
        this.i3Va20 = i3Va20;
    }

    @Basic
    @Column(name = "U1xb_21", nullable = true, precision = 2)
    public Float getU1Xb21() {
        return u1Xb21;
    }

    public void setU1Xb21(Float u1Xb21) {
        this.u1Xb21 = u1Xb21;
    }

    @Basic
    @Column(name = "U2xb_21", nullable = true, precision = 2)
    public Float getU2Xb21() {
        return u2Xb21;
    }

    public void setU2Xb21(Float u2Xb21) {
        this.u2Xb21 = u2Xb21;
    }

    @Basic
    @Column(name = "U3xb_21", nullable = true, precision = 2)
    public Float getU3Xb21() {
        return u3Xb21;
    }

    public void setU3Xb21(Float u3Xb21) {
        this.u3Xb21 = u3Xb21;
    }

    @Basic
    @Column(name = "U1va_21", nullable = true, precision = 2)
    public Float getU1Va21() {
        return u1Va21;
    }

    public void setU1Va21(Float u1Va21) {
        this.u1Va21 = u1Va21;
    }

    @Basic
    @Column(name = "U2va_21", nullable = true, precision = 2)
    public Float getU2Va21() {
        return u2Va21;
    }

    public void setU2Va21(Float u2Va21) {
        this.u2Va21 = u2Va21;
    }

    @Basic
    @Column(name = "U3va_21", nullable = true, precision = 2)
    public Float getU3Va21() {
        return u3Va21;
    }

    public void setU3Va21(Float u3Va21) {
        this.u3Va21 = u3Va21;
    }

    @Basic
    @Column(name = "I1xb_21", nullable = true, precision = 2)
    public Float getI1Xb21() {
        return i1Xb21;
    }

    public void setI1Xb21(Float i1Xb21) {
        this.i1Xb21 = i1Xb21;
    }

    @Basic
    @Column(name = "I2xb_21", nullable = true, precision = 2)
    public Float getI2Xb21() {
        return i2Xb21;
    }

    public void setI2Xb21(Float i2Xb21) {
        this.i2Xb21 = i2Xb21;
    }

    @Basic
    @Column(name = "I3xb_21", nullable = true, precision = 2)
    public Float getI3Xb21() {
        return i3Xb21;
    }

    public void setI3Xb21(Float i3Xb21) {
        this.i3Xb21 = i3Xb21;
    }

    @Basic
    @Column(name = "I1va_21", nullable = true, precision = 2)
    public Float getI1Va21() {
        return i1Va21;
    }

    public void setI1Va21(Float i1Va21) {
        this.i1Va21 = i1Va21;
    }

    @Basic
    @Column(name = "I2va_21", nullable = true, precision = 2)
    public Float getI2Va21() {
        return i2Va21;
    }

    public void setI2Va21(Float i2Va21) {
        this.i2Va21 = i2Va21;
    }

    @Basic
    @Column(name = "I3va_21", nullable = true, precision = 2)
    public Float getI3Va21() {
        return i3Va21;
    }

    public void setI3Va21(Float i3Va21) {
        this.i3Va21 = i3Va21;
    }

    @Basic
    @Column(name = "U1xb_22", nullable = true, precision = 2)
    public Float getU1Xb22() {
        return u1Xb22;
    }

    public void setU1Xb22(Float u1Xb22) {
        this.u1Xb22 = u1Xb22;
    }

    @Basic
    @Column(name = "U2xb_22", nullable = true, precision = 2)
    public Float getU2Xb22() {
        return u2Xb22;
    }

    public void setU2Xb22(Float u2Xb22) {
        this.u2Xb22 = u2Xb22;
    }

    @Basic
    @Column(name = "U3xb_22", nullable = true, precision = 2)
    public Float getU3Xb22() {
        return u3Xb22;
    }

    public void setU3Xb22(Float u3Xb22) {
        this.u3Xb22 = u3Xb22;
    }

    @Basic
    @Column(name = "U1va_22", nullable = true, precision = 2)
    public Float getU1Va22() {
        return u1Va22;
    }

    public void setU1Va22(Float u1Va22) {
        this.u1Va22 = u1Va22;
    }

    @Basic
    @Column(name = "U2va_22", nullable = true, precision = 2)
    public Float getU2Va22() {
        return u2Va22;
    }

    public void setU2Va22(Float u2Va22) {
        this.u2Va22 = u2Va22;
    }

    @Basic
    @Column(name = "U3va_22", nullable = true, precision = 2)
    public Float getU3Va22() {
        return u3Va22;
    }

    public void setU3Va22(Float u3Va22) {
        this.u3Va22 = u3Va22;
    }

    @Basic
    @Column(name = "I1xb_22", nullable = true, precision = 2)
    public Float getI1Xb22() {
        return i1Xb22;
    }

    public void setI1Xb22(Float i1Xb22) {
        this.i1Xb22 = i1Xb22;
    }

    @Basic
    @Column(name = "I2xb_22", nullable = true, precision = 2)
    public Float getI2Xb22() {
        return i2Xb22;
    }

    public void setI2Xb22(Float i2Xb22) {
        this.i2Xb22 = i2Xb22;
    }

    @Basic
    @Column(name = "I3xb_22", nullable = true, precision = 2)
    public Float getI3Xb22() {
        return i3Xb22;
    }

    public void setI3Xb22(Float i3Xb22) {
        this.i3Xb22 = i3Xb22;
    }

    @Basic
    @Column(name = "I1va_22", nullable = true, precision = 2)
    public Float getI1Va22() {
        return i1Va22;
    }

    public void setI1Va22(Float i1Va22) {
        this.i1Va22 = i1Va22;
    }

    @Basic
    @Column(name = "I2va_22", nullable = true, precision = 2)
    public Float getI2Va22() {
        return i2Va22;
    }

    public void setI2Va22(Float i2Va22) {
        this.i2Va22 = i2Va22;
    }

    @Basic
    @Column(name = "I3va_22", nullable = true, precision = 2)
    public Float getI3Va22() {
        return i3Va22;
    }

    public void setI3Va22(Float i3Va22) {
        this.i3Va22 = i3Va22;
    }

    @Basic
    @Column(name = "U1xb_23", nullable = true, precision = 2)
    public Float getU1Xb23() {
        return u1Xb23;
    }

    public void setU1Xb23(Float u1Xb23) {
        this.u1Xb23 = u1Xb23;
    }

    @Basic
    @Column(name = "U2xb_23", nullable = true, precision = 2)
    public Float getU2Xb23() {
        return u2Xb23;
    }

    public void setU2Xb23(Float u2Xb23) {
        this.u2Xb23 = u2Xb23;
    }

    @Basic
    @Column(name = "U3xb_23", nullable = true, precision = 2)
    public Float getU3Xb23() {
        return u3Xb23;
    }

    public void setU3Xb23(Float u3Xb23) {
        this.u3Xb23 = u3Xb23;
    }

    @Basic
    @Column(name = "U1va_23", nullable = true, precision = 2)
    public Float getU1Va23() {
        return u1Va23;
    }

    public void setU1Va23(Float u1Va23) {
        this.u1Va23 = u1Va23;
    }

    @Basic
    @Column(name = "U2va_23", nullable = true, precision = 2)
    public Float getU2Va23() {
        return u2Va23;
    }

    public void setU2Va23(Float u2Va23) {
        this.u2Va23 = u2Va23;
    }

    @Basic
    @Column(name = "U3va_23", nullable = true, precision = 2)
    public Float getU3Va23() {
        return u3Va23;
    }

    public void setU3Va23(Float u3Va23) {
        this.u3Va23 = u3Va23;
    }

    @Basic
    @Column(name = "I1xb_23", nullable = true, precision = 2)
    public Float getI1Xb23() {
        return i1Xb23;
    }

    public void setI1Xb23(Float i1Xb23) {
        this.i1Xb23 = i1Xb23;
    }

    @Basic
    @Column(name = "I2xb_23", nullable = true, precision = 2)
    public Float getI2Xb23() {
        return i2Xb23;
    }

    public void setI2Xb23(Float i2Xb23) {
        this.i2Xb23 = i2Xb23;
    }

    @Basic
    @Column(name = "I3xb_23", nullable = true, precision = 2)
    public Float getI3Xb23() {
        return i3Xb23;
    }

    public void setI3Xb23(Float i3Xb23) {
        this.i3Xb23 = i3Xb23;
    }

    @Basic
    @Column(name = "I1va_23", nullable = true, precision = 2)
    public Float getI1Va23() {
        return i1Va23;
    }

    public void setI1Va23(Float i1Va23) {
        this.i1Va23 = i1Va23;
    }

    @Basic
    @Column(name = "I2va_23", nullable = true, precision = 2)
    public Float getI2Va23() {
        return i2Va23;
    }

    public void setI2Va23(Float i2Va23) {
        this.i2Va23 = i2Va23;
    }

    @Basic
    @Column(name = "I3va_23", nullable = true, precision = 2)
    public Float getI3Va23() {
        return i3Va23;
    }

    public void setI3Va23(Float i3Va23) {
        this.i3Va23 = i3Va23;
    }

    @Basic
    @Column(name = "U1xb_24", nullable = true, precision = 2)
    public Float getU1Xb24() {
        return u1Xb24;
    }

    public void setU1Xb24(Float u1Xb24) {
        this.u1Xb24 = u1Xb24;
    }

    @Basic
    @Column(name = "U2xb_24", nullable = true, precision = 2)
    public Float getU2Xb24() {
        return u2Xb24;
    }

    public void setU2Xb24(Float u2Xb24) {
        this.u2Xb24 = u2Xb24;
    }

    @Basic
    @Column(name = "U3xb_24", nullable = true, precision = 2)
    public Float getU3Xb24() {
        return u3Xb24;
    }

    public void setU3Xb24(Float u3Xb24) {
        this.u3Xb24 = u3Xb24;
    }

    @Basic
    @Column(name = "U1va_24", nullable = true, precision = 2)
    public Float getU1Va24() {
        return u1Va24;
    }

    public void setU1Va24(Float u1Va24) {
        this.u1Va24 = u1Va24;
    }

    @Basic
    @Column(name = "U2va_24", nullable = true, precision = 2)
    public Float getU2Va24() {
        return u2Va24;
    }

    public void setU2Va24(Float u2Va24) {
        this.u2Va24 = u2Va24;
    }

    @Basic
    @Column(name = "U3va_24", nullable = true, precision = 2)
    public Float getU3Va24() {
        return u3Va24;
    }

    public void setU3Va24(Float u3Va24) {
        this.u3Va24 = u3Va24;
    }

    @Basic
    @Column(name = "I1xb_24", nullable = true, precision = 2)
    public Float getI1Xb24() {
        return i1Xb24;
    }

    public void setI1Xb24(Float i1Xb24) {
        this.i1Xb24 = i1Xb24;
    }

    @Basic
    @Column(name = "I2xb_24", nullable = true, precision = 2)
    public Float getI2Xb24() {
        return i2Xb24;
    }

    public void setI2Xb24(Float i2Xb24) {
        this.i2Xb24 = i2Xb24;
    }

    @Basic
    @Column(name = "I3xb_24", nullable = true, precision = 2)
    public Float getI3Xb24() {
        return i3Xb24;
    }

    public void setI3Xb24(Float i3Xb24) {
        this.i3Xb24 = i3Xb24;
    }

    @Basic
    @Column(name = "I1va_24", nullable = true, precision = 2)
    public Float getI1Va24() {
        return i1Va24;
    }

    public void setI1Va24(Float i1Va24) {
        this.i1Va24 = i1Va24;
    }

    @Basic
    @Column(name = "I2va_24", nullable = true, precision = 2)
    public Float getI2Va24() {
        return i2Va24;
    }

    public void setI2Va24(Float i2Va24) {
        this.i2Va24 = i2Va24;
    }

    @Basic
    @Column(name = "I3va_24", nullable = true, precision = 2)
    public Float getI3Va24() {
        return i3Va24;
    }

    public void setI3Va24(Float i3Va24) {
        this.i3Va24 = i3Va24;
    }

    @Basic
    @Column(name = "U1xb_25", nullable = true, precision = 2)
    public Float getU1Xb25() {
        return u1Xb25;
    }

    public void setU1Xb25(Float u1Xb25) {
        this.u1Xb25 = u1Xb25;
    }

    @Basic
    @Column(name = "U2xb_25", nullable = true, precision = 2)
    public Float getU2Xb25() {
        return u2Xb25;
    }

    public void setU2Xb25(Float u2Xb25) {
        this.u2Xb25 = u2Xb25;
    }

    @Basic
    @Column(name = "U3xb_25", nullable = true, precision = 2)
    public Float getU3Xb25() {
        return u3Xb25;
    }

    public void setU3Xb25(Float u3Xb25) {
        this.u3Xb25 = u3Xb25;
    }

    @Basic
    @Column(name = "U1va_25", nullable = true, precision = 2)
    public Float getU1Va25() {
        return u1Va25;
    }

    public void setU1Va25(Float u1Va25) {
        this.u1Va25 = u1Va25;
    }

    @Basic
    @Column(name = "U2va_25", nullable = true, precision = 2)
    public Float getU2Va25() {
        return u2Va25;
    }

    public void setU2Va25(Float u2Va25) {
        this.u2Va25 = u2Va25;
    }

    @Basic
    @Column(name = "U3va_25", nullable = true, precision = 2)
    public Float getU3Va25() {
        return u3Va25;
    }

    public void setU3Va25(Float u3Va25) {
        this.u3Va25 = u3Va25;
    }

    @Basic
    @Column(name = "I1xb_25", nullable = true, precision = 2)
    public Float getI1Xb25() {
        return i1Xb25;
    }

    public void setI1Xb25(Float i1Xb25) {
        this.i1Xb25 = i1Xb25;
    }

    @Basic
    @Column(name = "I2xb_25", nullable = true, precision = 2)
    public Float getI2Xb25() {
        return i2Xb25;
    }

    public void setI2Xb25(Float i2Xb25) {
        this.i2Xb25 = i2Xb25;
    }

    @Basic
    @Column(name = "I3xb_25", nullable = true, precision = 2)
    public Float getI3Xb25() {
        return i3Xb25;
    }

    public void setI3Xb25(Float i3Xb25) {
        this.i3Xb25 = i3Xb25;
    }

    @Basic
    @Column(name = "I1va_25", nullable = true, precision = 2)
    public Float getI1Va25() {
        return i1Va25;
    }

    public void setI1Va25(Float i1Va25) {
        this.i1Va25 = i1Va25;
    }

    @Basic
    @Column(name = "I2va_25", nullable = true, precision = 2)
    public Float getI2Va25() {
        return i2Va25;
    }

    public void setI2Va25(Float i2Va25) {
        this.i2Va25 = i2Va25;
    }

    @Basic
    @Column(name = "I3va_25", nullable = true, precision = 2)
    public Float getI3Va25() {
        return i3Va25;
    }

    public void setI3Va25(Float i3Va25) {
        this.i3Va25 = i3Va25;
    }

    @Basic
    @Column(name = "U1xb_26", nullable = true, precision = 2)
    public Float getU1Xb26() {
        return u1Xb26;
    }

    public void setU1Xb26(Float u1Xb26) {
        this.u1Xb26 = u1Xb26;
    }

    @Basic
    @Column(name = "U2xb_26", nullable = true, precision = 2)
    public Float getU2Xb26() {
        return u2Xb26;
    }

    public void setU2Xb26(Float u2Xb26) {
        this.u2Xb26 = u2Xb26;
    }

    @Basic
    @Column(name = "U3xb_26", nullable = true, precision = 2)
    public Float getU3Xb26() {
        return u3Xb26;
    }

    public void setU3Xb26(Float u3Xb26) {
        this.u3Xb26 = u3Xb26;
    }

    @Basic
    @Column(name = "U1va_26", nullable = true, precision = 2)
    public Float getU1Va26() {
        return u1Va26;
    }

    public void setU1Va26(Float u1Va26) {
        this.u1Va26 = u1Va26;
    }

    @Basic
    @Column(name = "U2va_26", nullable = true, precision = 2)
    public Float getU2Va26() {
        return u2Va26;
    }

    public void setU2Va26(Float u2Va26) {
        this.u2Va26 = u2Va26;
    }

    @Basic
    @Column(name = "U3va_26", nullable = true, precision = 2)
    public Float getU3Va26() {
        return u3Va26;
    }

    public void setU3Va26(Float u3Va26) {
        this.u3Va26 = u3Va26;
    }

    @Basic
    @Column(name = "I1xb_26", nullable = true, precision = 2)
    public Float getI1Xb26() {
        return i1Xb26;
    }

    public void setI1Xb26(Float i1Xb26) {
        this.i1Xb26 = i1Xb26;
    }

    @Basic
    @Column(name = "I2xb_26", nullable = true, precision = 2)
    public Float getI2Xb26() {
        return i2Xb26;
    }

    public void setI2Xb26(Float i2Xb26) {
        this.i2Xb26 = i2Xb26;
    }

    @Basic
    @Column(name = "I3xb_26", nullable = true, precision = 2)
    public Float getI3Xb26() {
        return i3Xb26;
    }

    public void setI3Xb26(Float i3Xb26) {
        this.i3Xb26 = i3Xb26;
    }

    @Basic
    @Column(name = "I1va_26", nullable = true, precision = 2)
    public Float getI1Va26() {
        return i1Va26;
    }

    public void setI1Va26(Float i1Va26) {
        this.i1Va26 = i1Va26;
    }

    @Basic
    @Column(name = "I2va_26", nullable = true, precision = 2)
    public Float getI2Va26() {
        return i2Va26;
    }

    public void setI2Va26(Float i2Va26) {
        this.i2Va26 = i2Va26;
    }

    @Basic
    @Column(name = "I3va_26", nullable = true, precision = 2)
    public Float getI3Va26() {
        return i3Va26;
    }

    public void setI3Va26(Float i3Va26) {
        this.i3Va26 = i3Va26;
    }

    @Basic
    @Column(name = "U1xb_27", nullable = true, precision = 2)
    public Float getU1Xb27() {
        return u1Xb27;
    }

    public void setU1Xb27(Float u1Xb27) {
        this.u1Xb27 = u1Xb27;
    }

    @Basic
    @Column(name = "U2xb_27", nullable = true, precision = 2)
    public Float getU2Xb27() {
        return u2Xb27;
    }

    public void setU2Xb27(Float u2Xb27) {
        this.u2Xb27 = u2Xb27;
    }

    @Basic
    @Column(name = "U3xb_27", nullable = true, precision = 2)
    public Float getU3Xb27() {
        return u3Xb27;
    }

    public void setU3Xb27(Float u3Xb27) {
        this.u3Xb27 = u3Xb27;
    }

    @Basic
    @Column(name = "U1va_27", nullable = true, precision = 2)
    public Float getU1Va27() {
        return u1Va27;
    }

    public void setU1Va27(Float u1Va27) {
        this.u1Va27 = u1Va27;
    }

    @Basic
    @Column(name = "U2va_27", nullable = true, precision = 2)
    public Float getU2Va27() {
        return u2Va27;
    }

    public void setU2Va27(Float u2Va27) {
        this.u2Va27 = u2Va27;
    }

    @Basic
    @Column(name = "U3va_27", nullable = true, precision = 2)
    public Float getU3Va27() {
        return u3Va27;
    }

    public void setU3Va27(Float u3Va27) {
        this.u3Va27 = u3Va27;
    }

    @Basic
    @Column(name = "I1xb_27", nullable = true, precision = 2)
    public Float getI1Xb27() {
        return i1Xb27;
    }

    public void setI1Xb27(Float i1Xb27) {
        this.i1Xb27 = i1Xb27;
    }

    @Basic
    @Column(name = "I2xb_27", nullable = true, precision = 2)
    public Float getI2Xb27() {
        return i2Xb27;
    }

    public void setI2Xb27(Float i2Xb27) {
        this.i2Xb27 = i2Xb27;
    }

    @Basic
    @Column(name = "I3xb_27", nullable = true, precision = 2)
    public Float getI3Xb27() {
        return i3Xb27;
    }

    public void setI3Xb27(Float i3Xb27) {
        this.i3Xb27 = i3Xb27;
    }

    @Basic
    @Column(name = "I1va_27", nullable = true, precision = 2)
    public Float getI1Va27() {
        return i1Va27;
    }

    public void setI1Va27(Float i1Va27) {
        this.i1Va27 = i1Va27;
    }

    @Basic
    @Column(name = "I2va_27", nullable = true, precision = 2)
    public Float getI2Va27() {
        return i2Va27;
    }

    public void setI2Va27(Float i2Va27) {
        this.i2Va27 = i2Va27;
    }

    @Basic
    @Column(name = "I3va_27", nullable = true, precision = 2)
    public Float getI3Va27() {
        return i3Va27;
    }

    public void setI3Va27(Float i3Va27) {
        this.i3Va27 = i3Va27;
    }

    @Basic
    @Column(name = "U1xb_28", nullable = true, precision = 2)
    public Float getU1Xb28() {
        return u1Xb28;
    }

    public void setU1Xb28(Float u1Xb28) {
        this.u1Xb28 = u1Xb28;
    }

    @Basic
    @Column(name = "U2xb_28", nullable = true, precision = 2)
    public Float getU2Xb28() {
        return u2Xb28;
    }

    public void setU2Xb28(Float u2Xb28) {
        this.u2Xb28 = u2Xb28;
    }

    @Basic
    @Column(name = "U3xb_28", nullable = true, precision = 2)
    public Float getU3Xb28() {
        return u3Xb28;
    }

    public void setU3Xb28(Float u3Xb28) {
        this.u3Xb28 = u3Xb28;
    }

    @Basic
    @Column(name = "U1va_28", nullable = true, precision = 2)
    public Float getU1Va28() {
        return u1Va28;
    }

    public void setU1Va28(Float u1Va28) {
        this.u1Va28 = u1Va28;
    }

    @Basic
    @Column(name = "U2va_28", nullable = true, precision = 2)
    public Float getU2Va28() {
        return u2Va28;
    }

    public void setU2Va28(Float u2Va28) {
        this.u2Va28 = u2Va28;
    }

    @Basic
    @Column(name = "U3va_28", nullable = true, precision = 2)
    public Float getU3Va28() {
        return u3Va28;
    }

    public void setU3Va28(Float u3Va28) {
        this.u3Va28 = u3Va28;
    }

    @Basic
    @Column(name = "I1xb_28", nullable = true, precision = 2)
    public Float getI1Xb28() {
        return i1Xb28;
    }

    public void setI1Xb28(Float i1Xb28) {
        this.i1Xb28 = i1Xb28;
    }

    @Basic
    @Column(name = "I2xb_28", nullable = true, precision = 2)
    public Float getI2Xb28() {
        return i2Xb28;
    }

    public void setI2Xb28(Float i2Xb28) {
        this.i2Xb28 = i2Xb28;
    }

    @Basic
    @Column(name = "I3xb_28", nullable = true, precision = 2)
    public Float getI3Xb28() {
        return i3Xb28;
    }

    public void setI3Xb28(Float i3Xb28) {
        this.i3Xb28 = i3Xb28;
    }

    @Basic
    @Column(name = "I1va_28", nullable = true, precision = 2)
    public Float getI1Va28() {
        return i1Va28;
    }

    public void setI1Va28(Float i1Va28) {
        this.i1Va28 = i1Va28;
    }

    @Basic
    @Column(name = "I2va_28", nullable = true, precision = 2)
    public Float getI2Va28() {
        return i2Va28;
    }

    public void setI2Va28(Float i2Va28) {
        this.i2Va28 = i2Va28;
    }

    @Basic
    @Column(name = "I3va_28", nullable = true, precision = 2)
    public Float getI3Va28() {
        return i3Va28;
    }

    public void setI3Va28(Float i3Va28) {
        this.i3Va28 = i3Va28;
    }

    @Basic
    @Column(name = "U1xb_29", nullable = true, precision = 2)
    public Float getU1Xb29() {
        return u1Xb29;
    }

    public void setU1Xb29(Float u1Xb29) {
        this.u1Xb29 = u1Xb29;
    }

    @Basic
    @Column(name = "U2xb_29", nullable = true, precision = 2)
    public Float getU2Xb29() {
        return u2Xb29;
    }

    public void setU2Xb29(Float u2Xb29) {
        this.u2Xb29 = u2Xb29;
    }

    @Basic
    @Column(name = "U3xb_29", nullable = true, precision = 2)
    public Float getU3Xb29() {
        return u3Xb29;
    }

    public void setU3Xb29(Float u3Xb29) {
        this.u3Xb29 = u3Xb29;
    }

    @Basic
    @Column(name = "U1va_29", nullable = true, precision = 2)
    public Float getU1Va29() {
        return u1Va29;
    }

    public void setU1Va29(Float u1Va29) {
        this.u1Va29 = u1Va29;
    }

    @Basic
    @Column(name = "U2va_29", nullable = true, precision = 2)
    public Float getU2Va29() {
        return u2Va29;
    }

    public void setU2Va29(Float u2Va29) {
        this.u2Va29 = u2Va29;
    }

    @Basic
    @Column(name = "U3va_29", nullable = true, precision = 2)
    public Float getU3Va29() {
        return u3Va29;
    }

    public void setU3Va29(Float u3Va29) {
        this.u3Va29 = u3Va29;
    }

    @Basic
    @Column(name = "I1xb_29", nullable = true, precision = 2)
    public Float getI1Xb29() {
        return i1Xb29;
    }

    public void setI1Xb29(Float i1Xb29) {
        this.i1Xb29 = i1Xb29;
    }

    @Basic
    @Column(name = "I2xb_29", nullable = true, precision = 2)
    public Float getI2Xb29() {
        return i2Xb29;
    }

    public void setI2Xb29(Float i2Xb29) {
        this.i2Xb29 = i2Xb29;
    }

    @Basic
    @Column(name = "I3xb_29", nullable = true, precision = 2)
    public Float getI3Xb29() {
        return i3Xb29;
    }

    public void setI3Xb29(Float i3Xb29) {
        this.i3Xb29 = i3Xb29;
    }

    @Basic
    @Column(name = "I1va_29", nullable = true, precision = 2)
    public Float getI1Va29() {
        return i1Va29;
    }

    public void setI1Va29(Float i1Va29) {
        this.i1Va29 = i1Va29;
    }

    @Basic
    @Column(name = "I2va_29", nullable = true, precision = 2)
    public Float getI2Va29() {
        return i2Va29;
    }

    public void setI2Va29(Float i2Va29) {
        this.i2Va29 = i2Va29;
    }

    @Basic
    @Column(name = "I3va_29", nullable = true, precision = 2)
    public Float getI3Va29() {
        return i3Va29;
    }

    public void setI3Va29(Float i3Va29) {
        this.i3Va29 = i3Va29;
    }

    @Basic
    @Column(name = "U1xb_30", nullable = true, precision = 2)
    public Float getU1Xb30() {
        return u1Xb30;
    }

    public void setU1Xb30(Float u1Xb30) {
        this.u1Xb30 = u1Xb30;
    }

    @Basic
    @Column(name = "U2xb_30", nullable = true, precision = 2)
    public Float getU2Xb30() {
        return u2Xb30;
    }

    public void setU2Xb30(Float u2Xb30) {
        this.u2Xb30 = u2Xb30;
    }

    @Basic
    @Column(name = "U3xb_30", nullable = true, precision = 2)
    public Float getU3Xb30() {
        return u3Xb30;
    }

    public void setU3Xb30(Float u3Xb30) {
        this.u3Xb30 = u3Xb30;
    }

    @Basic
    @Column(name = "U1va_30", nullable = true, precision = 2)
    public Float getU1Va30() {
        return u1Va30;
    }

    public void setU1Va30(Float u1Va30) {
        this.u1Va30 = u1Va30;
    }

    @Basic
    @Column(name = "U2va_30", nullable = true, precision = 2)
    public Float getU2Va30() {
        return u2Va30;
    }

    public void setU2Va30(Float u2Va30) {
        this.u2Va30 = u2Va30;
    }

    @Basic
    @Column(name = "U3va_30", nullable = true, precision = 2)
    public Float getU3Va30() {
        return u3Va30;
    }

    public void setU3Va30(Float u3Va30) {
        this.u3Va30 = u3Va30;
    }

    @Basic
    @Column(name = "I1xb_30", nullable = true, precision = 2)
    public Float getI1Xb30() {
        return i1Xb30;
    }

    public void setI1Xb30(Float i1Xb30) {
        this.i1Xb30 = i1Xb30;
    }

    @Basic
    @Column(name = "I2xb_30", nullable = true, precision = 2)
    public Float getI2Xb30() {
        return i2Xb30;
    }

    public void setI2Xb30(Float i2Xb30) {
        this.i2Xb30 = i2Xb30;
    }

    @Basic
    @Column(name = "I3xb_30", nullable = true, precision = 2)
    public Float getI3Xb30() {
        return i3Xb30;
    }

    public void setI3Xb30(Float i3Xb30) {
        this.i3Xb30 = i3Xb30;
    }

    @Basic
    @Column(name = "I1va_30", nullable = true, precision = 2)
    public Float getI1Va30() {
        return i1Va30;
    }

    public void setI1Va30(Float i1Va30) {
        this.i1Va30 = i1Va30;
    }

    @Basic
    @Column(name = "I2va_30", nullable = true, precision = 2)
    public Float getI2Va30() {
        return i2Va30;
    }

    public void setI2Va30(Float i2Va30) {
        this.i2Va30 = i2Va30;
    }

    @Basic
    @Column(name = "I3va_30", nullable = true, precision = 2)
    public Float getI3Va30() {
        return i3Va30;
    }

    public void setI3Va30(Float i3Va30) {
        this.i3Va30 = i3Va30;
    }

    @Basic
    @Column(name = "U1xb_31", nullable = true, precision = 2)
    public Float getU1Xb31() {
        return u1Xb31;
    }

    public void setU1Xb31(Float u1Xb31) {
        this.u1Xb31 = u1Xb31;
    }

    @Basic
    @Column(name = "U2xb_31", nullable = true, precision = 2)
    public Float getU2Xb31() {
        return u2Xb31;
    }

    public void setU2Xb31(Float u2Xb31) {
        this.u2Xb31 = u2Xb31;
    }

    @Basic
    @Column(name = "U3xb_31", nullable = true, precision = 2)
    public Float getU3Xb31() {
        return u3Xb31;
    }

    public void setU3Xb31(Float u3Xb31) {
        this.u3Xb31 = u3Xb31;
    }

    @Basic
    @Column(name = "U1va_31", nullable = true, precision = 2)
    public Float getU1Va31() {
        return u1Va31;
    }

    public void setU1Va31(Float u1Va31) {
        this.u1Va31 = u1Va31;
    }

    @Basic
    @Column(name = "U2va_31", nullable = true, precision = 2)
    public Float getU2Va31() {
        return u2Va31;
    }

    public void setU2Va31(Float u2Va31) {
        this.u2Va31 = u2Va31;
    }

    @Basic
    @Column(name = "U3va_31", nullable = true, precision = 2)
    public Float getU3Va31() {
        return u3Va31;
    }

    public void setU3Va31(Float u3Va31) {
        this.u3Va31 = u3Va31;
    }

    @Basic
    @Column(name = "I1xb_31", nullable = true, precision = 2)
    public Float getI1Xb31() {
        return i1Xb31;
    }

    public void setI1Xb31(Float i1Xb31) {
        this.i1Xb31 = i1Xb31;
    }

    @Basic
    @Column(name = "I2xb_31", nullable = true, precision = 2)
    public Float getI2Xb31() {
        return i2Xb31;
    }

    public void setI2Xb31(Float i2Xb31) {
        this.i2Xb31 = i2Xb31;
    }

    @Basic
    @Column(name = "I3xb_31", nullable = true, precision = 2)
    public Float getI3Xb31() {
        return i3Xb31;
    }

    public void setI3Xb31(Float i3Xb31) {
        this.i3Xb31 = i3Xb31;
    }

    @Basic
    @Column(name = "I1va_31", nullable = true, precision = 2)
    public Float getI1Va31() {
        return i1Va31;
    }

    public void setI1Va31(Float i1Va31) {
        this.i1Va31 = i1Va31;
    }

    @Basic
    @Column(name = "I2va_31", nullable = true, precision = 2)
    public Float getI2Va31() {
        return i2Va31;
    }

    public void setI2Va31(Float i2Va31) {
        this.i2Va31 = i2Va31;
    }

    @Basic
    @Column(name = "I3va_31", nullable = true, precision = 2)
    public Float getI3Va31() {
        return i3Va31;
    }

    public void setI3Va31(Float i3Va31) {
        this.i3Va31 = i3Va31;
    }

    @Basic
    @Column(name = "U1xb_32", nullable = true, precision = 2)
    public Float getU1Xb32() {
        return u1Xb32;
    }

    public void setU1Xb32(Float u1Xb32) {
        this.u1Xb32 = u1Xb32;
    }

    @Basic
    @Column(name = "U2xb_32", nullable = true, precision = 2)
    public Float getU2Xb32() {
        return u2Xb32;
    }

    public void setU2Xb32(Float u2Xb32) {
        this.u2Xb32 = u2Xb32;
    }

    @Basic
    @Column(name = "U3xb_32", nullable = true, precision = 2)
    public Float getU3Xb32() {
        return u3Xb32;
    }

    public void setU3Xb32(Float u3Xb32) {
        this.u3Xb32 = u3Xb32;
    }

    @Basic
    @Column(name = "U1va_32", nullable = true, precision = 2)
    public Float getU1Va32() {
        return u1Va32;
    }

    public void setU1Va32(Float u1Va32) {
        this.u1Va32 = u1Va32;
    }

    @Basic
    @Column(name = "U2va_32", nullable = true, precision = 2)
    public Float getU2Va32() {
        return u2Va32;
    }

    public void setU2Va32(Float u2Va32) {
        this.u2Va32 = u2Va32;
    }

    @Basic
    @Column(name = "U3va_32", nullable = true, precision = 2)
    public Float getU3Va32() {
        return u3Va32;
    }

    public void setU3Va32(Float u3Va32) {
        this.u3Va32 = u3Va32;
    }

    @Basic
    @Column(name = "I1xb_32", nullable = true, precision = 2)
    public Float getI1Xb32() {
        return i1Xb32;
    }

    public void setI1Xb32(Float i1Xb32) {
        this.i1Xb32 = i1Xb32;
    }

    @Basic
    @Column(name = "I2xb_32", nullable = true, precision = 2)
    public Float getI2Xb32() {
        return i2Xb32;
    }

    public void setI2Xb32(Float i2Xb32) {
        this.i2Xb32 = i2Xb32;
    }

    @Basic
    @Column(name = "I3xb_32", nullable = true, precision = 2)
    public Float getI3Xb32() {
        return i3Xb32;
    }

    public void setI3Xb32(Float i3Xb32) {
        this.i3Xb32 = i3Xb32;
    }

    @Basic
    @Column(name = "I1va_32", nullable = true, precision = 2)
    public Float getI1Va32() {
        return i1Va32;
    }

    public void setI1Va32(Float i1Va32) {
        this.i1Va32 = i1Va32;
    }

    @Basic
    @Column(name = "I2va_32", nullable = true, precision = 2)
    public Float getI2Va32() {
        return i2Va32;
    }

    public void setI2Va32(Float i2Va32) {
        this.i2Va32 = i2Va32;
    }

    @Basic
    @Column(name = "I3va_32", nullable = true, precision = 2)
    public Float getI3Va32() {
        return i3Va32;
    }

    public void setI3Va32(Float i3Va32) {
        this.i3Va32 = i3Va32;
    }

    @Basic
    @Column(name = "U1xb_33", nullable = true, precision = 2)
    public Float getU1Xb33() {
        return u1Xb33;
    }

    public void setU1Xb33(Float u1Xb33) {
        this.u1Xb33 = u1Xb33;
    }

    @Basic
    @Column(name = "U2xb_33", nullable = true, precision = 2)
    public Float getU2Xb33() {
        return u2Xb33;
    }

    public void setU2Xb33(Float u2Xb33) {
        this.u2Xb33 = u2Xb33;
    }

    @Basic
    @Column(name = "U3xb_33", nullable = true, precision = 2)
    public Float getU3Xb33() {
        return u3Xb33;
    }

    public void setU3Xb33(Float u3Xb33) {
        this.u3Xb33 = u3Xb33;
    }

    @Basic
    @Column(name = "U1va_33", nullable = true, precision = 2)
    public Float getU1Va33() {
        return u1Va33;
    }

    public void setU1Va33(Float u1Va33) {
        this.u1Va33 = u1Va33;
    }

    @Basic
    @Column(name = "U2va_33", nullable = true, precision = 2)
    public Float getU2Va33() {
        return u2Va33;
    }

    public void setU2Va33(Float u2Va33) {
        this.u2Va33 = u2Va33;
    }

    @Basic
    @Column(name = "U3va_33", nullable = true, precision = 2)
    public Float getU3Va33() {
        return u3Va33;
    }

    public void setU3Va33(Float u3Va33) {
        this.u3Va33 = u3Va33;
    }

    @Basic
    @Column(name = "I1xb_33", nullable = true, precision = 2)
    public Float getI1Xb33() {
        return i1Xb33;
    }

    public void setI1Xb33(Float i1Xb33) {
        this.i1Xb33 = i1Xb33;
    }

    @Basic
    @Column(name = "I2xb_33", nullable = true, precision = 2)
    public Float getI2Xb33() {
        return i2Xb33;
    }

    public void setI2Xb33(Float i2Xb33) {
        this.i2Xb33 = i2Xb33;
    }

    @Basic
    @Column(name = "I3xb_33", nullable = true, precision = 2)
    public Float getI3Xb33() {
        return i3Xb33;
    }

    public void setI3Xb33(Float i3Xb33) {
        this.i3Xb33 = i3Xb33;
    }

    @Basic
    @Column(name = "I1va_33", nullable = true, precision = 2)
    public Float getI1Va33() {
        return i1Va33;
    }

    public void setI1Va33(Float i1Va33) {
        this.i1Va33 = i1Va33;
    }

    @Basic
    @Column(name = "I2va_33", nullable = true, precision = 2)
    public Float getI2Va33() {
        return i2Va33;
    }

    public void setI2Va33(Float i2Va33) {
        this.i2Va33 = i2Va33;
    }

    @Basic
    @Column(name = "I3va_33", nullable = true, precision = 2)
    public Float getI3Va33() {
        return i3Va33;
    }

    public void setI3Va33(Float i3Va33) {
        this.i3Va33 = i3Va33;
    }

    @Basic
    @Column(name = "U1xb_34", nullable = true, precision = 2)
    public Float getU1Xb34() {
        return u1Xb34;
    }

    public void setU1Xb34(Float u1Xb34) {
        this.u1Xb34 = u1Xb34;
    }

    @Basic
    @Column(name = "U2xb_34", nullable = true, precision = 2)
    public Float getU2Xb34() {
        return u2Xb34;
    }

    public void setU2Xb34(Float u2Xb34) {
        this.u2Xb34 = u2Xb34;
    }

    @Basic
    @Column(name = "U3xb_34", nullable = true, precision = 2)
    public Float getU3Xb34() {
        return u3Xb34;
    }

    public void setU3Xb34(Float u3Xb34) {
        this.u3Xb34 = u3Xb34;
    }

    @Basic
    @Column(name = "U1va_34", nullable = true, precision = 2)
    public Float getU1Va34() {
        return u1Va34;
    }

    public void setU1Va34(Float u1Va34) {
        this.u1Va34 = u1Va34;
    }

    @Basic
    @Column(name = "U2va_34", nullable = true, precision = 2)
    public Float getU2Va34() {
        return u2Va34;
    }

    public void setU2Va34(Float u2Va34) {
        this.u2Va34 = u2Va34;
    }

    @Basic
    @Column(name = "U3va_34", nullable = true, precision = 2)
    public Float getU3Va34() {
        return u3Va34;
    }

    public void setU3Va34(Float u3Va34) {
        this.u3Va34 = u3Va34;
    }

    @Basic
    @Column(name = "I1xb_34", nullable = true, precision = 2)
    public Float getI1Xb34() {
        return i1Xb34;
    }

    public void setI1Xb34(Float i1Xb34) {
        this.i1Xb34 = i1Xb34;
    }

    @Basic
    @Column(name = "I2xb_34", nullable = true, precision = 2)
    public Float getI2Xb34() {
        return i2Xb34;
    }

    public void setI2Xb34(Float i2Xb34) {
        this.i2Xb34 = i2Xb34;
    }

    @Basic
    @Column(name = "I3xb_34", nullable = true, precision = 2)
    public Float getI3Xb34() {
        return i3Xb34;
    }

    public void setI3Xb34(Float i3Xb34) {
        this.i3Xb34 = i3Xb34;
    }

    @Basic
    @Column(name = "I1va_34", nullable = true, precision = 2)
    public Float getI1Va34() {
        return i1Va34;
    }

    public void setI1Va34(Float i1Va34) {
        this.i1Va34 = i1Va34;
    }

    @Basic
    @Column(name = "I2va_34", nullable = true, precision = 2)
    public Float getI2Va34() {
        return i2Va34;
    }

    public void setI2Va34(Float i2Va34) {
        this.i2Va34 = i2Va34;
    }

    @Basic
    @Column(name = "I3va_34", nullable = true, precision = 2)
    public Float getI3Va34() {
        return i3Va34;
    }

    public void setI3Va34(Float i3Va34) {
        this.i3Va34 = i3Va34;
    }

    @Basic
    @Column(name = "U1xb_35", nullable = true, precision = 2)
    public Float getU1Xb35() {
        return u1Xb35;
    }

    public void setU1Xb35(Float u1Xb35) {
        this.u1Xb35 = u1Xb35;
    }

    @Basic
    @Column(name = "U2xb_35", nullable = true, precision = 2)
    public Float getU2Xb35() {
        return u2Xb35;
    }

    public void setU2Xb35(Float u2Xb35) {
        this.u2Xb35 = u2Xb35;
    }

    @Basic
    @Column(name = "U3xb_35", nullable = true, precision = 2)
    public Float getU3Xb35() {
        return u3Xb35;
    }

    public void setU3Xb35(Float u3Xb35) {
        this.u3Xb35 = u3Xb35;
    }

    @Basic
    @Column(name = "U1va_35", nullable = true, precision = 2)
    public Float getU1Va35() {
        return u1Va35;
    }

    public void setU1Va35(Float u1Va35) {
        this.u1Va35 = u1Va35;
    }

    @Basic
    @Column(name = "U2va_35", nullable = true, precision = 2)
    public Float getU2Va35() {
        return u2Va35;
    }

    public void setU2Va35(Float u2Va35) {
        this.u2Va35 = u2Va35;
    }

    @Basic
    @Column(name = "U3va_35", nullable = true, precision = 2)
    public Float getU3Va35() {
        return u3Va35;
    }

    public void setU3Va35(Float u3Va35) {
        this.u3Va35 = u3Va35;
    }

    @Basic
    @Column(name = "I1xb_35", nullable = true, precision = 2)
    public Float getI1Xb35() {
        return i1Xb35;
    }

    public void setI1Xb35(Float i1Xb35) {
        this.i1Xb35 = i1Xb35;
    }

    @Basic
    @Column(name = "I2xb_35", nullable = true, precision = 2)
    public Float getI2Xb35() {
        return i2Xb35;
    }

    public void setI2Xb35(Float i2Xb35) {
        this.i2Xb35 = i2Xb35;
    }

    @Basic
    @Column(name = "I3xb_35", nullable = true, precision = 2)
    public Float getI3Xb35() {
        return i3Xb35;
    }

    public void setI3Xb35(Float i3Xb35) {
        this.i3Xb35 = i3Xb35;
    }

    @Basic
    @Column(name = "I1va_35", nullable = true, precision = 2)
    public Float getI1Va35() {
        return i1Va35;
    }

    public void setI1Va35(Float i1Va35) {
        this.i1Va35 = i1Va35;
    }

    @Basic
    @Column(name = "I2va_35", nullable = true, precision = 2)
    public Float getI2Va35() {
        return i2Va35;
    }

    public void setI2Va35(Float i2Va35) {
        this.i2Va35 = i2Va35;
    }

    @Basic
    @Column(name = "I3va_35", nullable = true, precision = 2)
    public Float getI3Va35() {
        return i3Va35;
    }

    public void setI3Va35(Float i3Va35) {
        this.i3Va35 = i3Va35;
    }

    @Basic
    @Column(name = "U1xb_36", nullable = true, precision = 2)
    public Float getU1Xb36() {
        return u1Xb36;
    }

    public void setU1Xb36(Float u1Xb36) {
        this.u1Xb36 = u1Xb36;
    }

    @Basic
    @Column(name = "U2xb_36", nullable = true, precision = 2)
    public Float getU2Xb36() {
        return u2Xb36;
    }

    public void setU2Xb36(Float u2Xb36) {
        this.u2Xb36 = u2Xb36;
    }

    @Basic
    @Column(name = "U3xb_36", nullable = true, precision = 2)
    public Float getU3Xb36() {
        return u3Xb36;
    }

    public void setU3Xb36(Float u3Xb36) {
        this.u3Xb36 = u3Xb36;
    }

    @Basic
    @Column(name = "U1va_36", nullable = true, precision = 2)
    public Float getU1Va36() {
        return u1Va36;
    }

    public void setU1Va36(Float u1Va36) {
        this.u1Va36 = u1Va36;
    }

    @Basic
    @Column(name = "U2va_36", nullable = true, precision = 2)
    public Float getU2Va36() {
        return u2Va36;
    }

    public void setU2Va36(Float u2Va36) {
        this.u2Va36 = u2Va36;
    }

    @Basic
    @Column(name = "U3va_36", nullable = true, precision = 2)
    public Float getU3Va36() {
        return u3Va36;
    }

    public void setU3Va36(Float u3Va36) {
        this.u3Va36 = u3Va36;
    }

    @Basic
    @Column(name = "I1xb_36", nullable = true, precision = 2)
    public Float getI1Xb36() {
        return i1Xb36;
    }

    public void setI1Xb36(Float i1Xb36) {
        this.i1Xb36 = i1Xb36;
    }

    @Basic
    @Column(name = "I2xb_36", nullable = true, precision = 2)
    public Float getI2Xb36() {
        return i2Xb36;
    }

    public void setI2Xb36(Float i2Xb36) {
        this.i2Xb36 = i2Xb36;
    }

    @Basic
    @Column(name = "I3xb_36", nullable = true, precision = 2)
    public Float getI3Xb36() {
        return i3Xb36;
    }

    public void setI3Xb36(Float i3Xb36) {
        this.i3Xb36 = i3Xb36;
    }

    @Basic
    @Column(name = "I1va_36", nullable = true, precision = 2)
    public Float getI1Va36() {
        return i1Va36;
    }

    public void setI1Va36(Float i1Va36) {
        this.i1Va36 = i1Va36;
    }

    @Basic
    @Column(name = "I2va_36", nullable = true, precision = 2)
    public Float getI2Va36() {
        return i2Va36;
    }

    public void setI2Va36(Float i2Va36) {
        this.i2Va36 = i2Va36;
    }

    @Basic
    @Column(name = "I3va_36", nullable = true, precision = 2)
    public Float getI3Va36() {
        return i3Va36;
    }

    public void setI3Va36(Float i3Va36) {
        this.i3Va36 = i3Va36;
    }

    @Basic
    @Column(name = "U1xb_37", nullable = true, precision = 2)
    public Float getU1Xb37() {
        return u1Xb37;
    }

    public void setU1Xb37(Float u1Xb37) {
        this.u1Xb37 = u1Xb37;
    }

    @Basic
    @Column(name = "U2xb_37", nullable = true, precision = 2)
    public Float getU2Xb37() {
        return u2Xb37;
    }

    public void setU2Xb37(Float u2Xb37) {
        this.u2Xb37 = u2Xb37;
    }

    @Basic
    @Column(name = "U3xb_37", nullable = true, precision = 2)
    public Float getU3Xb37() {
        return u3Xb37;
    }

    public void setU3Xb37(Float u3Xb37) {
        this.u3Xb37 = u3Xb37;
    }

    @Basic
    @Column(name = "U1va_37", nullable = true, precision = 2)
    public Float getU1Va37() {
        return u1Va37;
    }

    public void setU1Va37(Float u1Va37) {
        this.u1Va37 = u1Va37;
    }

    @Basic
    @Column(name = "U2va_37", nullable = true, precision = 2)
    public Float getU2Va37() {
        return u2Va37;
    }

    public void setU2Va37(Float u2Va37) {
        this.u2Va37 = u2Va37;
    }

    @Basic
    @Column(name = "U3va_37", nullable = true, precision = 2)
    public Float getU3Va37() {
        return u3Va37;
    }

    public void setU3Va37(Float u3Va37) {
        this.u3Va37 = u3Va37;
    }

    @Basic
    @Column(name = "I1xb_37", nullable = true, precision = 2)
    public Float getI1Xb37() {
        return i1Xb37;
    }

    public void setI1Xb37(Float i1Xb37) {
        this.i1Xb37 = i1Xb37;
    }

    @Basic
    @Column(name = "I2xb_37", nullable = true, precision = 2)
    public Float getI2Xb37() {
        return i2Xb37;
    }

    public void setI2Xb37(Float i2Xb37) {
        this.i2Xb37 = i2Xb37;
    }

    @Basic
    @Column(name = "I3xb_37", nullable = true, precision = 2)
    public Float getI3Xb37() {
        return i3Xb37;
    }

    public void setI3Xb37(Float i3Xb37) {
        this.i3Xb37 = i3Xb37;
    }

    @Basic
    @Column(name = "I1va_37", nullable = true, precision = 2)
    public Float getI1Va37() {
        return i1Va37;
    }

    public void setI1Va37(Float i1Va37) {
        this.i1Va37 = i1Va37;
    }

    @Basic
    @Column(name = "I2va_37", nullable = true, precision = 2)
    public Float getI2Va37() {
        return i2Va37;
    }

    public void setI2Va37(Float i2Va37) {
        this.i2Va37 = i2Va37;
    }

    @Basic
    @Column(name = "I3va_37", nullable = true, precision = 2)
    public Float getI3Va37() {
        return i3Va37;
    }

    public void setI3Va37(Float i3Va37) {
        this.i3Va37 = i3Va37;
    }

    @Basic
    @Column(name = "U1xb_38", nullable = true, precision = 2)
    public Float getU1Xb38() {
        return u1Xb38;
    }

    public void setU1Xb38(Float u1Xb38) {
        this.u1Xb38 = u1Xb38;
    }

    @Basic
    @Column(name = "U2xb_38", nullable = true, precision = 2)
    public Float getU2Xb38() {
        return u2Xb38;
    }

    public void setU2Xb38(Float u2Xb38) {
        this.u2Xb38 = u2Xb38;
    }

    @Basic
    @Column(name = "U3xb_38", nullable = true, precision = 2)
    public Float getU3Xb38() {
        return u3Xb38;
    }

    public void setU3Xb38(Float u3Xb38) {
        this.u3Xb38 = u3Xb38;
    }

    @Basic
    @Column(name = "U1va_38", nullable = true, precision = 2)
    public Float getU1Va38() {
        return u1Va38;
    }

    public void setU1Va38(Float u1Va38) {
        this.u1Va38 = u1Va38;
    }

    @Basic
    @Column(name = "U2va_38", nullable = true, precision = 2)
    public Float getU2Va38() {
        return u2Va38;
    }

    public void setU2Va38(Float u2Va38) {
        this.u2Va38 = u2Va38;
    }

    @Basic
    @Column(name = "U3va_38", nullable = true, precision = 2)
    public Float getU3Va38() {
        return u3Va38;
    }

    public void setU3Va38(Float u3Va38) {
        this.u3Va38 = u3Va38;
    }

    @Basic
    @Column(name = "I1xb_38", nullable = true, precision = 2)
    public Float getI1Xb38() {
        return i1Xb38;
    }

    public void setI1Xb38(Float i1Xb38) {
        this.i1Xb38 = i1Xb38;
    }

    @Basic
    @Column(name = "I2xb_38", nullable = true, precision = 2)
    public Float getI2Xb38() {
        return i2Xb38;
    }

    public void setI2Xb38(Float i2Xb38) {
        this.i2Xb38 = i2Xb38;
    }

    @Basic
    @Column(name = "I3xb_38", nullable = true, precision = 2)
    public Float getI3Xb38() {
        return i3Xb38;
    }

    public void setI3Xb38(Float i3Xb38) {
        this.i3Xb38 = i3Xb38;
    }

    @Basic
    @Column(name = "I1va_38", nullable = true, precision = 2)
    public Float getI1Va38() {
        return i1Va38;
    }

    public void setI1Va38(Float i1Va38) {
        this.i1Va38 = i1Va38;
    }

    @Basic
    @Column(name = "I2va_38", nullable = true, precision = 2)
    public Float getI2Va38() {
        return i2Va38;
    }

    public void setI2Va38(Float i2Va38) {
        this.i2Va38 = i2Va38;
    }

    @Basic
    @Column(name = "I3va_38", nullable = true, precision = 2)
    public Float getI3Va38() {
        return i3Va38;
    }

    public void setI3Va38(Float i3Va38) {
        this.i3Va38 = i3Va38;
    }

    @Basic
    @Column(name = "U1xb_39", nullable = true, precision = 2)
    public Float getU1Xb39() {
        return u1Xb39;
    }

    public void setU1Xb39(Float u1Xb39) {
        this.u1Xb39 = u1Xb39;
    }

    @Basic
    @Column(name = "U2xb_39", nullable = true, precision = 2)
    public Float getU2Xb39() {
        return u2Xb39;
    }

    public void setU2Xb39(Float u2Xb39) {
        this.u2Xb39 = u2Xb39;
    }

    @Basic
    @Column(name = "U3xb_39", nullable = true, precision = 2)
    public Float getU3Xb39() {
        return u3Xb39;
    }

    public void setU3Xb39(Float u3Xb39) {
        this.u3Xb39 = u3Xb39;
    }

    @Basic
    @Column(name = "U1va_39", nullable = true, precision = 2)
    public Float getU1Va39() {
        return u1Va39;
    }

    public void setU1Va39(Float u1Va39) {
        this.u1Va39 = u1Va39;
    }

    @Basic
    @Column(name = "U2va_39", nullable = true, precision = 2)
    public Float getU2Va39() {
        return u2Va39;
    }

    public void setU2Va39(Float u2Va39) {
        this.u2Va39 = u2Va39;
    }

    @Basic
    @Column(name = "U3va_39", nullable = true, precision = 2)
    public Float getU3Va39() {
        return u3Va39;
    }

    public void setU3Va39(Float u3Va39) {
        this.u3Va39 = u3Va39;
    }

    @Basic
    @Column(name = "I1xb_39", nullable = true, precision = 2)
    public Float getI1Xb39() {
        return i1Xb39;
    }

    public void setI1Xb39(Float i1Xb39) {
        this.i1Xb39 = i1Xb39;
    }

    @Basic
    @Column(name = "I2xb_39", nullable = true, precision = 2)
    public Float getI2Xb39() {
        return i2Xb39;
    }

    public void setI2Xb39(Float i2Xb39) {
        this.i2Xb39 = i2Xb39;
    }

    @Basic
    @Column(name = "I3xb_39", nullable = true, precision = 2)
    public Float getI3Xb39() {
        return i3Xb39;
    }

    public void setI3Xb39(Float i3Xb39) {
        this.i3Xb39 = i3Xb39;
    }

    @Basic
    @Column(name = "I1va_39", nullable = true, precision = 2)
    public Float getI1Va39() {
        return i1Va39;
    }

    public void setI1Va39(Float i1Va39) {
        this.i1Va39 = i1Va39;
    }

    @Basic
    @Column(name = "I2va_39", nullable = true, precision = 2)
    public Float getI2Va39() {
        return i2Va39;
    }

    public void setI2Va39(Float i2Va39) {
        this.i2Va39 = i2Va39;
    }

    @Basic
    @Column(name = "I3va_39", nullable = true, precision = 2)
    public Float getI3Va39() {
        return i3Va39;
    }

    public void setI3Va39(Float i3Va39) {
        this.i3Va39 = i3Va39;
    }

    @Basic
    @Column(name = "U1xb_40", nullable = true, precision = 2)
    public Float getU1Xb40() {
        return u1Xb40;
    }

    public void setU1Xb40(Float u1Xb40) {
        this.u1Xb40 = u1Xb40;
    }

    @Basic
    @Column(name = "U2xb_40", nullable = true, precision = 2)
    public Float getU2Xb40() {
        return u2Xb40;
    }

    public void setU2Xb40(Float u2Xb40) {
        this.u2Xb40 = u2Xb40;
    }

    @Basic
    @Column(name = "U3xb_40", nullable = true, precision = 2)
    public Float getU3Xb40() {
        return u3Xb40;
    }

    public void setU3Xb40(Float u3Xb40) {
        this.u3Xb40 = u3Xb40;
    }

    @Basic
    @Column(name = "U1va_40", nullable = true, precision = 2)
    public Float getU1Va40() {
        return u1Va40;
    }

    public void setU1Va40(Float u1Va40) {
        this.u1Va40 = u1Va40;
    }

    @Basic
    @Column(name = "U2va_40", nullable = true, precision = 2)
    public Float getU2Va40() {
        return u2Va40;
    }

    public void setU2Va40(Float u2Va40) {
        this.u2Va40 = u2Va40;
    }

    @Basic
    @Column(name = "U3va_40", nullable = true, precision = 2)
    public Float getU3Va40() {
        return u3Va40;
    }

    public void setU3Va40(Float u3Va40) {
        this.u3Va40 = u3Va40;
    }

    @Basic
    @Column(name = "I1xb_40", nullable = true, precision = 2)
    public Float getI1Xb40() {
        return i1Xb40;
    }

    public void setI1Xb40(Float i1Xb40) {
        this.i1Xb40 = i1Xb40;
    }

    @Basic
    @Column(name = "I2xb_40", nullable = true, precision = 2)
    public Float getI2Xb40() {
        return i2Xb40;
    }

    public void setI2Xb40(Float i2Xb40) {
        this.i2Xb40 = i2Xb40;
    }

    @Basic
    @Column(name = "I3xb_40", nullable = true, precision = 2)
    public Float getI3Xb40() {
        return i3Xb40;
    }

    public void setI3Xb40(Float i3Xb40) {
        this.i3Xb40 = i3Xb40;
    }

    @Basic
    @Column(name = "I1va_40", nullable = true, precision = 2)
    public Float getI1Va40() {
        return i1Va40;
    }

    public void setI1Va40(Float i1Va40) {
        this.i1Va40 = i1Va40;
    }

    @Basic
    @Column(name = "I2va_40", nullable = true, precision = 2)
    public Float getI2Va40() {
        return i2Va40;
    }

    public void setI2Va40(Float i2Va40) {
        this.i2Va40 = i2Va40;
    }

    @Basic
    @Column(name = "I3va_40", nullable = true, precision = 2)
    public Float getI3Va40() {
        return i3Va40;
    }

    public void setI3Va40(Float i3Va40) {
        this.i3Va40 = i3Va40;
    }

    @Basic
    @Column(name = "U1xb_41", nullable = true, precision = 2)
    public Float getU1Xb41() {
        return u1Xb41;
    }

    public void setU1Xb41(Float u1Xb41) {
        this.u1Xb41 = u1Xb41;
    }

    @Basic
    @Column(name = "U2xb_41", nullable = true, precision = 2)
    public Float getU2Xb41() {
        return u2Xb41;
    }

    public void setU2Xb41(Float u2Xb41) {
        this.u2Xb41 = u2Xb41;
    }

    @Basic
    @Column(name = "U3xb_41", nullable = true, precision = 2)
    public Float getU3Xb41() {
        return u3Xb41;
    }

    public void setU3Xb41(Float u3Xb41) {
        this.u3Xb41 = u3Xb41;
    }

    @Basic
    @Column(name = "U1va_41", nullable = true, precision = 2)
    public Float getU1Va41() {
        return u1Va41;
    }

    public void setU1Va41(Float u1Va41) {
        this.u1Va41 = u1Va41;
    }

    @Basic
    @Column(name = "U2va_41", nullable = true, precision = 2)
    public Float getU2Va41() {
        return u2Va41;
    }

    public void setU2Va41(Float u2Va41) {
        this.u2Va41 = u2Va41;
    }

    @Basic
    @Column(name = "U3va_41", nullable = true, precision = 2)
    public Float getU3Va41() {
        return u3Va41;
    }

    public void setU3Va41(Float u3Va41) {
        this.u3Va41 = u3Va41;
    }

    @Basic
    @Column(name = "I1xb_41", nullable = true, precision = 2)
    public Float getI1Xb41() {
        return i1Xb41;
    }

    public void setI1Xb41(Float i1Xb41) {
        this.i1Xb41 = i1Xb41;
    }

    @Basic
    @Column(name = "I2xb_41", nullable = true, precision = 2)
    public Float getI2Xb41() {
        return i2Xb41;
    }

    public void setI2Xb41(Float i2Xb41) {
        this.i2Xb41 = i2Xb41;
    }

    @Basic
    @Column(name = "I3xb_41", nullable = true, precision = 2)
    public Float getI3Xb41() {
        return i3Xb41;
    }

    public void setI3Xb41(Float i3Xb41) {
        this.i3Xb41 = i3Xb41;
    }

    @Basic
    @Column(name = "I1va_41", nullable = true, precision = 2)
    public Float getI1Va41() {
        return i1Va41;
    }

    public void setI1Va41(Float i1Va41) {
        this.i1Va41 = i1Va41;
    }

    @Basic
    @Column(name = "I2va_41", nullable = true, precision = 2)
    public Float getI2Va41() {
        return i2Va41;
    }

    public void setI2Va41(Float i2Va41) {
        this.i2Va41 = i2Va41;
    }

    @Basic
    @Column(name = "I3va_41", nullable = true, precision = 2)
    public Float getI3Va41() {
        return i3Va41;
    }

    public void setI3Va41(Float i3Va41) {
        this.i3Va41 = i3Va41;
    }

    @Basic
    @Column(name = "U1xb_42", nullable = true, precision = 2)
    public Float getU1Xb42() {
        return u1Xb42;
    }

    public void setU1Xb42(Float u1Xb42) {
        this.u1Xb42 = u1Xb42;
    }

    @Basic
    @Column(name = "U2xb_42", nullable = true, precision = 2)
    public Float getU2Xb42() {
        return u2Xb42;
    }

    public void setU2Xb42(Float u2Xb42) {
        this.u2Xb42 = u2Xb42;
    }

    @Basic
    @Column(name = "U3xb_42", nullable = true, precision = 2)
    public Float getU3Xb42() {
        return u3Xb42;
    }

    public void setU3Xb42(Float u3Xb42) {
        this.u3Xb42 = u3Xb42;
    }

    @Basic
    @Column(name = "U1va_42", nullable = true, precision = 2)
    public Float getU1Va42() {
        return u1Va42;
    }

    public void setU1Va42(Float u1Va42) {
        this.u1Va42 = u1Va42;
    }

    @Basic
    @Column(name = "U2va_42", nullable = true, precision = 2)
    public Float getU2Va42() {
        return u2Va42;
    }

    public void setU2Va42(Float u2Va42) {
        this.u2Va42 = u2Va42;
    }

    @Basic
    @Column(name = "U3va_42", nullable = true, precision = 2)
    public Float getU3Va42() {
        return u3Va42;
    }

    public void setU3Va42(Float u3Va42) {
        this.u3Va42 = u3Va42;
    }

    @Basic
    @Column(name = "I1xb_42", nullable = true, precision = 2)
    public Float getI1Xb42() {
        return i1Xb42;
    }

    public void setI1Xb42(Float i1Xb42) {
        this.i1Xb42 = i1Xb42;
    }

    @Basic
    @Column(name = "I2xb_42", nullable = true, precision = 2)
    public Float getI2Xb42() {
        return i2Xb42;
    }

    public void setI2Xb42(Float i2Xb42) {
        this.i2Xb42 = i2Xb42;
    }

    @Basic
    @Column(name = "I3xb_42", nullable = true, precision = 2)
    public Float getI3Xb42() {
        return i3Xb42;
    }

    public void setI3Xb42(Float i3Xb42) {
        this.i3Xb42 = i3Xb42;
    }

    @Basic
    @Column(name = "I1va_42", nullable = true, precision = 2)
    public Float getI1Va42() {
        return i1Va42;
    }

    public void setI1Va42(Float i1Va42) {
        this.i1Va42 = i1Va42;
    }

    @Basic
    @Column(name = "I2va_42", nullable = true, precision = 2)
    public Float getI2Va42() {
        return i2Va42;
    }

    public void setI2Va42(Float i2Va42) {
        this.i2Va42 = i2Va42;
    }

    @Basic
    @Column(name = "I3va_42", nullable = true, precision = 2)
    public Float getI3Va42() {
        return i3Va42;
    }

    public void setI3Va42(Float i3Va42) {
        this.i3Va42 = i3Va42;
    }

    @Basic
    @Column(name = "U1xb_43", nullable = true, precision = 2)
    public Float getU1Xb43() {
        return u1Xb43;
    }

    public void setU1Xb43(Float u1Xb43) {
        this.u1Xb43 = u1Xb43;
    }

    @Basic
    @Column(name = "U2xb_43", nullable = true, precision = 2)
    public Float getU2Xb43() {
        return u2Xb43;
    }

    public void setU2Xb43(Float u2Xb43) {
        this.u2Xb43 = u2Xb43;
    }

    @Basic
    @Column(name = "U3xb_43", nullable = true, precision = 2)
    public Float getU3Xb43() {
        return u3Xb43;
    }

    public void setU3Xb43(Float u3Xb43) {
        this.u3Xb43 = u3Xb43;
    }

    @Basic
    @Column(name = "U1va_43", nullable = true, precision = 2)
    public Float getU1Va43() {
        return u1Va43;
    }

    public void setU1Va43(Float u1Va43) {
        this.u1Va43 = u1Va43;
    }

    @Basic
    @Column(name = "U2va_43", nullable = true, precision = 2)
    public Float getU2Va43() {
        return u2Va43;
    }

    public void setU2Va43(Float u2Va43) {
        this.u2Va43 = u2Va43;
    }

    @Basic
    @Column(name = "U3va_43", nullable = true, precision = 2)
    public Float getU3Va43() {
        return u3Va43;
    }

    public void setU3Va43(Float u3Va43) {
        this.u3Va43 = u3Va43;
    }

    @Basic
    @Column(name = "I1xb_43", nullable = true, precision = 2)
    public Float getI1Xb43() {
        return i1Xb43;
    }

    public void setI1Xb43(Float i1Xb43) {
        this.i1Xb43 = i1Xb43;
    }

    @Basic
    @Column(name = "I2xb_43", nullable = true, precision = 2)
    public Float getI2Xb43() {
        return i2Xb43;
    }

    public void setI2Xb43(Float i2Xb43) {
        this.i2Xb43 = i2Xb43;
    }

    @Basic
    @Column(name = "I3xb_43", nullable = true, precision = 2)
    public Float getI3Xb43() {
        return i3Xb43;
    }

    public void setI3Xb43(Float i3Xb43) {
        this.i3Xb43 = i3Xb43;
    }

    @Basic
    @Column(name = "I1va_43", nullable = true, precision = 2)
    public Float getI1Va43() {
        return i1Va43;
    }

    public void setI1Va43(Float i1Va43) {
        this.i1Va43 = i1Va43;
    }

    @Basic
    @Column(name = "I2va_43", nullable = true, precision = 2)
    public Float getI2Va43() {
        return i2Va43;
    }

    public void setI2Va43(Float i2Va43) {
        this.i2Va43 = i2Va43;
    }

    @Basic
    @Column(name = "I3va_43", nullable = true, precision = 2)
    public Float getI3Va43() {
        return i3Va43;
    }

    public void setI3Va43(Float i3Va43) {
        this.i3Va43 = i3Va43;
    }

    @Basic
    @Column(name = "U1xb_44", nullable = true, precision = 2)
    public Float getU1Xb44() {
        return u1Xb44;
    }

    public void setU1Xb44(Float u1Xb44) {
        this.u1Xb44 = u1Xb44;
    }

    @Basic
    @Column(name = "U2xb_44", nullable = true, precision = 2)
    public Float getU2Xb44() {
        return u2Xb44;
    }

    public void setU2Xb44(Float u2Xb44) {
        this.u2Xb44 = u2Xb44;
    }

    @Basic
    @Column(name = "U3xb_44", nullable = true, precision = 2)
    public Float getU3Xb44() {
        return u3Xb44;
    }

    public void setU3Xb44(Float u3Xb44) {
        this.u3Xb44 = u3Xb44;
    }

    @Basic
    @Column(name = "U1va_44", nullable = true, precision = 2)
    public Float getU1Va44() {
        return u1Va44;
    }

    public void setU1Va44(Float u1Va44) {
        this.u1Va44 = u1Va44;
    }

    @Basic
    @Column(name = "U2va_44", nullable = true, precision = 2)
    public Float getU2Va44() {
        return u2Va44;
    }

    public void setU2Va44(Float u2Va44) {
        this.u2Va44 = u2Va44;
    }

    @Basic
    @Column(name = "U3va_44", nullable = true, precision = 2)
    public Float getU3Va44() {
        return u3Va44;
    }

    public void setU3Va44(Float u3Va44) {
        this.u3Va44 = u3Va44;
    }

    @Basic
    @Column(name = "I1xb_44", nullable = true, precision = 2)
    public Float getI1Xb44() {
        return i1Xb44;
    }

    public void setI1Xb44(Float i1Xb44) {
        this.i1Xb44 = i1Xb44;
    }

    @Basic
    @Column(name = "I2xb_44", nullable = true, precision = 2)
    public Float getI2Xb44() {
        return i2Xb44;
    }

    public void setI2Xb44(Float i2Xb44) {
        this.i2Xb44 = i2Xb44;
    }

    @Basic
    @Column(name = "I3xb_44", nullable = true, precision = 2)
    public Float getI3Xb44() {
        return i3Xb44;
    }

    public void setI3Xb44(Float i3Xb44) {
        this.i3Xb44 = i3Xb44;
    }

    @Basic
    @Column(name = "I1va_44", nullable = true, precision = 2)
    public Float getI1Va44() {
        return i1Va44;
    }

    public void setI1Va44(Float i1Va44) {
        this.i1Va44 = i1Va44;
    }

    @Basic
    @Column(name = "I2va_44", nullable = true, precision = 2)
    public Float getI2Va44() {
        return i2Va44;
    }

    public void setI2Va44(Float i2Va44) {
        this.i2Va44 = i2Va44;
    }

    @Basic
    @Column(name = "I3va_44", nullable = true, precision = 2)
    public Float getI3Va44() {
        return i3Va44;
    }

    public void setI3Va44(Float i3Va44) {
        this.i3Va44 = i3Va44;
    }

    @Basic
    @Column(name = "U1xb_45", nullable = true, precision = 2)
    public Float getU1Xb45() {
        return u1Xb45;
    }

    public void setU1Xb45(Float u1Xb45) {
        this.u1Xb45 = u1Xb45;
    }

    @Basic
    @Column(name = "U2xb_45", nullable = true, precision = 2)
    public Float getU2Xb45() {
        return u2Xb45;
    }

    public void setU2Xb45(Float u2Xb45) {
        this.u2Xb45 = u2Xb45;
    }

    @Basic
    @Column(name = "U3xb_45", nullable = true, precision = 2)
    public Float getU3Xb45() {
        return u3Xb45;
    }

    public void setU3Xb45(Float u3Xb45) {
        this.u3Xb45 = u3Xb45;
    }

    @Basic
    @Column(name = "U1va_45", nullable = true, precision = 2)
    public Float getU1Va45() {
        return u1Va45;
    }

    public void setU1Va45(Float u1Va45) {
        this.u1Va45 = u1Va45;
    }

    @Basic
    @Column(name = "U2va_45", nullable = true, precision = 2)
    public Float getU2Va45() {
        return u2Va45;
    }

    public void setU2Va45(Float u2Va45) {
        this.u2Va45 = u2Va45;
    }

    @Basic
    @Column(name = "U3va_45", nullable = true, precision = 2)
    public Float getU3Va45() {
        return u3Va45;
    }

    public void setU3Va45(Float u3Va45) {
        this.u3Va45 = u3Va45;
    }

    @Basic
    @Column(name = "I1xb_45", nullable = true, precision = 2)
    public Float getI1Xb45() {
        return i1Xb45;
    }

    public void setI1Xb45(Float i1Xb45) {
        this.i1Xb45 = i1Xb45;
    }

    @Basic
    @Column(name = "I2xb_45", nullable = true, precision = 2)
    public Float getI2Xb45() {
        return i2Xb45;
    }

    public void setI2Xb45(Float i2Xb45) {
        this.i2Xb45 = i2Xb45;
    }

    @Basic
    @Column(name = "I3xb_45", nullable = true, precision = 2)
    public Float getI3Xb45() {
        return i3Xb45;
    }

    public void setI3Xb45(Float i3Xb45) {
        this.i3Xb45 = i3Xb45;
    }

    @Basic
    @Column(name = "I1va_45", nullable = true, precision = 2)
    public Float getI1Va45() {
        return i1Va45;
    }

    public void setI1Va45(Float i1Va45) {
        this.i1Va45 = i1Va45;
    }

    @Basic
    @Column(name = "I2va_45", nullable = true, precision = 2)
    public Float getI2Va45() {
        return i2Va45;
    }

    public void setI2Va45(Float i2Va45) {
        this.i2Va45 = i2Va45;
    }

    @Basic
    @Column(name = "I3va_45", nullable = true, precision = 2)
    public Float getI3Va45() {
        return i3Va45;
    }

    public void setI3Va45(Float i3Va45) {
        this.i3Va45 = i3Va45;
    }

    @Basic
    @Column(name = "U1xb_46", nullable = true, precision = 2)
    public Float getU1Xb46() {
        return u1Xb46;
    }

    public void setU1Xb46(Float u1Xb46) {
        this.u1Xb46 = u1Xb46;
    }

    @Basic
    @Column(name = "U2xb_46", nullable = true, precision = 2)
    public Float getU2Xb46() {
        return u2Xb46;
    }

    public void setU2Xb46(Float u2Xb46) {
        this.u2Xb46 = u2Xb46;
    }

    @Basic
    @Column(name = "U3xb_46", nullable = true, precision = 2)
    public Float getU3Xb46() {
        return u3Xb46;
    }

    public void setU3Xb46(Float u3Xb46) {
        this.u3Xb46 = u3Xb46;
    }

    @Basic
    @Column(name = "U1va_46", nullable = true, precision = 2)
    public Float getU1Va46() {
        return u1Va46;
    }

    public void setU1Va46(Float u1Va46) {
        this.u1Va46 = u1Va46;
    }

    @Basic
    @Column(name = "U2va_46", nullable = true, precision = 2)
    public Float getU2Va46() {
        return u2Va46;
    }

    public void setU2Va46(Float u2Va46) {
        this.u2Va46 = u2Va46;
    }

    @Basic
    @Column(name = "U3va_46", nullable = true, precision = 2)
    public Float getU3Va46() {
        return u3Va46;
    }

    public void setU3Va46(Float u3Va46) {
        this.u3Va46 = u3Va46;
    }

    @Basic
    @Column(name = "I1xb_46", nullable = true, precision = 2)
    public Float getI1Xb46() {
        return i1Xb46;
    }

    public void setI1Xb46(Float i1Xb46) {
        this.i1Xb46 = i1Xb46;
    }

    @Basic
    @Column(name = "I2xb_46", nullable = true, precision = 2)
    public Float getI2Xb46() {
        return i2Xb46;
    }

    public void setI2Xb46(Float i2Xb46) {
        this.i2Xb46 = i2Xb46;
    }

    @Basic
    @Column(name = "I3xb_46", nullable = true, precision = 2)
    public Float getI3Xb46() {
        return i3Xb46;
    }

    public void setI3Xb46(Float i3Xb46) {
        this.i3Xb46 = i3Xb46;
    }

    @Basic
    @Column(name = "I1va_46", nullable = true, precision = 2)
    public Float getI1Va46() {
        return i1Va46;
    }

    public void setI1Va46(Float i1Va46) {
        this.i1Va46 = i1Va46;
    }

    @Basic
    @Column(name = "I2va_46", nullable = true, precision = 2)
    public Float getI2Va46() {
        return i2Va46;
    }

    public void setI2Va46(Float i2Va46) {
        this.i2Va46 = i2Va46;
    }

    @Basic
    @Column(name = "I3va_46", nullable = true, precision = 2)
    public Float getI3Va46() {
        return i3Va46;
    }

    public void setI3Va46(Float i3Va46) {
        this.i3Va46 = i3Va46;
    }

    @Basic
    @Column(name = "U1xb_47", nullable = true, precision = 2)
    public Float getU1Xb47() {
        return u1Xb47;
    }

    public void setU1Xb47(Float u1Xb47) {
        this.u1Xb47 = u1Xb47;
    }

    @Basic
    @Column(name = "U2xb_47", nullable = true, precision = 2)
    public Float getU2Xb47() {
        return u2Xb47;
    }

    public void setU2Xb47(Float u2Xb47) {
        this.u2Xb47 = u2Xb47;
    }

    @Basic
    @Column(name = "U3xb_47", nullable = true, precision = 2)
    public Float getU3Xb47() {
        return u3Xb47;
    }

    public void setU3Xb47(Float u3Xb47) {
        this.u3Xb47 = u3Xb47;
    }

    @Basic
    @Column(name = "U1va_47", nullable = true, precision = 2)
    public Float getU1Va47() {
        return u1Va47;
    }

    public void setU1Va47(Float u1Va47) {
        this.u1Va47 = u1Va47;
    }

    @Basic
    @Column(name = "U2va_47", nullable = true, precision = 2)
    public Float getU2Va47() {
        return u2Va47;
    }

    public void setU2Va47(Float u2Va47) {
        this.u2Va47 = u2Va47;
    }

    @Basic
    @Column(name = "U3va_47", nullable = true, precision = 2)
    public Float getU3Va47() {
        return u3Va47;
    }

    public void setU3Va47(Float u3Va47) {
        this.u3Va47 = u3Va47;
    }

    @Basic
    @Column(name = "I1xb_47", nullable = true, precision = 2)
    public Float getI1Xb47() {
        return i1Xb47;
    }

    public void setI1Xb47(Float i1Xb47) {
        this.i1Xb47 = i1Xb47;
    }

    @Basic
    @Column(name = "I2xb_47", nullable = true, precision = 2)
    public Float getI2Xb47() {
        return i2Xb47;
    }

    public void setI2Xb47(Float i2Xb47) {
        this.i2Xb47 = i2Xb47;
    }

    @Basic
    @Column(name = "I3xb_47", nullable = true, precision = 2)
    public Float getI3Xb47() {
        return i3Xb47;
    }

    public void setI3Xb47(Float i3Xb47) {
        this.i3Xb47 = i3Xb47;
    }

    @Basic
    @Column(name = "I1va_47", nullable = true, precision = 2)
    public Float getI1Va47() {
        return i1Va47;
    }

    public void setI1Va47(Float i1Va47) {
        this.i1Va47 = i1Va47;
    }

    @Basic
    @Column(name = "I2va_47", nullable = true, precision = 2)
    public Float getI2Va47() {
        return i2Va47;
    }

    public void setI2Va47(Float i2Va47) {
        this.i2Va47 = i2Va47;
    }

    @Basic
    @Column(name = "I3va_47", nullable = true, precision = 2)
    public Float getI3Va47() {
        return i3Va47;
    }

    public void setI3Va47(Float i3Va47) {
        this.i3Va47 = i3Va47;
    }

    @Basic
    @Column(name = "U1xb_48", nullable = true, precision = 2)
    public Float getU1Xb48() {
        return u1Xb48;
    }

    public void setU1Xb48(Float u1Xb48) {
        this.u1Xb48 = u1Xb48;
    }

    @Basic
    @Column(name = "U2xb_48", nullable = true, precision = 2)
    public Float getU2Xb48() {
        return u2Xb48;
    }

    public void setU2Xb48(Float u2Xb48) {
        this.u2Xb48 = u2Xb48;
    }

    @Basic
    @Column(name = "U3xb_48", nullable = true, precision = 2)
    public Float getU3Xb48() {
        return u3Xb48;
    }

    public void setU3Xb48(Float u3Xb48) {
        this.u3Xb48 = u3Xb48;
    }

    @Basic
    @Column(name = "U1va_48", nullable = true, precision = 2)
    public Float getU1Va48() {
        return u1Va48;
    }

    public void setU1Va48(Float u1Va48) {
        this.u1Va48 = u1Va48;
    }

    @Basic
    @Column(name = "U2va_48", nullable = true, precision = 2)
    public Float getU2Va48() {
        return u2Va48;
    }

    public void setU2Va48(Float u2Va48) {
        this.u2Va48 = u2Va48;
    }

    @Basic
    @Column(name = "U3va_48", nullable = true, precision = 2)
    public Float getU3Va48() {
        return u3Va48;
    }

    public void setU3Va48(Float u3Va48) {
        this.u3Va48 = u3Va48;
    }

    @Basic
    @Column(name = "I1xb_48", nullable = true, precision = 2)
    public Float getI1Xb48() {
        return i1Xb48;
    }

    public void setI1Xb48(Float i1Xb48) {
        this.i1Xb48 = i1Xb48;
    }

    @Basic
    @Column(name = "I2xb_48", nullable = true, precision = 2)
    public Float getI2Xb48() {
        return i2Xb48;
    }

    public void setI2Xb48(Float i2Xb48) {
        this.i2Xb48 = i2Xb48;
    }

    @Basic
    @Column(name = "I3xb_48", nullable = true, precision = 2)
    public Float getI3Xb48() {
        return i3Xb48;
    }

    public void setI3Xb48(Float i3Xb48) {
        this.i3Xb48 = i3Xb48;
    }

    @Basic
    @Column(name = "I1va_48", nullable = true, precision = 2)
    public Float getI1Va48() {
        return i1Va48;
    }

    public void setI1Va48(Float i1Va48) {
        this.i1Va48 = i1Va48;
    }

    @Basic
    @Column(name = "I2va_48", nullable = true, precision = 2)
    public Float getI2Va48() {
        return i2Va48;
    }

    public void setI2Va48(Float i2Va48) {
        this.i2Va48 = i2Va48;
    }

    @Basic
    @Column(name = "I3va_48", nullable = true, precision = 2)
    public Float getI3Va48() {
        return i3Va48;
    }

    public void setI3Va48(Float i3Va48) {
        this.i3Va48 = i3Va48;
    }

    @Basic
    @Column(name = "U1xb_49", nullable = true, precision = 2)
    public Float getU1Xb49() {
        return u1Xb49;
    }

    public void setU1Xb49(Float u1Xb49) {
        this.u1Xb49 = u1Xb49;
    }

    @Basic
    @Column(name = "U2xb_49", nullable = true, precision = 2)
    public Float getU2Xb49() {
        return u2Xb49;
    }

    public void setU2Xb49(Float u2Xb49) {
        this.u2Xb49 = u2Xb49;
    }

    @Basic
    @Column(name = "U3xb_49", nullable = true, precision = 2)
    public Float getU3Xb49() {
        return u3Xb49;
    }

    public void setU3Xb49(Float u3Xb49) {
        this.u3Xb49 = u3Xb49;
    }

    @Basic
    @Column(name = "U1va_49", nullable = true, precision = 2)
    public Float getU1Va49() {
        return u1Va49;
    }

    public void setU1Va49(Float u1Va49) {
        this.u1Va49 = u1Va49;
    }

    @Basic
    @Column(name = "U2va_49", nullable = true, precision = 2)
    public Float getU2Va49() {
        return u2Va49;
    }

    public void setU2Va49(Float u2Va49) {
        this.u2Va49 = u2Va49;
    }

    @Basic
    @Column(name = "U3va_49", nullable = true, precision = 2)
    public Float getU3Va49() {
        return u3Va49;
    }

    public void setU3Va49(Float u3Va49) {
        this.u3Va49 = u3Va49;
    }

    @Basic
    @Column(name = "I1xb_49", nullable = true, precision = 2)
    public Float getI1Xb49() {
        return i1Xb49;
    }

    public void setI1Xb49(Float i1Xb49) {
        this.i1Xb49 = i1Xb49;
    }

    @Basic
    @Column(name = "I2xb_49", nullable = true, precision = 2)
    public Float getI2Xb49() {
        return i2Xb49;
    }

    public void setI2Xb49(Float i2Xb49) {
        this.i2Xb49 = i2Xb49;
    }

    @Basic
    @Column(name = "I3xb_49", nullable = true, precision = 2)
    public Float getI3Xb49() {
        return i3Xb49;
    }

    public void setI3Xb49(Float i3Xb49) {
        this.i3Xb49 = i3Xb49;
    }

    @Basic
    @Column(name = "I1va_49", nullable = true, precision = 2)
    public Float getI1Va49() {
        return i1Va49;
    }

    public void setI1Va49(Float i1Va49) {
        this.i1Va49 = i1Va49;
    }

    @Basic
    @Column(name = "I2va_49", nullable = true, precision = 2)
    public Float getI2Va49() {
        return i2Va49;
    }

    public void setI2Va49(Float i2Va49) {
        this.i2Va49 = i2Va49;
    }

    @Basic
    @Column(name = "I3va_49", nullable = true, precision = 2)
    public Float getI3Va49() {
        return i3Va49;
    }

    public void setI3Va49(Float i3Va49) {
        this.i3Va49 = i3Va49;
    }

    @Basic
    @Column(name = "U1xb_50", nullable = true, precision = 2)
    public Float getU1Xb50() {
        return u1Xb50;
    }

    public void setU1Xb50(Float u1Xb50) {
        this.u1Xb50 = u1Xb50;
    }

    @Basic
    @Column(name = "U2xb_50", nullable = true, precision = 2)
    public Float getU2Xb50() {
        return u2Xb50;
    }

    public void setU2Xb50(Float u2Xb50) {
        this.u2Xb50 = u2Xb50;
    }

    @Basic
    @Column(name = "U3xb_50", nullable = true, precision = 2)
    public Float getU3Xb50() {
        return u3Xb50;
    }

    public void setU3Xb50(Float u3Xb50) {
        this.u3Xb50 = u3Xb50;
    }

    @Basic
    @Column(name = "U1va_50", nullable = true, precision = 2)
    public Float getU1Va50() {
        return u1Va50;
    }

    public void setU1Va50(Float u1Va50) {
        this.u1Va50 = u1Va50;
    }

    @Basic
    @Column(name = "U2va_50", nullable = true, precision = 2)
    public Float getU2Va50() {
        return u2Va50;
    }

    public void setU2Va50(Float u2Va50) {
        this.u2Va50 = u2Va50;
    }

    @Basic
    @Column(name = "U3va_50", nullable = true, precision = 2)
    public Float getU3Va50() {
        return u3Va50;
    }

    public void setU3Va50(Float u3Va50) {
        this.u3Va50 = u3Va50;
    }

    @Basic
    @Column(name = "I1xb_50", nullable = true, precision = 2)
    public Float getI1Xb50() {
        return i1Xb50;
    }

    public void setI1Xb50(Float i1Xb50) {
        this.i1Xb50 = i1Xb50;
    }

    @Basic
    @Column(name = "I2xb_50", nullable = true, precision = 2)
    public Float getI2Xb50() {
        return i2Xb50;
    }

    public void setI2Xb50(Float i2Xb50) {
        this.i2Xb50 = i2Xb50;
    }

    @Basic
    @Column(name = "I3xb_50", nullable = true, precision = 2)
    public Float getI3Xb50() {
        return i3Xb50;
    }

    public void setI3Xb50(Float i3Xb50) {
        this.i3Xb50 = i3Xb50;
    }

    @Basic
    @Column(name = "I1va_50", nullable = true, precision = 2)
    public Float getI1Va50() {
        return i1Va50;
    }

    public void setI1Va50(Float i1Va50) {
        this.i1Va50 = i1Va50;
    }

    @Basic
    @Column(name = "I2va_50", nullable = true, precision = 2)
    public Float getI2Va50() {
        return i2Va50;
    }

    public void setI2Va50(Float i2Va50) {
        this.i2Va50 = i2Va50;
    }

    @Basic
    @Column(name = "I3va_50", nullable = true, precision = 2)
    public Float getI3Va50() {
        return i3Va50;
    }

    public void setI3Va50(Float i3Va50) {
        this.i3Va50 = i3Va50;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PowerxbMonitor that = (PowerxbMonitor) o;
        return xbid == that.xbid &&
                Objects.equals(mpid, that.mpid) &&
                Objects.equals(time, that.time) &&
                Objects.equals(u1Xb1, that.u1Xb1) &&
                Objects.equals(u2Xb1, that.u2Xb1) &&
                Objects.equals(u3Xb1, that.u3Xb1) &&
                Objects.equals(u1Va1, that.u1Va1) &&
                Objects.equals(u2Va1, that.u2Va1) &&
                Objects.equals(u3Va1, that.u3Va1) &&
                Objects.equals(i1Xb1, that.i1Xb1) &&
                Objects.equals(i2Xb1, that.i2Xb1) &&
                Objects.equals(i3Xb1, that.i3Xb1) &&
                Objects.equals(i1Va1, that.i1Va1) &&
                Objects.equals(i2Va1, that.i2Va1) &&
                Objects.equals(i3Va1, that.i3Va1) &&
                Objects.equals(u1Xb2, that.u1Xb2) &&
                Objects.equals(u2Xb2, that.u2Xb2) &&
                Objects.equals(u3Xb2, that.u3Xb2) &&
                Objects.equals(u1Va2, that.u1Va2) &&
                Objects.equals(u2Va2, that.u2Va2) &&
                Objects.equals(u3Va2, that.u3Va2) &&
                Objects.equals(i1Xb2, that.i1Xb2) &&
                Objects.equals(i2Xb2, that.i2Xb2) &&
                Objects.equals(i3Xb2, that.i3Xb2) &&
                Objects.equals(i1Va2, that.i1Va2) &&
                Objects.equals(i2Va2, that.i2Va2) &&
                Objects.equals(i3Va2, that.i3Va2) &&
                Objects.equals(u1Xb3, that.u1Xb3) &&
                Objects.equals(u2Xb3, that.u2Xb3) &&
                Objects.equals(u3Xb3, that.u3Xb3) &&
                Objects.equals(u1Va3, that.u1Va3) &&
                Objects.equals(u2Va3, that.u2Va3) &&
                Objects.equals(u3Va3, that.u3Va3) &&
                Objects.equals(i1Xb3, that.i1Xb3) &&
                Objects.equals(i2Xb3, that.i2Xb3) &&
                Objects.equals(i3Xb3, that.i3Xb3) &&
                Objects.equals(i1Va3, that.i1Va3) &&
                Objects.equals(i2Va3, that.i2Va3) &&
                Objects.equals(i3Va3, that.i3Va3) &&
                Objects.equals(u1Xb4, that.u1Xb4) &&
                Objects.equals(u2Xb4, that.u2Xb4) &&
                Objects.equals(u3Xb4, that.u3Xb4) &&
                Objects.equals(u1Va4, that.u1Va4) &&
                Objects.equals(u2Va4, that.u2Va4) &&
                Objects.equals(u3Va4, that.u3Va4) &&
                Objects.equals(i1Xb4, that.i1Xb4) &&
                Objects.equals(i2Xb4, that.i2Xb4) &&
                Objects.equals(i3Xb4, that.i3Xb4) &&
                Objects.equals(i1Va4, that.i1Va4) &&
                Objects.equals(i2Va4, that.i2Va4) &&
                Objects.equals(i3Va4, that.i3Va4) &&
                Objects.equals(u1Xb5, that.u1Xb5) &&
                Objects.equals(u2Xb5, that.u2Xb5) &&
                Objects.equals(u3Xb5, that.u3Xb5) &&
                Objects.equals(u1Va5, that.u1Va5) &&
                Objects.equals(u2Va5, that.u2Va5) &&
                Objects.equals(u3Va5, that.u3Va5) &&
                Objects.equals(i1Xb5, that.i1Xb5) &&
                Objects.equals(i2Xb5, that.i2Xb5) &&
                Objects.equals(i3Xb5, that.i3Xb5) &&
                Objects.equals(i1Va5, that.i1Va5) &&
                Objects.equals(i2Va5, that.i2Va5) &&
                Objects.equals(i3Va5, that.i3Va5) &&
                Objects.equals(u1Xb6, that.u1Xb6) &&
                Objects.equals(u2Xb6, that.u2Xb6) &&
                Objects.equals(u3Xb6, that.u3Xb6) &&
                Objects.equals(u1Va6, that.u1Va6) &&
                Objects.equals(u2Va6, that.u2Va6) &&
                Objects.equals(u3Va6, that.u3Va6) &&
                Objects.equals(i1Xb6, that.i1Xb6) &&
                Objects.equals(i2Xb6, that.i2Xb6) &&
                Objects.equals(i3Xb6, that.i3Xb6) &&
                Objects.equals(i1Va6, that.i1Va6) &&
                Objects.equals(i2Va6, that.i2Va6) &&
                Objects.equals(i3Va6, that.i3Va6) &&
                Objects.equals(u1Xb7, that.u1Xb7) &&
                Objects.equals(u2Xb7, that.u2Xb7) &&
                Objects.equals(u3Xb7, that.u3Xb7) &&
                Objects.equals(u1Va7, that.u1Va7) &&
                Objects.equals(u2Va7, that.u2Va7) &&
                Objects.equals(u3Va7, that.u3Va7) &&
                Objects.equals(i1Xb7, that.i1Xb7) &&
                Objects.equals(i2Xb7, that.i2Xb7) &&
                Objects.equals(i3Xb7, that.i3Xb7) &&
                Objects.equals(i1Va7, that.i1Va7) &&
                Objects.equals(i2Va7, that.i2Va7) &&
                Objects.equals(i3Va7, that.i3Va7) &&
                Objects.equals(u1Xb8, that.u1Xb8) &&
                Objects.equals(u2Xb8, that.u2Xb8) &&
                Objects.equals(u3Xb8, that.u3Xb8) &&
                Objects.equals(u1Va8, that.u1Va8) &&
                Objects.equals(u2Va8, that.u2Va8) &&
                Objects.equals(u3Va8, that.u3Va8) &&
                Objects.equals(i1Xb8, that.i1Xb8) &&
                Objects.equals(i2Xb8, that.i2Xb8) &&
                Objects.equals(i3Xb8, that.i3Xb8) &&
                Objects.equals(i1Va8, that.i1Va8) &&
                Objects.equals(i2Va8, that.i2Va8) &&
                Objects.equals(i3Va8, that.i3Va8) &&
                Objects.equals(u1Xb9, that.u1Xb9) &&
                Objects.equals(u2Xb9, that.u2Xb9) &&
                Objects.equals(u3Xb9, that.u3Xb9) &&
                Objects.equals(u1Va9, that.u1Va9) &&
                Objects.equals(u2Va9, that.u2Va9) &&
                Objects.equals(u3Va9, that.u3Va9) &&
                Objects.equals(i1Xb9, that.i1Xb9) &&
                Objects.equals(i2Xb9, that.i2Xb9) &&
                Objects.equals(i3Xb9, that.i3Xb9) &&
                Objects.equals(i1Va9, that.i1Va9) &&
                Objects.equals(i2Va9, that.i2Va9) &&
                Objects.equals(i3Va9, that.i3Va9) &&
                Objects.equals(u1Xb10, that.u1Xb10) &&
                Objects.equals(u2Xb10, that.u2Xb10) &&
                Objects.equals(u3Xb10, that.u3Xb10) &&
                Objects.equals(u1Va10, that.u1Va10) &&
                Objects.equals(u2Va10, that.u2Va10) &&
                Objects.equals(u3Va10, that.u3Va10) &&
                Objects.equals(i1Xb10, that.i1Xb10) &&
                Objects.equals(i2Xb10, that.i2Xb10) &&
                Objects.equals(i3Xb10, that.i3Xb10) &&
                Objects.equals(i1Va10, that.i1Va10) &&
                Objects.equals(i2Va10, that.i2Va10) &&
                Objects.equals(i3Va10, that.i3Va10) &&
                Objects.equals(u1Xb11, that.u1Xb11) &&
                Objects.equals(u2Xb11, that.u2Xb11) &&
                Objects.equals(u3Xb11, that.u3Xb11) &&
                Objects.equals(u1Va11, that.u1Va11) &&
                Objects.equals(u2Va11, that.u2Va11) &&
                Objects.equals(u3Va11, that.u3Va11) &&
                Objects.equals(i1Xb11, that.i1Xb11) &&
                Objects.equals(i2Xb11, that.i2Xb11) &&
                Objects.equals(i3Xb11, that.i3Xb11) &&
                Objects.equals(i1Va11, that.i1Va11) &&
                Objects.equals(i2Va11, that.i2Va11) &&
                Objects.equals(i3Va11, that.i3Va11) &&
                Objects.equals(u1Xb12, that.u1Xb12) &&
                Objects.equals(u2Xb12, that.u2Xb12) &&
                Objects.equals(u3Xb12, that.u3Xb12) &&
                Objects.equals(u1Va12, that.u1Va12) &&
                Objects.equals(u2Va12, that.u2Va12) &&
                Objects.equals(u3Va12, that.u3Va12) &&
                Objects.equals(i1Xb12, that.i1Xb12) &&
                Objects.equals(i2Xb12, that.i2Xb12) &&
                Objects.equals(i3Xb12, that.i3Xb12) &&
                Objects.equals(i1Va12, that.i1Va12) &&
                Objects.equals(i2Va12, that.i2Va12) &&
                Objects.equals(i3Va12, that.i3Va12) &&
                Objects.equals(u1Xb13, that.u1Xb13) &&
                Objects.equals(u2Xb13, that.u2Xb13) &&
                Objects.equals(u3Xb13, that.u3Xb13) &&
                Objects.equals(u1Va13, that.u1Va13) &&
                Objects.equals(u2Va13, that.u2Va13) &&
                Objects.equals(u3Va13, that.u3Va13) &&
                Objects.equals(i1Xb13, that.i1Xb13) &&
                Objects.equals(i2Xb13, that.i2Xb13) &&
                Objects.equals(i3Xb13, that.i3Xb13) &&
                Objects.equals(i1Va13, that.i1Va13) &&
                Objects.equals(i2Va13, that.i2Va13) &&
                Objects.equals(i3Va13, that.i3Va13) &&
                Objects.equals(u1Xb14, that.u1Xb14) &&
                Objects.equals(u2Xb14, that.u2Xb14) &&
                Objects.equals(u3Xb14, that.u3Xb14) &&
                Objects.equals(u1Va14, that.u1Va14) &&
                Objects.equals(u2Va14, that.u2Va14) &&
                Objects.equals(u3Va14, that.u3Va14) &&
                Objects.equals(i1Xb14, that.i1Xb14) &&
                Objects.equals(i2Xb14, that.i2Xb14) &&
                Objects.equals(i3Xb14, that.i3Xb14) &&
                Objects.equals(i1Va14, that.i1Va14) &&
                Objects.equals(i2Va14, that.i2Va14) &&
                Objects.equals(i3Va14, that.i3Va14) &&
                Objects.equals(u1Xb15, that.u1Xb15) &&
                Objects.equals(u2Xb15, that.u2Xb15) &&
                Objects.equals(u3Xb15, that.u3Xb15) &&
                Objects.equals(u1Va15, that.u1Va15) &&
                Objects.equals(u2Va15, that.u2Va15) &&
                Objects.equals(u3Va15, that.u3Va15) &&
                Objects.equals(i1Xb15, that.i1Xb15) &&
                Objects.equals(i2Xb15, that.i2Xb15) &&
                Objects.equals(i3Xb15, that.i3Xb15) &&
                Objects.equals(i1Va15, that.i1Va15) &&
                Objects.equals(i2Va15, that.i2Va15) &&
                Objects.equals(i3Va15, that.i3Va15) &&
                Objects.equals(u1Xb16, that.u1Xb16) &&
                Objects.equals(u2Xb16, that.u2Xb16) &&
                Objects.equals(u3Xb16, that.u3Xb16) &&
                Objects.equals(u1Va16, that.u1Va16) &&
                Objects.equals(u2Va16, that.u2Va16) &&
                Objects.equals(u3Va16, that.u3Va16) &&
                Objects.equals(i1Xb16, that.i1Xb16) &&
                Objects.equals(i2Xb16, that.i2Xb16) &&
                Objects.equals(i3Xb16, that.i3Xb16) &&
                Objects.equals(i1Va16, that.i1Va16) &&
                Objects.equals(i2Va16, that.i2Va16) &&
                Objects.equals(i3Va16, that.i3Va16) &&
                Objects.equals(u1Xb17, that.u1Xb17) &&
                Objects.equals(u2Xb17, that.u2Xb17) &&
                Objects.equals(u3Xb17, that.u3Xb17) &&
                Objects.equals(u1Va17, that.u1Va17) &&
                Objects.equals(u2Va17, that.u2Va17) &&
                Objects.equals(u3Va17, that.u3Va17) &&
                Objects.equals(i1Xb17, that.i1Xb17) &&
                Objects.equals(i2Xb17, that.i2Xb17) &&
                Objects.equals(i3Xb17, that.i3Xb17) &&
                Objects.equals(i1Va17, that.i1Va17) &&
                Objects.equals(i2Va17, that.i2Va17) &&
                Objects.equals(i3Va17, that.i3Va17) &&
                Objects.equals(u1Xb18, that.u1Xb18) &&
                Objects.equals(u2Xb18, that.u2Xb18) &&
                Objects.equals(u3Xb18, that.u3Xb18) &&
                Objects.equals(u1Va18, that.u1Va18) &&
                Objects.equals(u2Va18, that.u2Va18) &&
                Objects.equals(u3Va18, that.u3Va18) &&
                Objects.equals(i1Xb18, that.i1Xb18) &&
                Objects.equals(i2Xb18, that.i2Xb18) &&
                Objects.equals(i3Xb18, that.i3Xb18) &&
                Objects.equals(i1Va18, that.i1Va18) &&
                Objects.equals(i2Va18, that.i2Va18) &&
                Objects.equals(i3Va18, that.i3Va18) &&
                Objects.equals(u1Xb19, that.u1Xb19) &&
                Objects.equals(u2Xb19, that.u2Xb19) &&
                Objects.equals(u3Xb19, that.u3Xb19) &&
                Objects.equals(u1Va19, that.u1Va19) &&
                Objects.equals(u2Va19, that.u2Va19) &&
                Objects.equals(u3Va19, that.u3Va19) &&
                Objects.equals(i1Xb19, that.i1Xb19) &&
                Objects.equals(i2Xb19, that.i2Xb19) &&
                Objects.equals(i3Xb19, that.i3Xb19) &&
                Objects.equals(i1Va19, that.i1Va19) &&
                Objects.equals(i2Va19, that.i2Va19) &&
                Objects.equals(i3Va19, that.i3Va19) &&
                Objects.equals(u1Xb20, that.u1Xb20) &&
                Objects.equals(u2Xb20, that.u2Xb20) &&
                Objects.equals(u3Xb20, that.u3Xb20) &&
                Objects.equals(u1Va20, that.u1Va20) &&
                Objects.equals(u2Va20, that.u2Va20) &&
                Objects.equals(u3Va20, that.u3Va20) &&
                Objects.equals(i1Xb20, that.i1Xb20) &&
                Objects.equals(i2Xb20, that.i2Xb20) &&
                Objects.equals(i3Xb20, that.i3Xb20) &&
                Objects.equals(i1Va20, that.i1Va20) &&
                Objects.equals(i2Va20, that.i2Va20) &&
                Objects.equals(i3Va20, that.i3Va20) &&
                Objects.equals(u1Xb21, that.u1Xb21) &&
                Objects.equals(u2Xb21, that.u2Xb21) &&
                Objects.equals(u3Xb21, that.u3Xb21) &&
                Objects.equals(u1Va21, that.u1Va21) &&
                Objects.equals(u2Va21, that.u2Va21) &&
                Objects.equals(u3Va21, that.u3Va21) &&
                Objects.equals(i1Xb21, that.i1Xb21) &&
                Objects.equals(i2Xb21, that.i2Xb21) &&
                Objects.equals(i3Xb21, that.i3Xb21) &&
                Objects.equals(i1Va21, that.i1Va21) &&
                Objects.equals(i2Va21, that.i2Va21) &&
                Objects.equals(i3Va21, that.i3Va21) &&
                Objects.equals(u1Xb22, that.u1Xb22) &&
                Objects.equals(u2Xb22, that.u2Xb22) &&
                Objects.equals(u3Xb22, that.u3Xb22) &&
                Objects.equals(u1Va22, that.u1Va22) &&
                Objects.equals(u2Va22, that.u2Va22) &&
                Objects.equals(u3Va22, that.u3Va22) &&
                Objects.equals(i1Xb22, that.i1Xb22) &&
                Objects.equals(i2Xb22, that.i2Xb22) &&
                Objects.equals(i3Xb22, that.i3Xb22) &&
                Objects.equals(i1Va22, that.i1Va22) &&
                Objects.equals(i2Va22, that.i2Va22) &&
                Objects.equals(i3Va22, that.i3Va22) &&
                Objects.equals(u1Xb23, that.u1Xb23) &&
                Objects.equals(u2Xb23, that.u2Xb23) &&
                Objects.equals(u3Xb23, that.u3Xb23) &&
                Objects.equals(u1Va23, that.u1Va23) &&
                Objects.equals(u2Va23, that.u2Va23) &&
                Objects.equals(u3Va23, that.u3Va23) &&
                Objects.equals(i1Xb23, that.i1Xb23) &&
                Objects.equals(i2Xb23, that.i2Xb23) &&
                Objects.equals(i3Xb23, that.i3Xb23) &&
                Objects.equals(i1Va23, that.i1Va23) &&
                Objects.equals(i2Va23, that.i2Va23) &&
                Objects.equals(i3Va23, that.i3Va23) &&
                Objects.equals(u1Xb24, that.u1Xb24) &&
                Objects.equals(u2Xb24, that.u2Xb24) &&
                Objects.equals(u3Xb24, that.u3Xb24) &&
                Objects.equals(u1Va24, that.u1Va24) &&
                Objects.equals(u2Va24, that.u2Va24) &&
                Objects.equals(u3Va24, that.u3Va24) &&
                Objects.equals(i1Xb24, that.i1Xb24) &&
                Objects.equals(i2Xb24, that.i2Xb24) &&
                Objects.equals(i3Xb24, that.i3Xb24) &&
                Objects.equals(i1Va24, that.i1Va24) &&
                Objects.equals(i2Va24, that.i2Va24) &&
                Objects.equals(i3Va24, that.i3Va24) &&
                Objects.equals(u1Xb25, that.u1Xb25) &&
                Objects.equals(u2Xb25, that.u2Xb25) &&
                Objects.equals(u3Xb25, that.u3Xb25) &&
                Objects.equals(u1Va25, that.u1Va25) &&
                Objects.equals(u2Va25, that.u2Va25) &&
                Objects.equals(u3Va25, that.u3Va25) &&
                Objects.equals(i1Xb25, that.i1Xb25) &&
                Objects.equals(i2Xb25, that.i2Xb25) &&
                Objects.equals(i3Xb25, that.i3Xb25) &&
                Objects.equals(i1Va25, that.i1Va25) &&
                Objects.equals(i2Va25, that.i2Va25) &&
                Objects.equals(i3Va25, that.i3Va25) &&
                Objects.equals(u1Xb26, that.u1Xb26) &&
                Objects.equals(u2Xb26, that.u2Xb26) &&
                Objects.equals(u3Xb26, that.u3Xb26) &&
                Objects.equals(u1Va26, that.u1Va26) &&
                Objects.equals(u2Va26, that.u2Va26) &&
                Objects.equals(u3Va26, that.u3Va26) &&
                Objects.equals(i1Xb26, that.i1Xb26) &&
                Objects.equals(i2Xb26, that.i2Xb26) &&
                Objects.equals(i3Xb26, that.i3Xb26) &&
                Objects.equals(i1Va26, that.i1Va26) &&
                Objects.equals(i2Va26, that.i2Va26) &&
                Objects.equals(i3Va26, that.i3Va26) &&
                Objects.equals(u1Xb27, that.u1Xb27) &&
                Objects.equals(u2Xb27, that.u2Xb27) &&
                Objects.equals(u3Xb27, that.u3Xb27) &&
                Objects.equals(u1Va27, that.u1Va27) &&
                Objects.equals(u2Va27, that.u2Va27) &&
                Objects.equals(u3Va27, that.u3Va27) &&
                Objects.equals(i1Xb27, that.i1Xb27) &&
                Objects.equals(i2Xb27, that.i2Xb27) &&
                Objects.equals(i3Xb27, that.i3Xb27) &&
                Objects.equals(i1Va27, that.i1Va27) &&
                Objects.equals(i2Va27, that.i2Va27) &&
                Objects.equals(i3Va27, that.i3Va27) &&
                Objects.equals(u1Xb28, that.u1Xb28) &&
                Objects.equals(u2Xb28, that.u2Xb28) &&
                Objects.equals(u3Xb28, that.u3Xb28) &&
                Objects.equals(u1Va28, that.u1Va28) &&
                Objects.equals(u2Va28, that.u2Va28) &&
                Objects.equals(u3Va28, that.u3Va28) &&
                Objects.equals(i1Xb28, that.i1Xb28) &&
                Objects.equals(i2Xb28, that.i2Xb28) &&
                Objects.equals(i3Xb28, that.i3Xb28) &&
                Objects.equals(i1Va28, that.i1Va28) &&
                Objects.equals(i2Va28, that.i2Va28) &&
                Objects.equals(i3Va28, that.i3Va28) &&
                Objects.equals(u1Xb29, that.u1Xb29) &&
                Objects.equals(u2Xb29, that.u2Xb29) &&
                Objects.equals(u3Xb29, that.u3Xb29) &&
                Objects.equals(u1Va29, that.u1Va29) &&
                Objects.equals(u2Va29, that.u2Va29) &&
                Objects.equals(u3Va29, that.u3Va29) &&
                Objects.equals(i1Xb29, that.i1Xb29) &&
                Objects.equals(i2Xb29, that.i2Xb29) &&
                Objects.equals(i3Xb29, that.i3Xb29) &&
                Objects.equals(i1Va29, that.i1Va29) &&
                Objects.equals(i2Va29, that.i2Va29) &&
                Objects.equals(i3Va29, that.i3Va29) &&
                Objects.equals(u1Xb30, that.u1Xb30) &&
                Objects.equals(u2Xb30, that.u2Xb30) &&
                Objects.equals(u3Xb30, that.u3Xb30) &&
                Objects.equals(u1Va30, that.u1Va30) &&
                Objects.equals(u2Va30, that.u2Va30) &&
                Objects.equals(u3Va30, that.u3Va30) &&
                Objects.equals(i1Xb30, that.i1Xb30) &&
                Objects.equals(i2Xb30, that.i2Xb30) &&
                Objects.equals(i3Xb30, that.i3Xb30) &&
                Objects.equals(i1Va30, that.i1Va30) &&
                Objects.equals(i2Va30, that.i2Va30) &&
                Objects.equals(i3Va30, that.i3Va30) &&
                Objects.equals(u1Xb31, that.u1Xb31) &&
                Objects.equals(u2Xb31, that.u2Xb31) &&
                Objects.equals(u3Xb31, that.u3Xb31) &&
                Objects.equals(u1Va31, that.u1Va31) &&
                Objects.equals(u2Va31, that.u2Va31) &&
                Objects.equals(u3Va31, that.u3Va31) &&
                Objects.equals(i1Xb31, that.i1Xb31) &&
                Objects.equals(i2Xb31, that.i2Xb31) &&
                Objects.equals(i3Xb31, that.i3Xb31) &&
                Objects.equals(i1Va31, that.i1Va31) &&
                Objects.equals(i2Va31, that.i2Va31) &&
                Objects.equals(i3Va31, that.i3Va31) &&
                Objects.equals(u1Xb32, that.u1Xb32) &&
                Objects.equals(u2Xb32, that.u2Xb32) &&
                Objects.equals(u3Xb32, that.u3Xb32) &&
                Objects.equals(u1Va32, that.u1Va32) &&
                Objects.equals(u2Va32, that.u2Va32) &&
                Objects.equals(u3Va32, that.u3Va32) &&
                Objects.equals(i1Xb32, that.i1Xb32) &&
                Objects.equals(i2Xb32, that.i2Xb32) &&
                Objects.equals(i3Xb32, that.i3Xb32) &&
                Objects.equals(i1Va32, that.i1Va32) &&
                Objects.equals(i2Va32, that.i2Va32) &&
                Objects.equals(i3Va32, that.i3Va32) &&
                Objects.equals(u1Xb33, that.u1Xb33) &&
                Objects.equals(u2Xb33, that.u2Xb33) &&
                Objects.equals(u3Xb33, that.u3Xb33) &&
                Objects.equals(u1Va33, that.u1Va33) &&
                Objects.equals(u2Va33, that.u2Va33) &&
                Objects.equals(u3Va33, that.u3Va33) &&
                Objects.equals(i1Xb33, that.i1Xb33) &&
                Objects.equals(i2Xb33, that.i2Xb33) &&
                Objects.equals(i3Xb33, that.i3Xb33) &&
                Objects.equals(i1Va33, that.i1Va33) &&
                Objects.equals(i2Va33, that.i2Va33) &&
                Objects.equals(i3Va33, that.i3Va33) &&
                Objects.equals(u1Xb34, that.u1Xb34) &&
                Objects.equals(u2Xb34, that.u2Xb34) &&
                Objects.equals(u3Xb34, that.u3Xb34) &&
                Objects.equals(u1Va34, that.u1Va34) &&
                Objects.equals(u2Va34, that.u2Va34) &&
                Objects.equals(u3Va34, that.u3Va34) &&
                Objects.equals(i1Xb34, that.i1Xb34) &&
                Objects.equals(i2Xb34, that.i2Xb34) &&
                Objects.equals(i3Xb34, that.i3Xb34) &&
                Objects.equals(i1Va34, that.i1Va34) &&
                Objects.equals(i2Va34, that.i2Va34) &&
                Objects.equals(i3Va34, that.i3Va34) &&
                Objects.equals(u1Xb35, that.u1Xb35) &&
                Objects.equals(u2Xb35, that.u2Xb35) &&
                Objects.equals(u3Xb35, that.u3Xb35) &&
                Objects.equals(u1Va35, that.u1Va35) &&
                Objects.equals(u2Va35, that.u2Va35) &&
                Objects.equals(u3Va35, that.u3Va35) &&
                Objects.equals(i1Xb35, that.i1Xb35) &&
                Objects.equals(i2Xb35, that.i2Xb35) &&
                Objects.equals(i3Xb35, that.i3Xb35) &&
                Objects.equals(i1Va35, that.i1Va35) &&
                Objects.equals(i2Va35, that.i2Va35) &&
                Objects.equals(i3Va35, that.i3Va35) &&
                Objects.equals(u1Xb36, that.u1Xb36) &&
                Objects.equals(u2Xb36, that.u2Xb36) &&
                Objects.equals(u3Xb36, that.u3Xb36) &&
                Objects.equals(u1Va36, that.u1Va36) &&
                Objects.equals(u2Va36, that.u2Va36) &&
                Objects.equals(u3Va36, that.u3Va36) &&
                Objects.equals(i1Xb36, that.i1Xb36) &&
                Objects.equals(i2Xb36, that.i2Xb36) &&
                Objects.equals(i3Xb36, that.i3Xb36) &&
                Objects.equals(i1Va36, that.i1Va36) &&
                Objects.equals(i2Va36, that.i2Va36) &&
                Objects.equals(i3Va36, that.i3Va36) &&
                Objects.equals(u1Xb37, that.u1Xb37) &&
                Objects.equals(u2Xb37, that.u2Xb37) &&
                Objects.equals(u3Xb37, that.u3Xb37) &&
                Objects.equals(u1Va37, that.u1Va37) &&
                Objects.equals(u2Va37, that.u2Va37) &&
                Objects.equals(u3Va37, that.u3Va37) &&
                Objects.equals(i1Xb37, that.i1Xb37) &&
                Objects.equals(i2Xb37, that.i2Xb37) &&
                Objects.equals(i3Xb37, that.i3Xb37) &&
                Objects.equals(i1Va37, that.i1Va37) &&
                Objects.equals(i2Va37, that.i2Va37) &&
                Objects.equals(i3Va37, that.i3Va37) &&
                Objects.equals(u1Xb38, that.u1Xb38) &&
                Objects.equals(u2Xb38, that.u2Xb38) &&
                Objects.equals(u3Xb38, that.u3Xb38) &&
                Objects.equals(u1Va38, that.u1Va38) &&
                Objects.equals(u2Va38, that.u2Va38) &&
                Objects.equals(u3Va38, that.u3Va38) &&
                Objects.equals(i1Xb38, that.i1Xb38) &&
                Objects.equals(i2Xb38, that.i2Xb38) &&
                Objects.equals(i3Xb38, that.i3Xb38) &&
                Objects.equals(i1Va38, that.i1Va38) &&
                Objects.equals(i2Va38, that.i2Va38) &&
                Objects.equals(i3Va38, that.i3Va38) &&
                Objects.equals(u1Xb39, that.u1Xb39) &&
                Objects.equals(u2Xb39, that.u2Xb39) &&
                Objects.equals(u3Xb39, that.u3Xb39) &&
                Objects.equals(u1Va39, that.u1Va39) &&
                Objects.equals(u2Va39, that.u2Va39) &&
                Objects.equals(u3Va39, that.u3Va39) &&
                Objects.equals(i1Xb39, that.i1Xb39) &&
                Objects.equals(i2Xb39, that.i2Xb39) &&
                Objects.equals(i3Xb39, that.i3Xb39) &&
                Objects.equals(i1Va39, that.i1Va39) &&
                Objects.equals(i2Va39, that.i2Va39) &&
                Objects.equals(i3Va39, that.i3Va39) &&
                Objects.equals(u1Xb40, that.u1Xb40) &&
                Objects.equals(u2Xb40, that.u2Xb40) &&
                Objects.equals(u3Xb40, that.u3Xb40) &&
                Objects.equals(u1Va40, that.u1Va40) &&
                Objects.equals(u2Va40, that.u2Va40) &&
                Objects.equals(u3Va40, that.u3Va40) &&
                Objects.equals(i1Xb40, that.i1Xb40) &&
                Objects.equals(i2Xb40, that.i2Xb40) &&
                Objects.equals(i3Xb40, that.i3Xb40) &&
                Objects.equals(i1Va40, that.i1Va40) &&
                Objects.equals(i2Va40, that.i2Va40) &&
                Objects.equals(i3Va40, that.i3Va40) &&
                Objects.equals(u1Xb41, that.u1Xb41) &&
                Objects.equals(u2Xb41, that.u2Xb41) &&
                Objects.equals(u3Xb41, that.u3Xb41) &&
                Objects.equals(u1Va41, that.u1Va41) &&
                Objects.equals(u2Va41, that.u2Va41) &&
                Objects.equals(u3Va41, that.u3Va41) &&
                Objects.equals(i1Xb41, that.i1Xb41) &&
                Objects.equals(i2Xb41, that.i2Xb41) &&
                Objects.equals(i3Xb41, that.i3Xb41) &&
                Objects.equals(i1Va41, that.i1Va41) &&
                Objects.equals(i2Va41, that.i2Va41) &&
                Objects.equals(i3Va41, that.i3Va41) &&
                Objects.equals(u1Xb42, that.u1Xb42) &&
                Objects.equals(u2Xb42, that.u2Xb42) &&
                Objects.equals(u3Xb42, that.u3Xb42) &&
                Objects.equals(u1Va42, that.u1Va42) &&
                Objects.equals(u2Va42, that.u2Va42) &&
                Objects.equals(u3Va42, that.u3Va42) &&
                Objects.equals(i1Xb42, that.i1Xb42) &&
                Objects.equals(i2Xb42, that.i2Xb42) &&
                Objects.equals(i3Xb42, that.i3Xb42) &&
                Objects.equals(i1Va42, that.i1Va42) &&
                Objects.equals(i2Va42, that.i2Va42) &&
                Objects.equals(i3Va42, that.i3Va42) &&
                Objects.equals(u1Xb43, that.u1Xb43) &&
                Objects.equals(u2Xb43, that.u2Xb43) &&
                Objects.equals(u3Xb43, that.u3Xb43) &&
                Objects.equals(u1Va43, that.u1Va43) &&
                Objects.equals(u2Va43, that.u2Va43) &&
                Objects.equals(u3Va43, that.u3Va43) &&
                Objects.equals(i1Xb43, that.i1Xb43) &&
                Objects.equals(i2Xb43, that.i2Xb43) &&
                Objects.equals(i3Xb43, that.i3Xb43) &&
                Objects.equals(i1Va43, that.i1Va43) &&
                Objects.equals(i2Va43, that.i2Va43) &&
                Objects.equals(i3Va43, that.i3Va43) &&
                Objects.equals(u1Xb44, that.u1Xb44) &&
                Objects.equals(u2Xb44, that.u2Xb44) &&
                Objects.equals(u3Xb44, that.u3Xb44) &&
                Objects.equals(u1Va44, that.u1Va44) &&
                Objects.equals(u2Va44, that.u2Va44) &&
                Objects.equals(u3Va44, that.u3Va44) &&
                Objects.equals(i1Xb44, that.i1Xb44) &&
                Objects.equals(i2Xb44, that.i2Xb44) &&
                Objects.equals(i3Xb44, that.i3Xb44) &&
                Objects.equals(i1Va44, that.i1Va44) &&
                Objects.equals(i2Va44, that.i2Va44) &&
                Objects.equals(i3Va44, that.i3Va44) &&
                Objects.equals(u1Xb45, that.u1Xb45) &&
                Objects.equals(u2Xb45, that.u2Xb45) &&
                Objects.equals(u3Xb45, that.u3Xb45) &&
                Objects.equals(u1Va45, that.u1Va45) &&
                Objects.equals(u2Va45, that.u2Va45) &&
                Objects.equals(u3Va45, that.u3Va45) &&
                Objects.equals(i1Xb45, that.i1Xb45) &&
                Objects.equals(i2Xb45, that.i2Xb45) &&
                Objects.equals(i3Xb45, that.i3Xb45) &&
                Objects.equals(i1Va45, that.i1Va45) &&
                Objects.equals(i2Va45, that.i2Va45) &&
                Objects.equals(i3Va45, that.i3Va45) &&
                Objects.equals(u1Xb46, that.u1Xb46) &&
                Objects.equals(u2Xb46, that.u2Xb46) &&
                Objects.equals(u3Xb46, that.u3Xb46) &&
                Objects.equals(u1Va46, that.u1Va46) &&
                Objects.equals(u2Va46, that.u2Va46) &&
                Objects.equals(u3Va46, that.u3Va46) &&
                Objects.equals(i1Xb46, that.i1Xb46) &&
                Objects.equals(i2Xb46, that.i2Xb46) &&
                Objects.equals(i3Xb46, that.i3Xb46) &&
                Objects.equals(i1Va46, that.i1Va46) &&
                Objects.equals(i2Va46, that.i2Va46) &&
                Objects.equals(i3Va46, that.i3Va46) &&
                Objects.equals(u1Xb47, that.u1Xb47) &&
                Objects.equals(u2Xb47, that.u2Xb47) &&
                Objects.equals(u3Xb47, that.u3Xb47) &&
                Objects.equals(u1Va47, that.u1Va47) &&
                Objects.equals(u2Va47, that.u2Va47) &&
                Objects.equals(u3Va47, that.u3Va47) &&
                Objects.equals(i1Xb47, that.i1Xb47) &&
                Objects.equals(i2Xb47, that.i2Xb47) &&
                Objects.equals(i3Xb47, that.i3Xb47) &&
                Objects.equals(i1Va47, that.i1Va47) &&
                Objects.equals(i2Va47, that.i2Va47) &&
                Objects.equals(i3Va47, that.i3Va47) &&
                Objects.equals(u1Xb48, that.u1Xb48) &&
                Objects.equals(u2Xb48, that.u2Xb48) &&
                Objects.equals(u3Xb48, that.u3Xb48) &&
                Objects.equals(u1Va48, that.u1Va48) &&
                Objects.equals(u2Va48, that.u2Va48) &&
                Objects.equals(u3Va48, that.u3Va48) &&
                Objects.equals(i1Xb48, that.i1Xb48) &&
                Objects.equals(i2Xb48, that.i2Xb48) &&
                Objects.equals(i3Xb48, that.i3Xb48) &&
                Objects.equals(i1Va48, that.i1Va48) &&
                Objects.equals(i2Va48, that.i2Va48) &&
                Objects.equals(i3Va48, that.i3Va48) &&
                Objects.equals(u1Xb49, that.u1Xb49) &&
                Objects.equals(u2Xb49, that.u2Xb49) &&
                Objects.equals(u3Xb49, that.u3Xb49) &&
                Objects.equals(u1Va49, that.u1Va49) &&
                Objects.equals(u2Va49, that.u2Va49) &&
                Objects.equals(u3Va49, that.u3Va49) &&
                Objects.equals(i1Xb49, that.i1Xb49) &&
                Objects.equals(i2Xb49, that.i2Xb49) &&
                Objects.equals(i3Xb49, that.i3Xb49) &&
                Objects.equals(i1Va49, that.i1Va49) &&
                Objects.equals(i2Va49, that.i2Va49) &&
                Objects.equals(i3Va49, that.i3Va49) &&
                Objects.equals(u1Xb50, that.u1Xb50) &&
                Objects.equals(u2Xb50, that.u2Xb50) &&
                Objects.equals(u3Xb50, that.u3Xb50) &&
                Objects.equals(u1Va50, that.u1Va50) &&
                Objects.equals(u2Va50, that.u2Va50) &&
                Objects.equals(u3Va50, that.u3Va50) &&
                Objects.equals(i1Xb50, that.i1Xb50) &&
                Objects.equals(i2Xb50, that.i2Xb50) &&
                Objects.equals(i3Xb50, that.i3Xb50) &&
                Objects.equals(i1Va50, that.i1Va50) &&
                Objects.equals(i2Va50, that.i2Va50) &&
                Objects.equals(i3Va50, that.i3Va50);
    }

    @Override
    public int hashCode() {

        return Objects.hash(xbid, mpid, time, u1Xb1, u2Xb1, u3Xb1, u1Va1, u2Va1, u3Va1, i1Xb1, i2Xb1, i3Xb1, i1Va1, i2Va1, i3Va1, u1Xb2, u2Xb2, u3Xb2, u1Va2, u2Va2, u3Va2, i1Xb2, i2Xb2, i3Xb2, i1Va2, i2Va2, i3Va2, u1Xb3, u2Xb3, u3Xb3, u1Va3, u2Va3, u3Va3, i1Xb3, i2Xb3, i3Xb3, i1Va3, i2Va3, i3Va3, u1Xb4, u2Xb4, u3Xb4, u1Va4, u2Va4, u3Va4, i1Xb4, i2Xb4, i3Xb4, i1Va4, i2Va4, i3Va4, u1Xb5, u2Xb5, u3Xb5, u1Va5, u2Va5, u3Va5, i1Xb5, i2Xb5, i3Xb5, i1Va5, i2Va5, i3Va5, u1Xb6, u2Xb6, u3Xb6, u1Va6, u2Va6, u3Va6, i1Xb6, i2Xb6, i3Xb6, i1Va6, i2Va6, i3Va6, u1Xb7, u2Xb7, u3Xb7, u1Va7, u2Va7, u3Va7, i1Xb7, i2Xb7, i3Xb7, i1Va7, i2Va7, i3Va7, u1Xb8, u2Xb8, u3Xb8, u1Va8, u2Va8, u3Va8, i1Xb8, i2Xb8, i3Xb8, i1Va8, i2Va8, i3Va8, u1Xb9, u2Xb9, u3Xb9, u1Va9, u2Va9, u3Va9, i1Xb9, i2Xb9, i3Xb9, i1Va9, i2Va9, i3Va9, u1Xb10, u2Xb10, u3Xb10, u1Va10, u2Va10, u3Va10, i1Xb10, i2Xb10, i3Xb10, i1Va10, i2Va10, i3Va10, u1Xb11, u2Xb11, u3Xb11, u1Va11, u2Va11, u3Va11, i1Xb11, i2Xb11, i3Xb11, i1Va11, i2Va11, i3Va11, u1Xb12, u2Xb12, u3Xb12, u1Va12, u2Va12, u3Va12, i1Xb12, i2Xb12, i3Xb12, i1Va12, i2Va12, i3Va12, u1Xb13, u2Xb13, u3Xb13, u1Va13, u2Va13, u3Va13, i1Xb13, i2Xb13, i3Xb13, i1Va13, i2Va13, i3Va13, u1Xb14, u2Xb14, u3Xb14, u1Va14, u2Va14, u3Va14, i1Xb14, i2Xb14, i3Xb14, i1Va14, i2Va14, i3Va14, u1Xb15, u2Xb15, u3Xb15, u1Va15, u2Va15, u3Va15, i1Xb15, i2Xb15, i3Xb15, i1Va15, i2Va15, i3Va15, u1Xb16, u2Xb16, u3Xb16, u1Va16, u2Va16, u3Va16, i1Xb16, i2Xb16, i3Xb16, i1Va16, i2Va16, i3Va16, u1Xb17, u2Xb17, u3Xb17, u1Va17, u2Va17, u3Va17, i1Xb17, i2Xb17, i3Xb17, i1Va17, i2Va17, i3Va17, u1Xb18, u2Xb18, u3Xb18, u1Va18, u2Va18, u3Va18, i1Xb18, i2Xb18, i3Xb18, i1Va18, i2Va18, i3Va18, u1Xb19, u2Xb19, u3Xb19, u1Va19, u2Va19, u3Va19, i1Xb19, i2Xb19, i3Xb19, i1Va19, i2Va19, i3Va19, u1Xb20, u2Xb20, u3Xb20, u1Va20, u2Va20, u3Va20, i1Xb20, i2Xb20, i3Xb20, i1Va20, i2Va20, i3Va20, u1Xb21, u2Xb21, u3Xb21, u1Va21, u2Va21, u3Va21, i1Xb21, i2Xb21, i3Xb21, i1Va21, i2Va21, i3Va21, u1Xb22, u2Xb22, u3Xb22, u1Va22, u2Va22, u3Va22, i1Xb22, i2Xb22, i3Xb22, i1Va22, i2Va22, i3Va22, u1Xb23, u2Xb23, u3Xb23, u1Va23, u2Va23, u3Va23, i1Xb23, i2Xb23, i3Xb23, i1Va23, i2Va23, i3Va23, u1Xb24, u2Xb24, u3Xb24, u1Va24, u2Va24, u3Va24, i1Xb24, i2Xb24, i3Xb24, i1Va24, i2Va24, i3Va24, u1Xb25, u2Xb25, u3Xb25, u1Va25, u2Va25, u3Va25, i1Xb25, i2Xb25, i3Xb25, i1Va25, i2Va25, i3Va25, u1Xb26, u2Xb26, u3Xb26, u1Va26, u2Va26, u3Va26, i1Xb26, i2Xb26, i3Xb26, i1Va26, i2Va26, i3Va26, u1Xb27, u2Xb27, u3Xb27, u1Va27, u2Va27, u3Va27, i1Xb27, i2Xb27, i3Xb27, i1Va27, i2Va27, i3Va27, u1Xb28, u2Xb28, u3Xb28, u1Va28, u2Va28, u3Va28, i1Xb28, i2Xb28, i3Xb28, i1Va28, i2Va28, i3Va28, u1Xb29, u2Xb29, u3Xb29, u1Va29, u2Va29, u3Va29, i1Xb29, i2Xb29, i3Xb29, i1Va29, i2Va29, i3Va29, u1Xb30, u2Xb30, u3Xb30, u1Va30, u2Va30, u3Va30, i1Xb30, i2Xb30, i3Xb30, i1Va30, i2Va30, i3Va30, u1Xb31, u2Xb31, u3Xb31, u1Va31, u2Va31, u3Va31, i1Xb31, i2Xb31, i3Xb31, i1Va31, i2Va31, i3Va31, u1Xb32, u2Xb32, u3Xb32, u1Va32, u2Va32, u3Va32, i1Xb32, i2Xb32, i3Xb32, i1Va32, i2Va32, i3Va32, u1Xb33, u2Xb33, u3Xb33, u1Va33, u2Va33, u3Va33, i1Xb33, i2Xb33, i3Xb33, i1Va33, i2Va33, i3Va33, u1Xb34, u2Xb34, u3Xb34, u1Va34, u2Va34, u3Va34, i1Xb34, i2Xb34, i3Xb34, i1Va34, i2Va34, i3Va34, u1Xb35, u2Xb35, u3Xb35, u1Va35, u2Va35, u3Va35, i1Xb35, i2Xb35, i3Xb35, i1Va35, i2Va35, i3Va35, u1Xb36, u2Xb36, u3Xb36, u1Va36, u2Va36, u3Va36, i1Xb36, i2Xb36, i3Xb36, i1Va36, i2Va36, i3Va36, u1Xb37, u2Xb37, u3Xb37, u1Va37, u2Va37, u3Va37, i1Xb37, i2Xb37, i3Xb37, i1Va37, i2Va37, i3Va37, u1Xb38, u2Xb38, u3Xb38, u1Va38, u2Va38, u3Va38, i1Xb38, i2Xb38, i3Xb38, i1Va38, i2Va38, i3Va38, u1Xb39, u2Xb39, u3Xb39, u1Va39, u2Va39, u3Va39, i1Xb39, i2Xb39, i3Xb39, i1Va39, i2Va39, i3Va39, u1Xb40, u2Xb40, u3Xb40, u1Va40, u2Va40, u3Va40, i1Xb40, i2Xb40, i3Xb40, i1Va40, i2Va40, i3Va40, u1Xb41, u2Xb41, u3Xb41, u1Va41, u2Va41, u3Va41, i1Xb41, i2Xb41, i3Xb41, i1Va41, i2Va41, i3Va41, u1Xb42, u2Xb42, u3Xb42, u1Va42, u2Va42, u3Va42, i1Xb42, i2Xb42, i3Xb42, i1Va42, i2Va42, i3Va42, u1Xb43, u2Xb43, u3Xb43, u1Va43, u2Va43, u3Va43, i1Xb43, i2Xb43, i3Xb43, i1Va43, i2Va43, i3Va43, u1Xb44, u2Xb44, u3Xb44, u1Va44, u2Va44, u3Va44, i1Xb44, i2Xb44, i3Xb44, i1Va44, i2Va44, i3Va44, u1Xb45, u2Xb45, u3Xb45, u1Va45, u2Va45, u3Va45, i1Xb45, i2Xb45, i3Xb45, i1Va45, i2Va45, i3Va45, u1Xb46, u2Xb46, u3Xb46, u1Va46, u2Va46, u3Va46, i1Xb46, i2Xb46, i3Xb46, i1Va46, i2Va46, i3Va46, u1Xb47, u2Xb47, u3Xb47, u1Va47, u2Va47, u3Va47, i1Xb47, i2Xb47, i3Xb47, i1Va47, i2Va47, i3Va47, u1Xb48, u2Xb48, u3Xb48, u1Va48, u2Va48, u3Va48, i1Xb48, i2Xb48, i3Xb48, i1Va48, i2Va48, i3Va48, u1Xb49, u2Xb49, u3Xb49, u1Va49, u2Va49, u3Va49, i1Xb49, i2Xb49, i3Xb49, i1Va49, i2Va49, i3Va49, u1Xb50, u2Xb50, u3Xb50, u1Va50, u2Va50, u3Va50, i1Xb50, i2Xb50, i3Xb50, i1Va50, i2Va50, i3Va50);
    }
}
