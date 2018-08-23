package onlineTest.action;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import grabData.DataOutput;
import hibernatePOJO.PowerxbMonitor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



public class getXBaction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据检测点实时监测点XB数据
     */
    public String execute() throws Exception {
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            //获取监测点
            //String computerroom = request.getParameter("computerroomid");
            String monitorpoint = request.getParameter("monitorpointid");

            PowerxbMonitor pp = new PowerxbMonitor();

            pp.setXbid(DataOutput.varxb.getXbid());
            pp.setMpid(DataOutput.varxb.getMpid());
            pp.setTime(DataOutput.varxb.getTime());

            pp.setU1Xb1(DataOutput.varxb.getU1Xb1());
            pp.setU2Xb1(DataOutput.varxb.getU2Xb1());
            pp.setU3Xb1(DataOutput.varxb.getU3Xb1());
            pp.setU1Va1(DataOutput.varxb.getU1Va1());
            pp.setU2Va1(DataOutput.varxb.getU2Va1());
            pp.setU3Va1(DataOutput.varxb.getU3Va1());

            pp.setU1Xb2(DataOutput.varxb.getU1Xb2());
            pp.setU2Xb2(DataOutput.varxb.getU2Xb2());
            pp.setU3Xb2(DataOutput.varxb.getU3Xb2());
            pp.setU1Va2(DataOutput.varxb.getU1Va2());
            pp.setU2Va2(DataOutput.varxb.getU2Va2());
            pp.setU3Va2(DataOutput.varxb.getU3Va2());

            pp.setU1Xb3(DataOutput.varxb.getU1Xb3());
            pp.setU2Xb3(DataOutput.varxb.getU2Xb3());
            pp.setU3Xb3(DataOutput.varxb.getU3Xb3());
            pp.setU1Va3(DataOutput.varxb.getU1Va3());
            pp.setU2Va3(DataOutput.varxb.getU2Va3());
            pp.setU3Va3(DataOutput.varxb.getU3Va3());

            pp.setU1Xb4(DataOutput.varxb.getU1Xb4());
            pp.setU2Xb4(DataOutput.varxb.getU2Xb4());
            pp.setU3Xb4(DataOutput.varxb.getU3Xb4());
            pp.setU1Va4(DataOutput.varxb.getU1Va4());
            pp.setU2Va4(DataOutput.varxb.getU2Va4());
            pp.setU3Va4(DataOutput.varxb.getU3Va4());

            pp.setU1Xb5(DataOutput.varxb.getU1Xb5());
            pp.setU2Xb5(DataOutput.varxb.getU2Xb5());
            pp.setU3Xb5(DataOutput.varxb.getU3Xb5());
            pp.setU1Va5(DataOutput.varxb.getU1Va5());
            pp.setU2Va5(DataOutput.varxb.getU2Va5());
            pp.setU3Va5(DataOutput.varxb.getU3Va5());

            pp.setU1Xb6(DataOutput.varxb.getU1Xb6());
            pp.setU2Xb6(DataOutput.varxb.getU2Xb6());
            pp.setU3Xb6(DataOutput.varxb.getU3Xb6());
            pp.setU1Va6(DataOutput.varxb.getU1Va6());
            pp.setU2Va6(DataOutput.varxb.getU2Va6());
            pp.setU3Va6(DataOutput.varxb.getU3Va6());

            pp.setU1Xb7(DataOutput.varxb.getU1Xb7());
            pp.setU2Xb7(DataOutput.varxb.getU2Xb7());
            pp.setU3Xb7(DataOutput.varxb.getU3Xb7());
            pp.setU1Va7(DataOutput.varxb.getU1Va7());
            pp.setU2Va7(DataOutput.varxb.getU2Va7());
            pp.setU3Va7(DataOutput.varxb.getU3Va7());

            pp.setU1Xb8(DataOutput.varxb.getU1Xb8());
            pp.setU2Xb8(DataOutput.varxb.getU2Xb8());
            pp.setU3Xb8(DataOutput.varxb.getU3Xb8());
            pp.setU1Va8(DataOutput.varxb.getU1Va8());
            pp.setU2Va8(DataOutput.varxb.getU2Va8());
            pp.setU3Va8(DataOutput.varxb.getU3Va8());

            pp.setU1Xb9(DataOutput.varxb.getU1Xb9());
            pp.setU2Xb9(DataOutput.varxb.getU2Xb9());
            pp.setU3Xb9(DataOutput.varxb.getU3Xb9());
            pp.setU1Va9(DataOutput.varxb.getU1Va9());
            pp.setU2Va9(DataOutput.varxb.getU2Va9());
            pp.setU3Va9(DataOutput.varxb.getU3Va9());

            pp.setU1Xb10(DataOutput.varxb.getU1Xb10());
            pp.setU2Xb10(DataOutput.varxb.getU2Xb10());
            pp.setU3Xb10(DataOutput.varxb.getU3Xb10());
            pp.setU1Va10(DataOutput.varxb.getU1Va10());
            pp.setU2Va10(DataOutput.varxb.getU2Va10());
            pp.setU3Va10(DataOutput.varxb.getU3Va10());

            pp.setU1Xb11(DataOutput.varxb.getU1Xb11());
            pp.setU2Xb11(DataOutput.varxb.getU2Xb1());
            pp.setU3Xb11(DataOutput.varxb.getU3Xb11());
            pp.setU1Va11(DataOutput.varxb.getU1Va11());
            pp.setU2Va11(DataOutput.varxb.getU2Va11());
            pp.setU3Va11(DataOutput.varxb.getU3Va11());

            pp.setU1Xb12(DataOutput.varxb.getU1Xb12());
            pp.setU2Xb12(DataOutput.varxb.getU2Xb12());
            pp.setU3Xb12(DataOutput.varxb.getU3Xb12());
            pp.setU1Va12(DataOutput.varxb.getU1Va12());
            pp.setU2Va12(DataOutput.varxb.getU2Va12());
            pp.setU3Va12(DataOutput.varxb.getU3Va12());

            pp.setU1Xb13(DataOutput.varxb.getU1Xb13());
            pp.setU2Xb13(DataOutput.varxb.getU2Xb13());
            pp.setU3Xb13(DataOutput.varxb.getU3Xb13());
            pp.setU1Va13(DataOutput.varxb.getU1Va13());
            pp.setU2Va13(DataOutput.varxb.getU2Va13());
            pp.setU3Va13(DataOutput.varxb.getU3Va13());

            pp.setU1Xb14(DataOutput.varxb.getU1Xb14());
            pp.setU2Xb14(DataOutput.varxb.getU2Xb14());
            pp.setU3Xb14(DataOutput.varxb.getU3Xb14());
            pp.setU1Va14(DataOutput.varxb.getU1Va14());
            pp.setU2Va14(DataOutput.varxb.getU2Va14());
            pp.setU3Va14(DataOutput.varxb.getU3Va14());

            pp.setU1Xb15(DataOutput.varxb.getU1Xb15());
            pp.setU2Xb15(DataOutput.varxb.getU2Xb15());
            pp.setU3Xb15(DataOutput.varxb.getU3Xb15());
            pp.setU1Va15(DataOutput.varxb.getU1Va15());
            pp.setU2Va15(DataOutput.varxb.getU2Va15());
            pp.setU3Va15(DataOutput.varxb.getU3Va15());

            pp.setU1Xb16(DataOutput.varxb.getU1Xb16());
            pp.setU2Xb16(DataOutput.varxb.getU2Xb16());
            pp.setU3Xb16(DataOutput.varxb.getU3Xb16());
            pp.setU1Va16(DataOutput.varxb.getU1Va16());
            pp.setU2Va16(DataOutput.varxb.getU2Va16());
            pp.setU3Va16(DataOutput.varxb.getU3Va16());

            pp.setU1Xb17(DataOutput.varxb.getU1Xb17());
            pp.setU2Xb17(DataOutput.varxb.getU2Xb17());
            pp.setU3Xb17(DataOutput.varxb.getU3Xb17());
            pp.setU1Va17(DataOutput.varxb.getU1Va17());
            pp.setU2Va17(DataOutput.varxb.getU2Va17());
            pp.setU3Va17(DataOutput.varxb.getU3Va17());

            pp.setU1Xb18(DataOutput.varxb.getU1Xb18());
            pp.setU2Xb18(DataOutput.varxb.getU2Xb18());
            pp.setU3Xb18(DataOutput.varxb.getU3Xb18());
            pp.setU1Va18(DataOutput.varxb.getU1Va18());
            pp.setU2Va18(DataOutput.varxb.getU2Va18());
            pp.setU3Va18(DataOutput.varxb.getU3Va18());

            pp.setU1Xb19(DataOutput.varxb.getU1Xb19());
            pp.setU2Xb19(DataOutput.varxb.getU2Xb19());
            pp.setU3Xb19(DataOutput.varxb.getU3Xb19());
            pp.setU1Va19(DataOutput.varxb.getU1Va19());
            pp.setU2Va19(DataOutput.varxb.getU2Va19());
            pp.setU3Va19(DataOutput.varxb.getU3Va19());

            pp.setU1Xb20(DataOutput.varxb.getU1Xb20());
            pp.setU2Xb20(DataOutput.varxb.getU2Xb20());
            pp.setU3Xb20(DataOutput.varxb.getU3Xb20());
            pp.setU1Va20(DataOutput.varxb.getU1Va20());
            pp.setU2Va20(DataOutput.varxb.getU2Va20());
            pp.setU3Va20(DataOutput.varxb.getU3Va20());

            pp.setU1Xb21(DataOutput.varxb.getU1Xb21());
            pp.setU2Xb21(DataOutput.varxb.getU2Xb21());
            pp.setU3Xb21(DataOutput.varxb.getU3Xb21());
            pp.setU1Va21(DataOutput.varxb.getU1Va21());
            pp.setU2Va21(DataOutput.varxb.getU2Va21());
            pp.setU3Va21(DataOutput.varxb.getU3Va21());

            pp.setU1Xb22(DataOutput.varxb.getU1Xb22());
            pp.setU2Xb22(DataOutput.varxb.getU2Xb22());
            pp.setU3Xb22(DataOutput.varxb.getU3Xb22());
            pp.setU1Va22(DataOutput.varxb.getU1Va22());
            pp.setU2Va22(DataOutput.varxb.getU2Va22());
            pp.setU3Va22(DataOutput.varxb.getU3Va22());

            pp.setU1Xb23(DataOutput.varxb.getU1Xb23());
            pp.setU2Xb23(DataOutput.varxb.getU2Xb23());
            pp.setU3Xb23(DataOutput.varxb.getU3Xb23());
            pp.setU1Va23(DataOutput.varxb.getU1Va23());
            pp.setU2Va23(DataOutput.varxb.getU2Va23());
            pp.setU3Va23(DataOutput.varxb.getU3Va23());

            pp.setU1Xb24(DataOutput.varxb.getU1Xb24());
            pp.setU2Xb24(DataOutput.varxb.getU2Xb24());
            pp.setU3Xb24(DataOutput.varxb.getU3Xb24());
            pp.setU1Va24(DataOutput.varxb.getU1Va24());
            pp.setU2Va24(DataOutput.varxb.getU2Va24());
            pp.setU3Va24(DataOutput.varxb.getU3Va24());

            pp.setU1Xb25(DataOutput.varxb.getU1Xb25());
            pp.setU2Xb25(DataOutput.varxb.getU2Xb25());
            pp.setU3Xb25(DataOutput.varxb.getU3Xb25());
            pp.setU1Va25(DataOutput.varxb.getU1Va25());
            pp.setU2Va25(DataOutput.varxb.getU2Va25());
            pp.setU3Va25(DataOutput.varxb.getU3Va25());

            pp.setU1Xb26(DataOutput.varxb.getU1Xb26());
            pp.setU2Xb26(DataOutput.varxb.getU2Xb26());
            pp.setU3Xb26(DataOutput.varxb.getU3Xb26());
            pp.setU1Va26(DataOutput.varxb.getU1Va26());
            pp.setU2Va26(DataOutput.varxb.getU2Va26());
            pp.setU3Va26(DataOutput.varxb.getU3Va26());

            pp.setU1Xb27(DataOutput.varxb.getU1Xb27());
            pp.setU2Xb27(DataOutput.varxb.getU2Xb27());
            pp.setU3Xb27(DataOutput.varxb.getU3Xb27());
            pp.setU1Va27(DataOutput.varxb.getU1Va27());
            pp.setU2Va27(DataOutput.varxb.getU2Va27());
            pp.setU3Va27(DataOutput.varxb.getU3Va27());

            pp.setU1Xb28(DataOutput.varxb.getU1Xb28());
            pp.setU2Xb28(DataOutput.varxb.getU2Xb28());
            pp.setU3Xb28(DataOutput.varxb.getU3Xb28());
            pp.setU1Va28(DataOutput.varxb.getU1Va28());
            pp.setU2Va28(DataOutput.varxb.getU2Va28());
            pp.setU3Va28(DataOutput.varxb.getU3Va28());

            pp.setU1Xb29(DataOutput.varxb.getU1Xb29());
            pp.setU2Xb29(DataOutput.varxb.getU2Xb29());
            pp.setU3Xb29(DataOutput.varxb.getU3Xb29());
            pp.setU1Va29(DataOutput.varxb.getU1Va29());
            pp.setU2Va29(DataOutput.varxb.getU2Va29());
            pp.setU3Va29(DataOutput.varxb.getU3Va29());

            pp.setU1Xb30(DataOutput.varxb.getU1Xb30());
            pp.setU2Xb30(DataOutput.varxb.getU2Xb30());
            pp.setU3Xb30(DataOutput.varxb.getU3Xb30());
            pp.setU1Va30(DataOutput.varxb.getU1Va30());
            pp.setU2Va30(DataOutput.varxb.getU2Va30());
            pp.setU3Va30(DataOutput.varxb.getU3Va30());

            pp.setU1Xb31(DataOutput.varxb.getU1Xb31());
            pp.setU2Xb31(DataOutput.varxb.getU2Xb31());
            pp.setU3Xb31(DataOutput.varxb.getU3Xb31());
            pp.setU1Va31(DataOutput.varxb.getU1Va31());
            pp.setU2Va31(DataOutput.varxb.getU2Va31());
            pp.setU3Va31(DataOutput.varxb.getU3Va31());

            pp.setU1Xb32(DataOutput.varxb.getU1Xb32());
            pp.setU2Xb32(DataOutput.varxb.getU2Xb32());
            pp.setU3Xb32(DataOutput.varxb.getU3Xb32());
            pp.setU1Va32(DataOutput.varxb.getU1Va32());
            pp.setU2Va32(DataOutput.varxb.getU2Va32());
            pp.setU3Va32(DataOutput.varxb.getU3Va32());

            pp.setU1Xb33(DataOutput.varxb.getU1Xb33());
            pp.setU2Xb33(DataOutput.varxb.getU2Xb33());
            pp.setU3Xb33(DataOutput.varxb.getU3Xb33());
            pp.setU1Va33(DataOutput.varxb.getU1Va33());
            pp.setU2Va33(DataOutput.varxb.getU2Va33());
            pp.setU3Va33(DataOutput.varxb.getU3Va33());

            pp.setU1Xb34(DataOutput.varxb.getU1Xb34());
            pp.setU2Xb34(DataOutput.varxb.getU2Xb34());
            pp.setU3Xb34(DataOutput.varxb.getU3Xb34());
            pp.setU1Va34(DataOutput.varxb.getU1Va34());
            pp.setU2Va34(DataOutput.varxb.getU2Va34());
            pp.setU3Va34(DataOutput.varxb.getU3Va34());

            pp.setU1Xb35(DataOutput.varxb.getU1Xb35());
            pp.setU2Xb35(DataOutput.varxb.getU2Xb35());
            pp.setU3Xb35(DataOutput.varxb.getU3Xb35());
            pp.setU1Va35(DataOutput.varxb.getU1Va35());
            pp.setU2Va35(DataOutput.varxb.getU2Va35());
            pp.setU3Va35(DataOutput.varxb.getU3Va35());

            pp.setU1Xb36(DataOutput.varxb.getU1Xb36());
            pp.setU2Xb36(DataOutput.varxb.getU2Xb36());
            pp.setU3Xb36(DataOutput.varxb.getU3Xb36());
            pp.setU1Va36(DataOutput.varxb.getU1Va36());
            pp.setU2Va36(DataOutput.varxb.getU2Va36());
            pp.setU3Va36(DataOutput.varxb.getU3Va36());

            pp.setU1Xb37(DataOutput.varxb.getU1Xb37());
            pp.setU2Xb37(DataOutput.varxb.getU2Xb37());
            pp.setU3Xb37(DataOutput.varxb.getU3Xb37());
            pp.setU1Va37(DataOutput.varxb.getU1Va37());
            pp.setU2Va37(DataOutput.varxb.getU2Va37());
            pp.setU3Va37(DataOutput.varxb.getU3Va37());

            pp.setU1Xb38(DataOutput.varxb.getU1Xb38());
            pp.setU2Xb38(DataOutput.varxb.getU2Xb38());
            pp.setU3Xb38(DataOutput.varxb.getU3Xb38());
            pp.setU1Va38(DataOutput.varxb.getU1Va38());
            pp.setU2Va38(DataOutput.varxb.getU2Va38());
            pp.setU3Va38(DataOutput.varxb.getU3Va38());

            pp.setU1Xb39(DataOutput.varxb.getU1Xb39());
            pp.setU2Xb39(DataOutput.varxb.getU2Xb39());
            pp.setU3Xb39(DataOutput.varxb.getU3Xb39());
            pp.setU1Va39(DataOutput.varxb.getU1Va39());
            pp.setU2Va39(DataOutput.varxb.getU2Va39());
            pp.setU3Va39(DataOutput.varxb.getU3Va39());

            pp.setU1Xb40(DataOutput.varxb.getU1Xb40());
            pp.setU2Xb40(DataOutput.varxb.getU2Xb40());
            pp.setU3Xb40(DataOutput.varxb.getU3Xb40());
            pp.setU1Va40(DataOutput.varxb.getU1Va40());
            pp.setU2Va40(DataOutput.varxb.getU2Va40());
            pp.setU3Va40(DataOutput.varxb.getU3Va40());

            pp.setU1Xb41(DataOutput.varxb.getU1Xb41());
            pp.setU2Xb41(DataOutput.varxb.getU2Xb41());
            pp.setU3Xb41(DataOutput.varxb.getU3Xb41());
            pp.setU1Va41(DataOutput.varxb.getU1Va41());
            pp.setU2Va41(DataOutput.varxb.getU2Va41());
            pp.setU3Va41(DataOutput.varxb.getU3Va41());

            pp.setU1Xb42(DataOutput.varxb.getU1Xb42());
            pp.setU2Xb42(DataOutput.varxb.getU2Xb42());
            pp.setU3Xb42(DataOutput.varxb.getU3Xb42());
            pp.setU1Va42(DataOutput.varxb.getU1Va42());
            pp.setU2Va42(DataOutput.varxb.getU2Va42());
            pp.setU3Va42(DataOutput.varxb.getU3Va42());

            pp.setU1Xb43(DataOutput.varxb.getU1Xb43());
            pp.setU2Xb43(DataOutput.varxb.getU2Xb43());
            pp.setU3Xb43(DataOutput.varxb.getU3Xb43());
            pp.setU1Va43(DataOutput.varxb.getU1Va43());
            pp.setU2Va43(DataOutput.varxb.getU2Va43());
            pp.setU3Va43(DataOutput.varxb.getU3Va43());

            pp.setU1Xb44(DataOutput.varxb.getU1Xb44());
            pp.setU2Xb44(DataOutput.varxb.getU2Xb44());
            pp.setU3Xb44(DataOutput.varxb.getU3Xb44());
            pp.setU1Va44(DataOutput.varxb.getU1Va44());
            pp.setU2Va44(DataOutput.varxb.getU2Va44());
            pp.setU3Va44(DataOutput.varxb.getU3Va44());

            pp.setU1Xb45(DataOutput.varxb.getU1Xb45());
            pp.setU2Xb45(DataOutput.varxb.getU2Xb45());
            pp.setU3Xb45(DataOutput.varxb.getU3Xb45());
            pp.setU1Va45(DataOutput.varxb.getU1Va45());
            pp.setU2Va45(DataOutput.varxb.getU2Va45());
            pp.setU3Va45(DataOutput.varxb.getU3Va45());

            pp.setU1Xb46(DataOutput.varxb.getU1Xb46());
            pp.setU2Xb46(DataOutput.varxb.getU2Xb46());
            pp.setU3Xb46(DataOutput.varxb.getU3Xb46());
            pp.setU1Va46(DataOutput.varxb.getU1Va46());
            pp.setU2Va46(DataOutput.varxb.getU2Va46());
            pp.setU3Va46(DataOutput.varxb.getU3Va46());

            pp.setU1Xb47(DataOutput.varxb.getU1Xb47());
            pp.setU2Xb47(DataOutput.varxb.getU2Xb47());
            pp.setU3Xb47(DataOutput.varxb.getU3Xb47());
            pp.setU1Va47(DataOutput.varxb.getU1Va47());
            pp.setU2Va47(DataOutput.varxb.getU2Va47());
            pp.setU3Va47(DataOutput.varxb.getU3Va47());

            pp.setU1Xb48(DataOutput.varxb.getU1Xb48());
            pp.setU2Xb48(DataOutput.varxb.getU2Xb48());
            pp.setU3Xb48(DataOutput.varxb.getU3Xb48());
            pp.setU1Va48(DataOutput.varxb.getU1Va48());
            pp.setU2Va48(DataOutput.varxb.getU2Va48());
            pp.setU3Va48(DataOutput.varxb.getU3Va48());

            pp.setU1Xb49(DataOutput.varxb.getU1Xb49());
            pp.setU2Xb49(DataOutput.varxb.getU2Xb49());
            pp.setU3Xb49(DataOutput.varxb.getU3Xb49());
            pp.setU1Va49(DataOutput.varxb.getU1Va49());
            pp.setU2Va49(DataOutput.varxb.getU2Va49());
            pp.setU3Va49(DataOutput.varxb.getU3Va49());

            pp.setU1Xb50(DataOutput.varxb.getU1Xb50());
            pp.setU2Xb50(DataOutput.varxb.getU2Xb50());
            pp.setU3Xb50(DataOutput.varxb.getU3Xb50());
            pp.setU1Va50(DataOutput.varxb.getU1Va50());
            pp.setU2Va50(DataOutput.varxb.getU2Va50());
            pp.setU3Va50(DataOutput.varxb.getU3Va50());

            pp.setI1Xb1(DataOutput.varxb.getI1Xb1());
            pp.setI2Xb1(DataOutput.varxb.getI2Xb1());
            pp.setI3Xb1(DataOutput.varxb.getI3Xb1());
            pp.setI1Va1(DataOutput.varxb.getI1Va1());
            pp.setI2Va1(DataOutput.varxb.getI2Va1());
            pp.setI3Va1(DataOutput.varxb.getI3Va1());

            pp.setI1Xb2(DataOutput.varxb.getI1Xb2());
            pp.setI2Xb2(DataOutput.varxb.getI2Xb2());
            pp.setI3Xb2(DataOutput.varxb.getI3Xb2());
            pp.setI1Va2(DataOutput.varxb.getI1Va2());
            pp.setI2Va2(DataOutput.varxb.getI2Va2());
            pp.setI3Va2(DataOutput.varxb.getI3Va2());

            pp.setI1Xb3(DataOutput.varxb.getI1Xb3());
            pp.setI2Xb3(DataOutput.varxb.getI2Xb3());
            pp.setI3Xb3(DataOutput.varxb.getI3Xb3());
            pp.setI1Va3(DataOutput.varxb.getI1Va3());
            pp.setI2Va3(DataOutput.varxb.getI2Va3());
            pp.setI3Va3(DataOutput.varxb.getI3Va3());

            pp.setI1Xb4(DataOutput.varxb.getI1Xb4());
            pp.setI2Xb4(DataOutput.varxb.getI2Xb4());
            pp.setI3Xb4(DataOutput.varxb.getI3Xb4());
            pp.setI1Va4(DataOutput.varxb.getI1Va4());
            pp.setI2Va4(DataOutput.varxb.getI2Va4());
            pp.setI3Va4(DataOutput.varxb.getI3Va4());

            pp.setI1Xb5(DataOutput.varxb.getI1Xb5());
            pp.setI2Xb5(DataOutput.varxb.getI2Xb5());
            pp.setI3Xb5(DataOutput.varxb.getI3Xb5());
            pp.setI1Va5(DataOutput.varxb.getI1Va5());
            pp.setI2Va5(DataOutput.varxb.getI2Va5());
            pp.setI3Va5(DataOutput.varxb.getI3Va5());

            pp.setI1Xb6(DataOutput.varxb.getI1Xb6());
            pp.setI2Xb6(DataOutput.varxb.getI2Xb6());
            pp.setI3Xb6(DataOutput.varxb.getI3Xb6());
            pp.setI1Va6(DataOutput.varxb.getI1Va6());
            pp.setI2Va6(DataOutput.varxb.getI2Va6());
            pp.setI3Va6(DataOutput.varxb.getI3Va6());

            pp.setI1Xb7(DataOutput.varxb.getI1Xb7());
            pp.setI2Xb7(DataOutput.varxb.getI2Xb7());
            pp.setI3Xb7(DataOutput.varxb.getI3Xb7());
            pp.setI1Va7(DataOutput.varxb.getI1Va7());
            pp.setI2Va7(DataOutput.varxb.getI2Va7());
            pp.setI3Va7(DataOutput.varxb.getI3Va7());

            pp.setI1Xb8(DataOutput.varxb.getI1Xb8());
            pp.setI2Xb8(DataOutput.varxb.getI2Xb8());
            pp.setI3Xb8(DataOutput.varxb.getI3Xb8());
            pp.setI1Va8(DataOutput.varxb.getI1Va8());
            pp.setI2Va8(DataOutput.varxb.getI2Va8());
            pp.setI3Va8(DataOutput.varxb.getI3Va8());

            pp.setI1Xb9(DataOutput.varxb.getI1Xb9());
            pp.setI2Xb9(DataOutput.varxb.getI2Xb9());
            pp.setI3Xb9(DataOutput.varxb.getI3Xb9());
            pp.setI1Va9(DataOutput.varxb.getI1Va9());
            pp.setI2Va9(DataOutput.varxb.getI2Va9());
            pp.setI3Va9(DataOutput.varxb.getI3Va9());

            pp.setI1Xb10(DataOutput.varxb.getI1Xb10());
            pp.setI2Xb10(DataOutput.varxb.getI2Xb10());
            pp.setI3Xb10(DataOutput.varxb.getI3Xb10());
            pp.setI1Va10(DataOutput.varxb.getI1Va10());
            pp.setI2Va10(DataOutput.varxb.getI2Va10());
            pp.setI3Va10(DataOutput.varxb.getI3Va10());

            pp.setI1Xb11(DataOutput.varxb.getI1Xb11());
            pp.setI2Xb11(DataOutput.varxb.getI2Xb1());
            pp.setI3Xb11(DataOutput.varxb.getI3Xb11());
            pp.setI1Va11(DataOutput.varxb.getI1Va11());
            pp.setI2Va11(DataOutput.varxb.getI2Va11());
            pp.setI3Va11(DataOutput.varxb.getI3Va11());

            pp.setI1Xb12(DataOutput.varxb.getI1Xb12());
            pp.setI2Xb12(DataOutput.varxb.getI2Xb12());
            pp.setI3Xb12(DataOutput.varxb.getI3Xb12());
            pp.setI1Va12(DataOutput.varxb.getI1Va12());
            pp.setI2Va12(DataOutput.varxb.getI2Va12());
            pp.setI3Va12(DataOutput.varxb.getI3Va12());

            pp.setI1Xb13(DataOutput.varxb.getI1Xb13());
            pp.setI2Xb13(DataOutput.varxb.getI2Xb13());
            pp.setI3Xb13(DataOutput.varxb.getI3Xb13());
            pp.setI1Va13(DataOutput.varxb.getI1Va13());
            pp.setI2Va13(DataOutput.varxb.getI2Va13());
            pp.setI3Va13(DataOutput.varxb.getI3Va13());

            pp.setI1Xb14(DataOutput.varxb.getI1Xb14());
            pp.setI2Xb14(DataOutput.varxb.getI2Xb14());
            pp.setI3Xb14(DataOutput.varxb.getI3Xb14());
            pp.setI1Va14(DataOutput.varxb.getI1Va14());
            pp.setI2Va14(DataOutput.varxb.getI2Va14());
            pp.setI3Va14(DataOutput.varxb.getI3Va14());

            pp.setI1Xb15(DataOutput.varxb.getI1Xb15());
            pp.setI2Xb15(DataOutput.varxb.getI2Xb15());
            pp.setI3Xb15(DataOutput.varxb.getI3Xb15());
            pp.setI1Va15(DataOutput.varxb.getI1Va15());
            pp.setI2Va15(DataOutput.varxb.getI2Va15());
            pp.setI3Va15(DataOutput.varxb.getI3Va15());

            pp.setI1Xb16(DataOutput.varxb.getI1Xb16());
            pp.setI2Xb16(DataOutput.varxb.getI2Xb16());
            pp.setI3Xb16(DataOutput.varxb.getI3Xb16());
            pp.setI1Va16(DataOutput.varxb.getI1Va16());
            pp.setI2Va16(DataOutput.varxb.getI2Va16());
            pp.setI3Va16(DataOutput.varxb.getI3Va16());

            pp.setI1Xb17(DataOutput.varxb.getI1Xb17());
            pp.setI2Xb17(DataOutput.varxb.getI2Xb17());
            pp.setI3Xb17(DataOutput.varxb.getI3Xb17());
            pp.setI1Va17(DataOutput.varxb.getI1Va17());
            pp.setI2Va17(DataOutput.varxb.getI2Va17());
            pp.setI3Va17(DataOutput.varxb.getI3Va17());

            pp.setI1Xb18(DataOutput.varxb.getI1Xb18());
            pp.setI2Xb18(DataOutput.varxb.getI2Xb18());
            pp.setI3Xb18(DataOutput.varxb.getI3Xb18());
            pp.setI1Va18(DataOutput.varxb.getI1Va18());
            pp.setI2Va18(DataOutput.varxb.getI2Va18());
            pp.setI3Va18(DataOutput.varxb.getI3Va18());

            pp.setI1Xb19(DataOutput.varxb.getI1Xb19());
            pp.setI2Xb19(DataOutput.varxb.getI2Xb19());
            pp.setI3Xb19(DataOutput.varxb.getI3Xb19());
            pp.setI1Va19(DataOutput.varxb.getI1Va19());
            pp.setI2Va19(DataOutput.varxb.getI2Va19());
            pp.setI3Va19(DataOutput.varxb.getI3Va19());

            pp.setI1Xb20(DataOutput.varxb.getI1Xb20());
            pp.setI2Xb20(DataOutput.varxb.getI2Xb20());
            pp.setI3Xb20(DataOutput.varxb.getI3Xb20());
            pp.setI1Va20(DataOutput.varxb.getI1Va20());
            pp.setI2Va20(DataOutput.varxb.getI2Va20());
            pp.setI3Va20(DataOutput.varxb.getI3Va20());

            pp.setI1Xb21(DataOutput.varxb.getI1Xb21());
            pp.setI2Xb21(DataOutput.varxb.getI2Xb21());
            pp.setI3Xb21(DataOutput.varxb.getI3Xb21());
            pp.setI1Va21(DataOutput.varxb.getI1Va21());
            pp.setI2Va21(DataOutput.varxb.getI2Va21());
            pp.setI3Va21(DataOutput.varxb.getI3Va21());

            pp.setI1Xb22(DataOutput.varxb.getI1Xb22());
            pp.setI2Xb22(DataOutput.varxb.getI2Xb22());
            pp.setI3Xb22(DataOutput.varxb.getI3Xb22());
            pp.setI1Va22(DataOutput.varxb.getI1Va22());
            pp.setI2Va22(DataOutput.varxb.getI2Va22());
            pp.setI3Va22(DataOutput.varxb.getI3Va22());

            pp.setI1Xb23(DataOutput.varxb.getI1Xb23());
            pp.setI2Xb23(DataOutput.varxb.getI2Xb23());
            pp.setI3Xb23(DataOutput.varxb.getI3Xb23());
            pp.setI1Va23(DataOutput.varxb.getI1Va23());
            pp.setI2Va23(DataOutput.varxb.getI2Va23());
            pp.setI3Va23(DataOutput.varxb.getI3Va23());

            pp.setI1Xb24(DataOutput.varxb.getI1Xb24());
            pp.setI2Xb24(DataOutput.varxb.getI2Xb24());
            pp.setI3Xb24(DataOutput.varxb.getI3Xb24());
            pp.setI1Va24(DataOutput.varxb.getI1Va24());
            pp.setI2Va24(DataOutput.varxb.getI2Va24());
            pp.setI3Va24(DataOutput.varxb.getI3Va24());

            pp.setI1Xb25(DataOutput.varxb.getI1Xb25());
            pp.setI2Xb25(DataOutput.varxb.getI2Xb25());
            pp.setI3Xb25(DataOutput.varxb.getI3Xb25());
            pp.setI1Va25(DataOutput.varxb.getI1Va25());
            pp.setI2Va25(DataOutput.varxb.getI2Va25());
            pp.setI3Va25(DataOutput.varxb.getI3Va25());

            pp.setI1Xb26(DataOutput.varxb.getI1Xb26());
            pp.setI2Xb26(DataOutput.varxb.getI2Xb26());
            pp.setI3Xb26(DataOutput.varxb.getI3Xb26());
            pp.setI1Va26(DataOutput.varxb.getI1Va26());
            pp.setI2Va26(DataOutput.varxb.getI2Va26());
            pp.setI3Va26(DataOutput.varxb.getI3Va26());

            pp.setI1Xb27(DataOutput.varxb.getI1Xb27());
            pp.setI2Xb27(DataOutput.varxb.getI2Xb27());
            pp.setI3Xb27(DataOutput.varxb.getI3Xb27());
            pp.setI1Va27(DataOutput.varxb.getI1Va27());
            pp.setI2Va27(DataOutput.varxb.getI2Va27());
            pp.setI3Va27(DataOutput.varxb.getI3Va27());

            pp.setI1Xb28(DataOutput.varxb.getI1Xb28());
            pp.setI2Xb28(DataOutput.varxb.getI2Xb28());
            pp.setI3Xb28(DataOutput.varxb.getI3Xb28());
            pp.setI1Va28(DataOutput.varxb.getI1Va28());
            pp.setI2Va28(DataOutput.varxb.getI2Va28());
            pp.setI3Va28(DataOutput.varxb.getI3Va28());

            pp.setI1Xb29(DataOutput.varxb.getI1Xb29());
            pp.setI2Xb29(DataOutput.varxb.getI2Xb29());
            pp.setI3Xb29(DataOutput.varxb.getI3Xb29());
            pp.setI1Va29(DataOutput.varxb.getI1Va29());
            pp.setI2Va29(DataOutput.varxb.getI2Va29());
            pp.setI3Va29(DataOutput.varxb.getI3Va29());

            pp.setI1Xb30(DataOutput.varxb.getI1Xb30());
            pp.setI2Xb30(DataOutput.varxb.getI2Xb30());
            pp.setI3Xb30(DataOutput.varxb.getI3Xb30());
            pp.setI1Va30(DataOutput.varxb.getI1Va30());
            pp.setI2Va30(DataOutput.varxb.getI2Va30());
            pp.setI3Va30(DataOutput.varxb.getI3Va30());

            pp.setI1Xb31(DataOutput.varxb.getI1Xb31());
            pp.setI2Xb31(DataOutput.varxb.getI2Xb31());
            pp.setI3Xb31(DataOutput.varxb.getI3Xb31());
            pp.setI1Va31(DataOutput.varxb.getI1Va31());
            pp.setI2Va31(DataOutput.varxb.getI2Va31());
            pp.setI3Va31(DataOutput.varxb.getI3Va31());

            pp.setI1Xb32(DataOutput.varxb.getI1Xb32());
            pp.setI2Xb32(DataOutput.varxb.getI2Xb32());
            pp.setI3Xb32(DataOutput.varxb.getI3Xb32());
            pp.setI1Va32(DataOutput.varxb.getI1Va32());
            pp.setI2Va32(DataOutput.varxb.getI2Va32());
            pp.setI3Va32(DataOutput.varxb.getI3Va32());

            pp.setI1Xb33(DataOutput.varxb.getI1Xb33());
            pp.setI2Xb33(DataOutput.varxb.getI2Xb33());
            pp.setI3Xb33(DataOutput.varxb.getI3Xb33());
            pp.setI1Va33(DataOutput.varxb.getI1Va33());
            pp.setI2Va33(DataOutput.varxb.getI2Va33());
            pp.setI3Va33(DataOutput.varxb.getI3Va33());

            pp.setI1Xb34(DataOutput.varxb.getI1Xb34());
            pp.setI2Xb34(DataOutput.varxb.getI2Xb34());
            pp.setI3Xb34(DataOutput.varxb.getI3Xb34());
            pp.setI1Va34(DataOutput.varxb.getI1Va34());
            pp.setI2Va34(DataOutput.varxb.getI2Va34());
            pp.setI3Va34(DataOutput.varxb.getI3Va34());

            pp.setI1Xb35(DataOutput.varxb.getI1Xb35());
            pp.setI2Xb35(DataOutput.varxb.getI2Xb35());
            pp.setI3Xb35(DataOutput.varxb.getI3Xb35());
            pp.setI1Va35(DataOutput.varxb.getI1Va35());
            pp.setI2Va35(DataOutput.varxb.getI2Va35());
            pp.setI3Va35(DataOutput.varxb.getI3Va35());

            pp.setI1Xb36(DataOutput.varxb.getI1Xb36());
            pp.setI2Xb36(DataOutput.varxb.getI2Xb36());
            pp.setI3Xb36(DataOutput.varxb.getI3Xb36());
            pp.setI1Va36(DataOutput.varxb.getI1Va36());
            pp.setI2Va36(DataOutput.varxb.getI2Va36());
            pp.setI3Va36(DataOutput.varxb.getI3Va36());

            pp.setI1Xb37(DataOutput.varxb.getI1Xb37());
            pp.setI2Xb37(DataOutput.varxb.getI2Xb37());
            pp.setI3Xb37(DataOutput.varxb.getI3Xb37());
            pp.setI1Va37(DataOutput.varxb.getI1Va37());
            pp.setI2Va37(DataOutput.varxb.getI2Va37());
            pp.setI3Va37(DataOutput.varxb.getI3Va37());

            pp.setI1Xb38(DataOutput.varxb.getI1Xb38());
            pp.setI2Xb38(DataOutput.varxb.getI2Xb38());
            pp.setI3Xb38(DataOutput.varxb.getI3Xb38());
            pp.setI1Va38(DataOutput.varxb.getI1Va38());
            pp.setI2Va38(DataOutput.varxb.getI2Va38());
            pp.setI3Va38(DataOutput.varxb.getI3Va38());

            pp.setI1Xb39(DataOutput.varxb.getI1Xb39());
            pp.setI2Xb39(DataOutput.varxb.getI2Xb39());
            pp.setI3Xb39(DataOutput.varxb.getI3Xb39());
            pp.setI1Va39(DataOutput.varxb.getI1Va39());
            pp.setI2Va39(DataOutput.varxb.getI2Va39());
            pp.setI3Va39(DataOutput.varxb.getI3Va39());

            pp.setI1Xb40(DataOutput.varxb.getI1Xb40());
            pp.setI2Xb40(DataOutput.varxb.getI2Xb40());
            pp.setI3Xb40(DataOutput.varxb.getI3Xb40());
            pp.setI1Va40(DataOutput.varxb.getI1Va40());
            pp.setI2Va40(DataOutput.varxb.getI2Va40());
            pp.setI3Va40(DataOutput.varxb.getI3Va40());

            pp.setI1Xb41(DataOutput.varxb.getI1Xb41());
            pp.setI2Xb41(DataOutput.varxb.getI2Xb41());
            pp.setI3Xb41(DataOutput.varxb.getI3Xb41());
            pp.setI1Va41(DataOutput.varxb.getI1Va41());
            pp.setI2Va41(DataOutput.varxb.getI2Va41());
            pp.setI3Va41(DataOutput.varxb.getI3Va41());

            pp.setI1Xb42(DataOutput.varxb.getI1Xb42());
            pp.setI2Xb42(DataOutput.varxb.getI2Xb42());
            pp.setI3Xb42(DataOutput.varxb.getI3Xb42());
            pp.setI1Va42(DataOutput.varxb.getI1Va42());
            pp.setI2Va42(DataOutput.varxb.getI2Va42());
            pp.setI3Va42(DataOutput.varxb.getI3Va42());

            pp.setI1Xb43(DataOutput.varxb.getI1Xb43());
            pp.setI2Xb43(DataOutput.varxb.getI2Xb43());
            pp.setI3Xb43(DataOutput.varxb.getI3Xb43());
            pp.setI1Va43(DataOutput.varxb.getI1Va43());
            pp.setI2Va43(DataOutput.varxb.getI2Va43());
            pp.setI3Va43(DataOutput.varxb.getI3Va43());

            pp.setI1Xb44(DataOutput.varxb.getI1Xb44());
            pp.setI2Xb44(DataOutput.varxb.getI2Xb44());
            pp.setI3Xb44(DataOutput.varxb.getI3Xb44());
            pp.setI1Va44(DataOutput.varxb.getI1Va44());
            pp.setI2Va44(DataOutput.varxb.getI2Va44());
            pp.setI3Va44(DataOutput.varxb.getI3Va44());

            pp.setI1Xb45(DataOutput.varxb.getI1Xb45());
            pp.setI2Xb45(DataOutput.varxb.getI2Xb45());
            pp.setI3Xb45(DataOutput.varxb.getI3Xb45());
            pp.setI1Va45(DataOutput.varxb.getI1Va45());
            pp.setI2Va45(DataOutput.varxb.getI2Va45());
            pp.setI3Va45(DataOutput.varxb.getI3Va45());

            pp.setI1Xb46(DataOutput.varxb.getI1Xb46());
            pp.setI2Xb46(DataOutput.varxb.getI2Xb46());
            pp.setI3Xb46(DataOutput.varxb.getI3Xb46());
            pp.setI1Va46(DataOutput.varxb.getI1Va46());
            pp.setI2Va46(DataOutput.varxb.getI2Va46());
            pp.setI3Va46(DataOutput.varxb.getI3Va46());

            pp.setI1Xb47(DataOutput.varxb.getI1Xb47());
            pp.setI2Xb47(DataOutput.varxb.getI2Xb47());
            pp.setI3Xb47(DataOutput.varxb.getI3Xb47());
            pp.setI1Va47(DataOutput.varxb.getI1Va47());
            pp.setI2Va47(DataOutput.varxb.getI2Va47());
            pp.setI3Va47(DataOutput.varxb.getI3Va47());

            pp.setI1Xb48(DataOutput.varxb.getI1Xb48());
            pp.setI2Xb48(DataOutput.varxb.getI2Xb48());
            pp.setI3Xb48(DataOutput.varxb.getI3Xb48());
            pp.setI1Va48(DataOutput.varxb.getI1Va48());
            pp.setI2Va48(DataOutput.varxb.getI2Va48());
            pp.setI3Va48(DataOutput.varxb.getI3Va48());

            pp.setI1Xb49(DataOutput.varxb.getI1Xb49());
            pp.setI2Xb49(DataOutput.varxb.getI2Xb49());
            pp.setI3Xb49(DataOutput.varxb.getI3Xb49());
            pp.setI1Va49(DataOutput.varxb.getI1Va49());
            pp.setI2Va49(DataOutput.varxb.getI2Va49());
            pp.setI3Va49(DataOutput.varxb.getI3Va49());

            pp.setI1Xb50(DataOutput.varxb.getI1Xb50());
            pp.setI2Xb50(DataOutput.varxb.getI2Xb50());
            pp.setI3Xb50(DataOutput.varxb.getI3Xb50());
            pp.setI1Va50(DataOutput.varxb.getI1Va50());
            pp.setI2Va50(DataOutput.varxb.getI2Va50());
            pp.setI3Va50(DataOutput.varxb.getI3Va50());


            JSONObject jsonObject = new JSONObject();
            jsonObject.put("nowpowerxb", pp);
            result = JSON.toJSONString(jsonObject); // List转json

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
