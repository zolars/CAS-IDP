package grabData;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Dictionary;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import hibernatePOJO.PowerxbMonitor;

public class DataOutput {
    public static Map<String,Float> dataset=null;
    private static List<Dictionary> dic=DataOnline.dic;
    public static void setDataset(Map<String, Float> dataset) {
        DataOutput.dataset = dataset;
    }

    public static void savedata(){
        PowerparmMonitor var = new PowerparmMonitor();
        PowerxbMonitor varxb = new PowerxbMonitor();
        PowersxdyMonitor varsxdy = new PowersxdyMonitor();
        int count =0;

        //基本参量
        var.setU1(dataset.get("U1"));
        var.setU2(dataset.get("U2"));
        var.setU3(dataset.get("U3"));

        varsxdy.setU1(dataset.get("U1"));
        varsxdy.setU2(dataset.get("U2"));
        varsxdy.setU3(dataset.get("U3"));

        var.setI1(dataset.get("I1"));
        var.setI2(dataset.get("I2"));
        var.setI3(dataset.get("I3"));

        varsxdy.setI1(dataset.get("I1"));
        varsxdy.setI2(dataset.get("I2"));
        varsxdy.setI3(dataset.get("I3"));

        var.setP1(dataset.get("P1"));
        var.setP2(dataset.get("P2"));
        var.setP3(dataset.get("P3"));
        var.setQ1(dataset.get("Q1"));
        var.setQ2(dataset.get("Q2"));
        var.setQ3(dataset.get("Q3"));
        var.setS1(dataset.get("S1"));
        var.setS2(dataset.get("S2"));
        var.setS3(dataset.get("S3"));
        var.setPsum(dataset.get("Psum"));
        var.setQsum(dataset.get("Qsum"));
        var.setSsum(dataset.get("Ssum"));
        var.setPf1(dataset.get("PF1"));
        var.setPf2(dataset.get("PF2"));
        var.setPf3(dataset.get("PF3"));
        var.setpFsum(dataset.get("PFsum"));
        /*22-25四项存的是三项电压电流的不平衡度，未定用零序还是负序
         */
        varsxdy.setUunb(dataset.get("Uunb"));
        //数据库字段有重名是否已经修改？
        varsxdy.setAunb(dataset.get("Aunb"));
        //U1谐波
        varxb.setU1Xb1(dataset.get("U1xb_1"));
        varxb.setU1Xb2(dataset.get("U1xb_2"));
        varxb.setU1Xb3(dataset.get("U1xb_3"));
        varxb.setU1Xb4(dataset.get("U1xb_4"));
        varxb.setU1Xb5(dataset.get("U1xb_5"));
        varxb.setU1Xb6(dataset.get("U1xb_6"));
        varxb.setU1Xb7(dataset.get("U1xb_7"));
        varxb.setU1Xb8(dataset.get("U1xb_8"));
        varxb.setU1Xb9(dataset.get("U1xb_9"));
        varxb.setU1Xb10(dataset.get("U1xb_10"));
        varxb.setU1Xb11(dataset.get("U1xb_11"));
        varxb.setU1Xb12(dataset.get("U1xb_12"));
        varxb.setU1Xb13(dataset.get("U1xb_13"));
        varxb.setU1Xb14(dataset.get("U1xb_14"));
        varxb.setU1Xb15(dataset.get("U1xb_15"));
        varxb.setU1Xb16(dataset.get("U1xb_16"));
        varxb.setU1Xb17(dataset.get("U1xb_17"));
        varxb.setU1Xb18(dataset.get("U1xb_18"));
        varxb.setU1Xb19(dataset.get("U1xb_19"));
        varxb.setU1Xb20(dataset.get("U1xb_20"));
        varxb.setU1Xb21(dataset.get("U1xb_21"));
        varxb.setU1Xb22(dataset.get("U1xb_22"));
        varxb.setU1Xb23(dataset.get("U1xb_23"));
        varxb.setU1Xb24(dataset.get("U1xb_24"));
        varxb.setU1Xb25(dataset.get("U1xb_25"));
        varxb.setU1Xb26(dataset.get("U1xb_26"));
        varxb.setU1Xb27(dataset.get("U1xb_27"));
        varxb.setU1Xb28(dataset.get("U1xb_28"));
        varxb.setU1Xb29(dataset.get("U1xb_29"));
        varxb.setU1Xb30(dataset.get("U1xb_30"));
        varxb.setU1Xb31(dataset.get("U1xb_31"));
        varxb.setU1Xb32(dataset.get("U1xb_32"));
        varxb.setU1Xb33(dataset.get("U1xb_33"));
        varxb.setU1Xb34(dataset.get("U1xb_34"));
        varxb.setU1Xb35(dataset.get("U1xb_35"));
        varxb.setU1Xb36(dataset.get("U1xb_36"));
        varxb.setU1Xb37(dataset.get("U1xb_37"));
        varxb.setU1Xb38(dataset.get("U1xb_38"));
        varxb.setU1Xb39(dataset.get("U1xb_39"));
        varxb.setU1Xb40(dataset.get("U1xb_40"));
        varxb.setU1Xb41(dataset.get("U1xb_41"));
        varxb.setU1Xb42(dataset.get("U1xb_42"));
        varxb.setU1Xb43(dataset.get("U1xb_43"));
        varxb.setU1Xb44(dataset.get("U1xb_44"));
        varxb.setU1Xb45(dataset.get("U1xb_45"));
        varxb.setU1Xb46(dataset.get("U1xb_46"));
        varxb.setU1Xb47(dataset.get("U1xb_47"));
        varxb.setU1Xb48(dataset.get("U1xb_48"));
        varxb.setU1Xb49(dataset.get("U1xb_49"));
        varxb.setU1Xb50(dataset.get("U1xb_50"));

        //U2谐波
        varxb.setU2Xb1(dataset.get("U2xb_1"));
        varxb.setU2Xb2(dataset.get("U2xb_2"));
        varxb.setU2Xb3(dataset.get("U2xb_3"));
        varxb.setU2Xb4(dataset.get("U2xb_4"));
        varxb.setU2Xb5(dataset.get("U2xb_5"));
        varxb.setU2Xb6(dataset.get("U2xb_6"));
        varxb.setU2Xb7(dataset.get("U2xb_7"));
        varxb.setU2Xb8(dataset.get("U2xb_8"));
        varxb.setU2Xb9(dataset.get("U2xb_9"));
        varxb.setU2Xb10(dataset.get("U2xb_10"));
        varxb.setU2Xb11(dataset.get("U2xb_11"));
        varxb.setU2Xb12(dataset.get("U2xb_12"));
        varxb.setU2Xb13(dataset.get("U2xb_13"));
        varxb.setU2Xb14(dataset.get("U2xb_14"));
        varxb.setU2Xb15(dataset.get("U2xb_15"));
        varxb.setU2Xb16(dataset.get("U2xb_16"));
        varxb.setU2Xb17(dataset.get("U2xb_17"));
        varxb.setU2Xb18(dataset.get("U2xb_18"));
        varxb.setU2Xb19(dataset.get("U2xb_19"));
        varxb.setU2Xb20(dataset.get("U2xb_20"));
        varxb.setU2Xb21(dataset.get("U2xb_21"));
        varxb.setU2Xb22(dataset.get("U2xb_22"));
        varxb.setU2Xb23(dataset.get("U2xb_23"));
        varxb.setU2Xb24(dataset.get("U2xb_24"));
        varxb.setU2Xb25(dataset.get("U2xb_25"));
        varxb.setU2Xb26(dataset.get("U2xb_26"));
        varxb.setU2Xb27(dataset.get("U2xb_27"));
        varxb.setU2Xb28(dataset.get("U2xb_28"));
        varxb.setU2Xb29(dataset.get("U2xb_29"));
        varxb.setU2Xb30(dataset.get("U2xb_30"));
        varxb.setU2Xb31(dataset.get("U2xb_31"));
        varxb.setU2Xb32(dataset.get("U2xb_32"));
        varxb.setU2Xb33(dataset.get("U2xb_33"));
        varxb.setU2Xb34(dataset.get("U2xb_34"));
        varxb.setU2Xb35(dataset.get("U2xb_35"));
        varxb.setU2Xb36(dataset.get("U2xb_36"));
        varxb.setU2Xb37(dataset.get("U2xb_37"));
        varxb.setU2Xb38(dataset.get("U2xb_38"));
        varxb.setU2Xb39(dataset.get("U2xb_39"));
        varxb.setU2Xb40(dataset.get("U2xb_40"));
        varxb.setU2Xb41(dataset.get("U2xb_41"));
        varxb.setU2Xb42(dataset.get("U2xb_42"));
        varxb.setU2Xb43(dataset.get("U2xb_43"));
        varxb.setU2Xb44(dataset.get("U2xb_44"));
        varxb.setU2Xb45(dataset.get("U2xb_45"));
        varxb.setU2Xb46(dataset.get("U2xb_46"));
        varxb.setU2Xb47(dataset.get("U2xb_47"));
        varxb.setU2Xb48(dataset.get("U2xb_48"));
        varxb.setU2Xb49(dataset.get("U2xb_49"));
        varxb.setU2Xb50(dataset.get("U2xb_50"));

        //U3谐波
        varxb.setU3Xb1(dataset.get("U3xb_1"));
        varxb.setU3Xb2(dataset.get("U3xb_2"));
        varxb.setU3Xb3(dataset.get("U3xb_3"));
        varxb.setU3Xb4(dataset.get("U3xb_4"));
        varxb.setU3Xb5(dataset.get("U3xb_5"));
        varxb.setU3Xb6(dataset.get("U3xb_6"));
        varxb.setU3Xb7(dataset.get("U3xb_7"));
        varxb.setU3Xb8(dataset.get("U3xb_8"));
        varxb.setU3Xb9(dataset.get("U3xb_9"));
        varxb.setU3Xb10(dataset.get("U3xb_10"));
        varxb.setU3Xb11(dataset.get("U3xb_11"));
        varxb.setU3Xb12(dataset.get("U3xb_12"));
        varxb.setU3Xb13(dataset.get("U3xb_13"));
        varxb.setU3Xb14(dataset.get("U3xb_14"));
        varxb.setU3Xb15(dataset.get("U3xb_15"));
        varxb.setU3Xb16(dataset.get("U3xb_16"));
        varxb.setU3Xb17(dataset.get("U3xb_17"));
        varxb.setU3Xb18(dataset.get("U3xb_18"));
        varxb.setU3Xb19(dataset.get("U3xb_19"));
        varxb.setU3Xb20(dataset.get("U3xb_20"));
        varxb.setU3Xb21(dataset.get("U3xb_21"));
        varxb.setU3Xb22(dataset.get("U3xb_22"));
        varxb.setU3Xb23(dataset.get("U3xb_23"));
        varxb.setU3Xb24(dataset.get("U3xb_24"));
        varxb.setU3Xb25(dataset.get("U3xb_25"));
        varxb.setU3Xb26(dataset.get("U3xb_26"));
        varxb.setU3Xb27(dataset.get("U3xb_27"));
        varxb.setU3Xb28(dataset.get("U3xb_28"));
        varxb.setU3Xb29(dataset.get("U3xb_29"));
        varxb.setU3Xb30(dataset.get("U3xb_30"));
        varxb.setU3Xb31(dataset.get("U3xb_31"));
        varxb.setU3Xb32(dataset.get("U3xb_32"));
        varxb.setU3Xb33(dataset.get("U3xb_33"));
        varxb.setU3Xb34(dataset.get("U3xb_34"));
        varxb.setU3Xb35(dataset.get("U3xb_35"));
        varxb.setU3Xb36(dataset.get("U3xb_36"));
        varxb.setU3Xb37(dataset.get("U3xb_37"));
        varxb.setU3Xb38(dataset.get("U3xb_38"));
        varxb.setU3Xb39(dataset.get("U3xb_39"));
        varxb.setU3Xb40(dataset.get("U3xb_40"));
        varxb.setU3Xb41(dataset.get("U3xb_41"));
        varxb.setU3Xb42(dataset.get("U3xb_42"));
        varxb.setU3Xb43(dataset.get("U3xb_43"));
        varxb.setU3Xb44(dataset.get("U3xb_44"));
        varxb.setU3Xb45(dataset.get("U3xb_45"));
        varxb.setU3Xb46(dataset.get("U3xb_46"));
        varxb.setU3Xb47(dataset.get("U3xb_47"));
        varxb.setU3Xb48(dataset.get("U3xb_48"));
        varxb.setU3Xb49(dataset.get("U3xb_49"));
        varxb.setU3Xb50(dataset.get("U3xb_50"));
        //I1谐波
        varxb.setI1Xb1(dataset.get("I1xb_1"));
        varxb.setI1Xb2(dataset.get("I1xb_2"));
        varxb.setI1Xb3(dataset.get("I1xb_3"));
        varxb.setI1Xb4(dataset.get("I1xb_4"));
        varxb.setI1Xb5(dataset.get("I1xb_5"));
        varxb.setI1Xb6(dataset.get("I1xb_6"));
        varxb.setI1Xb7(dataset.get("I1xb_7"));
        varxb.setI1Xb8(dataset.get("I1xb_8"));
        varxb.setI1Xb9(dataset.get("I1xb_9"));
        varxb.setI1Xb10(dataset.get("I1xb_10"));
        varxb.setI1Xb11(dataset.get("I1xb_11"));
        varxb.setI1Xb12(dataset.get("I1xb_12"));
        varxb.setI1Xb13(dataset.get("I1xb_13"));
        varxb.setI1Xb14(dataset.get("I1xb_14"));
        varxb.setI1Xb15(dataset.get("I1xb_15"));
        varxb.setI1Xb16(dataset.get("I1xb_16"));
        varxb.setI1Xb17(dataset.get("I1xb_17"));
        varxb.setI1Xb18(dataset.get("I1xb_18"));
        varxb.setI1Xb19(dataset.get("I1xb_19"));
        varxb.setI1Xb20(dataset.get("I1xb_20"));
        varxb.setI1Xb21(dataset.get("I1xb_21"));
        varxb.setI1Xb22(dataset.get("I1xb_22"));
        varxb.setI1Xb23(dataset.get("I1xb_23"));
        varxb.setI1Xb24(dataset.get("I1xb_24"));
        varxb.setI1Xb25(dataset.get("I1xb_25"));
        varxb.setI1Xb26(dataset.get("I1xb_26"));
        varxb.setI1Xb27(dataset.get("I1xb_27"));
        varxb.setI1Xb28(dataset.get("I1xb_28"));
        varxb.setI1Xb29(dataset.get("I1xb_29"));
        varxb.setI1Xb30(dataset.get("I1xb_30"));
        varxb.setI1Xb31(dataset.get("I1xb_31"));
        varxb.setI1Xb32(dataset.get("I1xb_32"));
        varxb.setI1Xb33(dataset.get("I1xb_33"));
        varxb.setI1Xb34(dataset.get("I1xb_34"));
        varxb.setI1Xb35(dataset.get("I1xb_35"));
        varxb.setI1Xb36(dataset.get("I1xb_36"));
        varxb.setI1Xb37(dataset.get("I1xb_37"));
        varxb.setI1Xb38(dataset.get("I1xb_38"));
        varxb.setI1Xb39(dataset.get("I1xb_39"));
        varxb.setI1Xb40(dataset.get("I1xb_40"));
        varxb.setI1Xb41(dataset.get("I1xb_41"));
        varxb.setI1Xb42(dataset.get("I1xb_42"));
        varxb.setI1Xb43(dataset.get("I1xb_43"));
        varxb.setI1Xb44(dataset.get("I1xb_44"));
        varxb.setI1Xb45(dataset.get("I1xb_45"));
        varxb.setI1Xb46(dataset.get("I1xb_46"));
        varxb.setI1Xb47(dataset.get("I1xb_47"));
        varxb.setI1Xb48(dataset.get("I1xb_48"));
        varxb.setI1Xb49(dataset.get("I1xb_49"));
        varxb.setI1Xb50(dataset.get("I1xb_50"));
        //I2谐波
        varxb.setI2Xb1(dataset.get("I2xb_1"));
        varxb.setI2Xb2(dataset.get("I2xb_2"));
        varxb.setI2Xb3(dataset.get("I2xb_3"));
        varxb.setI2Xb4(dataset.get("I2xb_4"));
        varxb.setI2Xb5(dataset.get("I2xb_5"));
        varxb.setI2Xb6(dataset.get("I2xb_6"));
        varxb.setI2Xb7(dataset.get("I2xb_7"));
        varxb.setI2Xb8(dataset.get("I2xb_8"));
        varxb.setI2Xb9(dataset.get("I2xb_9"));
        varxb.setI2Xb10(dataset.get("I2xb_10"));
        varxb.setI2Xb11(dataset.get("I2xb_11"));
        varxb.setI2Xb12(dataset.get("I2xb_12"));
        varxb.setI2Xb13(dataset.get("I2xb_13"));
        varxb.setI2Xb14(dataset.get("I2xb_14"));
        varxb.setI2Xb15(dataset.get("I2xb_15"));
        varxb.setI2Xb16(dataset.get("I2xb_16"));
        varxb.setI2Xb17(dataset.get("I2xb_17"));
        varxb.setI2Xb18(dataset.get("I2xb_18"));
        varxb.setI2Xb19(dataset.get("I2xb_19"));
        varxb.setI2Xb20(dataset.get("I2xb_20"));
        varxb.setI2Xb21(dataset.get("I2xb_21"));
        varxb.setI2Xb22(dataset.get("I2xb_22"));
        varxb.setI2Xb23(dataset.get("I2xb_23"));
        varxb.setI2Xb24(dataset.get("I2xb_24"));
        varxb.setI2Xb25(dataset.get("I2xb_25"));
        varxb.setI2Xb26(dataset.get("I2xb_26"));
        varxb.setI2Xb27(dataset.get("I2xb_27"));
        varxb.setI2Xb28(dataset.get("I2xb_28"));
        varxb.setI2Xb29(dataset.get("I2xb_29"));
        varxb.setI2Xb30(dataset.get("I2xb_30"));
        varxb.setI2Xb31(dataset.get("I2xb_31"));
        varxb.setI2Xb32(dataset.get("I2xb_32"));
        varxb.setI2Xb33(dataset.get("I2xb_33"));
        varxb.setI2Xb34(dataset.get("I2xb_34"));
        varxb.setI2Xb35(dataset.get("I2xb_35"));
        varxb.setI2Xb36(dataset.get("I2xb_36"));
        varxb.setI2Xb37(dataset.get("I2xb_37"));
        varxb.setI2Xb38(dataset.get("I2xb_38"));
        varxb.setI2Xb39(dataset.get("I2xb_39"));
        varxb.setI2Xb40(dataset.get("I2xb_40"));
        varxb.setI2Xb41(dataset.get("I2xb_41"));
        varxb.setI2Xb42(dataset.get("I2xb_42"));
        varxb.setI2Xb43(dataset.get("I2xb_43"));
        varxb.setI2Xb44(dataset.get("I2xb_44"));
        varxb.setI2Xb45(dataset.get("I2xb_45"));
        varxb.setI2Xb46(dataset.get("I2xb_46"));
        varxb.setI2Xb47(dataset.get("I2xb_47"));
        varxb.setI2Xb48(dataset.get("I2xb_48"));
        varxb.setI2Xb49(dataset.get("I2xb_49"));
        varxb.setI2Xb50(dataset.get("I2xb_50"));
        //I3谐波
        varxb.setI3Xb1(dataset.get("I3xb_1"));
        varxb.setI3Xb2(dataset.get("I3xb_2"));
        varxb.setI3Xb3(dataset.get("I3xb_3"));
        varxb.setI3Xb4(dataset.get("I3xb_4"));
        varxb.setI3Xb5(dataset.get("I3xb_5"));
        varxb.setI3Xb6(dataset.get("I3xb_6"));
        varxb.setI3Xb7(dataset.get("I3xb_7"));
        varxb.setI3Xb8(dataset.get("I3xb_8"));
        varxb.setI3Xb9(dataset.get("I3xb_9"));
        varxb.setI3Xb10(dataset.get("I3xb_10"));
        varxb.setI3Xb11(dataset.get("I3xb_11"));
        varxb.setI3Xb12(dataset.get("I3xb_12"));
        varxb.setI3Xb13(dataset.get("I3xb_13"));
        varxb.setI3Xb14(dataset.get("I3xb_14"));
        varxb.setI3Xb15(dataset.get("I3xb_15"));
        varxb.setI3Xb16(dataset.get("I3xb_16"));
        varxb.setI3Xb17(dataset.get("I3xb_17"));
        varxb.setI3Xb18(dataset.get("I3xb_18"));
        varxb.setI3Xb19(dataset.get("I3xb_19"));
        varxb.setI3Xb20(dataset.get("I3xb_20"));
        varxb.setI3Xb21(dataset.get("I3xb_21"));
        varxb.setI3Xb22(dataset.get("I3xb_22"));
        varxb.setI3Xb23(dataset.get("I3xb_23"));
        varxb.setI3Xb24(dataset.get("I3xb_24"));
        varxb.setI3Xb25(dataset.get("I3xb_25"));
        varxb.setI3Xb26(dataset.get("I3xb_26"));
        varxb.setI3Xb27(dataset.get("I3xb_27"));
        varxb.setI3Xb28(dataset.get("I3xb_28"));
        varxb.setI3Xb29(dataset.get("I3xb_29"));
        varxb.setI3Xb30(dataset.get("I3xb_30"));
        varxb.setI3Xb31(dataset.get("I3xb_31"));
        varxb.setI3Xb32(dataset.get("I3xb_32"));
        varxb.setI3Xb33(dataset.get("I3xb_33"));
        varxb.setI3Xb34(dataset.get("I3xb_34"));
        varxb.setI3Xb35(dataset.get("I3xb_35"));
        varxb.setI3Xb36(dataset.get("I3xb_36"));
        varxb.setI3Xb37(dataset.get("I3xb_37"));
        varxb.setI3Xb38(dataset.get("I3xb_38"));
        varxb.setI3Xb39(dataset.get("I3xb_39"));
        varxb.setI3Xb40(dataset.get("I3xb_40"));
        varxb.setI3Xb41(dataset.get("I3xb_41"));
        varxb.setI3Xb42(dataset.get("I3xb_42"));
        varxb.setI3Xb43(dataset.get("I3xb_43"));
        varxb.setI3Xb44(dataset.get("I3xb_44"));
        varxb.setI3Xb45(dataset.get("I3xb_45"));
        varxb.setI3Xb46(dataset.get("I3xb_46"));
        varxb.setI3Xb47(dataset.get("I3xb_47"));
        varxb.setI3Xb48(dataset.get("I3xb_48"));
        varxb.setI3Xb49(dataset.get("I3xb_49"));
        varxb.setI3Xb50(dataset.get("I3xb_50"));
        /*326-331六个字段为电压电流谐波畸变率，暂时未定
         */

//        System.out.println("fffffffffff u1"+dataset.get("|f|_sum"));


        //输入频率相关
        var.setHz(dataset.get("Hz"));
        var.setIflU1(dataset.get("|f|_U1"));
        var.setIflU2(dataset.get("|f|_U2"));
        var.setIflU3(dataset.get("|f|_U3"));
        var.setPstU1(dataset.get("Pst_U1"));
        var.setPstU2(dataset.get("Pst_U2"));
        var.setPstU3(dataset.get("Pst_U3"));
        var.setPltU1(dataset.get("Plt_U1"));
        var.setPltU2(dataset.get("Plt_U2"));
        var.setPltU3(dataset.get("Plt_U3"));

        Float angleu1 = dataset.get("PHI_U1") + 360;
        Float angleu2 = dataset.get("PHI_U2") + 360;
        Float angleu3 = dataset.get("PHI_U3") + 360;

        Float anglei1 = dataset.get("PHI_I1") + 360;
        Float anglei2 = dataset.get("PHI_I2") + 360;
        Float anglei3 = dataset.get("PHI_I3") + 360;

        varsxdy.setAngleU1(angleu1%360);
        varsxdy.setAngleU2(angleu2%360);
        varsxdy.setAngleU3(angleu3%360);
        varsxdy.setAngleI1(anglei1%360);
        varsxdy.setAngleI2(anglei2%360);
        varsxdy.setAngleI3(anglei3%360);

        //U1谐波含有率

        varxb.setU1Va2(dataset.get("U1va_2"));
        varxb.setU1Va3(dataset.get("U1va_3"));
        varxb.setU1Va4(dataset.get("U1va_4"));
        varxb.setU1Va5(dataset.get("U1va_5"));
        varxb.setU1Va6(dataset.get("U1va_6"));
        varxb.setU1Va7(dataset.get("U1va_7"));
        varxb.setU1Va8(dataset.get("U1va_8"));
        varxb.setU1Va9(dataset.get("U1va_9"));
        varxb.setU1Va10(dataset.get("U1va_10"));
        varxb.setU1Va11(dataset.get("U1va_11"));
        varxb.setU1Va12(dataset.get("U1va_12"));
        varxb.setU1Va13(dataset.get("U1va_13"));
        varxb.setU1Va14(dataset.get("U1va_14"));
        varxb.setU1Va15(dataset.get("U1va_15"));
        varxb.setU1Va16(dataset.get("U1va_16"));
        varxb.setU1Va17(dataset.get("U1va_17"));
        varxb.setU1Va18(dataset.get("U1va_18"));
        varxb.setU1Va19(dataset.get("U1va_19"));
        varxb.setU1Va20(dataset.get("U1va_20"));
        varxb.setU1Va21(dataset.get("U1va_21"));
        varxb.setU1Va22(dataset.get("U1va_22"));
        varxb.setU1Va23(dataset.get("U1va_23"));
        varxb.setU1Va24(dataset.get("U1va_24"));
        varxb.setU1Va25(dataset.get("U1va_25"));
        varxb.setU1Va26(dataset.get("U1va_26"));
        varxb.setU1Va27(dataset.get("U1va_27"));
        varxb.setU1Va28(dataset.get("U1va_28"));
        varxb.setU1Va29(dataset.get("U1va_29"));
        varxb.setU1Va30(dataset.get("U1va_30"));
        varxb.setU1Va31(dataset.get("U1va_31"));
        varxb.setU1Va32(dataset.get("U1va_32"));
        varxb.setU1Va33(dataset.get("U1va_33"));
        varxb.setU1Va34(dataset.get("U1va_34"));
        varxb.setU1Va35(dataset.get("U1va_35"));
        varxb.setU1Va36(dataset.get("U1va_36"));
        varxb.setU1Va37(dataset.get("U1va_37"));
        varxb.setU1Va38(dataset.get("U1va_38"));
        varxb.setU1Va39(dataset.get("U1va_39"));
        varxb.setU1Va40(dataset.get("U1va_40"));
        varxb.setU1Va41(dataset.get("U1va_41"));
        varxb.setU1Va42(dataset.get("U1va_42"));
        varxb.setU1Va43(dataset.get("U1va_43"));
        varxb.setU1Va44(dataset.get("U1va_44"));
        varxb.setU1Va45(dataset.get("U1va_45"));
        varxb.setU1Va46(dataset.get("U1va_46"));
        varxb.setU1Va47(dataset.get("U1va_47"));
        varxb.setU1Va48(dataset.get("U1va_48"));
        varxb.setU1Va49(dataset.get("U1va_49"));
        varxb.setU1Va50(dataset.get("U1va_50"));



        //U2谐波含有率
        varxb.setU2Va2(dataset.get("U2va_2"));
        varxb.setU2Va3(dataset.get("U2va_3"));
        varxb.setU2Va4(dataset.get("U2va_4"));
        varxb.setU2Va5(dataset.get("U2va_5"));
        varxb.setU2Va6(dataset.get("U2va_6"));
        varxb.setU2Va7(dataset.get("U2va_7"));
        varxb.setU2Va8(dataset.get("U2va_8"));
        varxb.setU2Va9(dataset.get("U2va_9"));
        varxb.setU2Va10(dataset.get("U2va_10"));
        varxb.setU2Va11(dataset.get("U2va_11"));
        varxb.setU2Va12(dataset.get("U2va_12"));
        varxb.setU2Va13(dataset.get("U2va_13"));
        varxb.setU2Va14(dataset.get("U2va_14"));
        varxb.setU2Va15(dataset.get("U2va_15"));
        varxb.setU2Va16(dataset.get("U2va_16"));
        varxb.setU2Va17(dataset.get("U2va_17"));
        varxb.setU2Va18(dataset.get("U2va_18"));
        varxb.setU2Va19(dataset.get("U2va_19"));
        varxb.setU2Va20(dataset.get("U2va_20"));
        varxb.setU2Va21(dataset.get("U2va_21"));
        varxb.setU2Va22(dataset.get("U2va_22"));
        varxb.setU2Va23(dataset.get("U2va_23"));
        varxb.setU2Va24(dataset.get("U2va_24"));
        varxb.setU2Va25(dataset.get("U2va_25"));
        varxb.setU2Va26(dataset.get("U2va_26"));
        varxb.setU2Va27(dataset.get("U2va_27"));
        varxb.setU2Va28(dataset.get("U2va_28"));
        varxb.setU2Va29(dataset.get("U2va_29"));
        varxb.setU2Va30(dataset.get("U2va_30"));
        varxb.setU2Va31(dataset.get("U2va_31"));
        varxb.setU2Va32(dataset.get("U2va_32"));
        varxb.setU2Va33(dataset.get("U2va_33"));
        varxb.setU2Va34(dataset.get("U2va_34"));
        varxb.setU2Va35(dataset.get("U2va_35"));
        varxb.setU2Va36(dataset.get("U2va_36"));
        varxb.setU2Va37(dataset.get("U2va_37"));
        varxb.setU2Va38(dataset.get("U2va_38"));
        varxb.setU2Va39(dataset.get("U2va_39"));
        varxb.setU2Va40(dataset.get("U2va_40"));
        varxb.setU2Va41(dataset.get("U2va_41"));
        varxb.setU2Va42(dataset.get("U2va_42"));
        varxb.setU2Va43(dataset.get("U2va_43"));
        varxb.setU2Va44(dataset.get("U2va_44"));
        varxb.setU2Va45(dataset.get("U2va_45"));
        varxb.setU2Va46(dataset.get("U2va_46"));
        varxb.setU2Va47(dataset.get("U2va_47"));
        varxb.setU2Va48(dataset.get("U2va_48"));
        varxb.setU2Va49(dataset.get("U2va_49"));
        varxb.setU2Va50(dataset.get("U2va_50"));
        //U3谐波含有率
        varxb.setU3Va2(dataset.get("U3va_2"));
        varxb.setU3Va3(dataset.get("U3va_3"));
        varxb.setU3Va4(dataset.get("U3va_4"));
        varxb.setU3Va5(dataset.get("U3va_5"));
        varxb.setU3Va6(dataset.get("U3va_6"));
        varxb.setU3Va7(dataset.get("U3va_7"));
        varxb.setU3Va8(dataset.get("U3va_8"));
        varxb.setU3Va9(dataset.get("U3va_9"));
        varxb.setU3Va10(dataset.get("U3va_10"));
        varxb.setU3Va11(dataset.get("U3va_11"));
        varxb.setU3Va12(dataset.get("U3va_12"));
        varxb.setU3Va13(dataset.get("U3va_13"));
        varxb.setU3Va14(dataset.get("U3va_14"));
        varxb.setU3Va15(dataset.get("U3va_15"));
        varxb.setU3Va16(dataset.get("U3va_16"));
        varxb.setU3Va17(dataset.get("U3va_17"));
        varxb.setU3Va18(dataset.get("U3va_18"));
        varxb.setU3Va19(dataset.get("U3va_19"));
        varxb.setU3Va20(dataset.get("U3va_20"));
        varxb.setU3Va21(dataset.get("U3va_21"));
        varxb.setU3Va22(dataset.get("U3va_22"));
        varxb.setU3Va23(dataset.get("U3va_23"));
        varxb.setU3Va24(dataset.get("U3va_24"));
        varxb.setU3Va25(dataset.get("U3va_25"));
        varxb.setU3Va26(dataset.get("U3va_26"));
        varxb.setU3Va27(dataset.get("U3va_27"));
        varxb.setU3Va28(dataset.get("U3va_28"));
        varxb.setU3Va29(dataset.get("U3va_29"));
        varxb.setU3Va30(dataset.get("U3va_30"));
        varxb.setU3Va31(dataset.get("U3va_31"));
        varxb.setU3Va32(dataset.get("U3va_32"));
        varxb.setU3Va33(dataset.get("U3va_33"));
        varxb.setU3Va34(dataset.get("U3va_34"));
        varxb.setU3Va35(dataset.get("U3va_35"));
        varxb.setU3Va36(dataset.get("U3va_36"));
        varxb.setU3Va37(dataset.get("U3va_37"));
        varxb.setU3Va38(dataset.get("U3va_38"));
        varxb.setU3Va39(dataset.get("U3va_39"));
        varxb.setU3Va40(dataset.get("U3va_40"));
        varxb.setU3Va41(dataset.get("U3va_41"));
        varxb.setU3Va42(dataset.get("U3va_42"));
        varxb.setU3Va43(dataset.get("U3va_43"));
        varxb.setU3Va44(dataset.get("U3va_44"));
        varxb.setU3Va45(dataset.get("U3va_45"));
        varxb.setU3Va46(dataset.get("U3va_46"));
        varxb.setU3Va47(dataset.get("U3va_47"));
        varxb.setU3Va48(dataset.get("U3va_48"));
        varxb.setU3Va49(dataset.get("U3va_49"));
        varxb.setU3Va50(dataset.get("U3va_50"));
        //I1谐波含有率
        varxb.setI1Va2(dataset.get("I1va_2"));
        varxb.setI1Va3(dataset.get("I1va_3"));
        varxb.setI1Va4(dataset.get("I1va_4"));
        varxb.setI1Va5(dataset.get("I1va_5"));
        varxb.setI1Va6(dataset.get("I1va_6"));
        varxb.setI1Va7(dataset.get("I1va_7"));
        varxb.setI1Va8(dataset.get("I1va_8"));
        varxb.setI1Va9(dataset.get("I1va_9"));
        varxb.setI1Va10(dataset.get("I1va_10"));
        varxb.setI1Va11(dataset.get("I1va_11"));
        varxb.setI1Va12(dataset.get("I1va_12"));
        varxb.setI1Va13(dataset.get("I1va_13"));
        varxb.setI1Va14(dataset.get("I1va_14"));
        varxb.setI1Va15(dataset.get("I1va_15"));
        varxb.setI1Va16(dataset.get("I1va_16"));
        varxb.setI1Va17(dataset.get("I1va_17"));
        varxb.setI1Va18(dataset.get("I1va_18"));
        varxb.setI1Va19(dataset.get("I1va_19"));
        varxb.setI1Va20(dataset.get("I1va_20"));
        varxb.setI1Va21(dataset.get("I1va_21"));
        varxb.setI1Va22(dataset.get("I1va_22"));
        varxb.setI1Va23(dataset.get("I1va_23"));
        varxb.setI1Va24(dataset.get("I1va_24"));
        varxb.setI1Va25(dataset.get("I1va_25"));
        varxb.setI1Va26(dataset.get("I1va_26"));
        varxb.setI1Va27(dataset.get("I1va_27"));
        varxb.setI1Va28(dataset.get("I1va_28"));
        varxb.setI1Va29(dataset.get("I1va_29"));
        varxb.setI1Va30(dataset.get("I1va_30"));
        varxb.setI1Va31(dataset.get("I1va_31"));
        varxb.setI1Va32(dataset.get("I1va_32"));
        varxb.setI1Va33(dataset.get("I1va_33"));
        varxb.setI1Va34(dataset.get("I1va_34"));
        varxb.setI1Va35(dataset.get("I1va_35"));
        varxb.setI1Va36(dataset.get("I1va_36"));
        varxb.setI1Va37(dataset.get("I1va_37"));
        varxb.setI1Va38(dataset.get("I1va_38"));
        varxb.setI1Va39(dataset.get("I1va_39"));
        varxb.setI1Va40(dataset.get("I1va_40"));
        varxb.setI1Va41(dataset.get("I1va_41"));
        varxb.setI1Va42(dataset.get("I1va_42"));
        varxb.setI1Va43(dataset.get("I1va_43"));
        varxb.setI1Va44(dataset.get("I1va_44"));
        varxb.setI1Va45(dataset.get("I1va_45"));
        varxb.setI1Va46(dataset.get("I1va_46"));
        varxb.setI1Va47(dataset.get("I1va_47"));
        varxb.setI1Va48(dataset.get("I1va_48"));
        varxb.setI1Va49(dataset.get("I1va_49"));
        varxb.setI1Va50(dataset.get("I1va_50"));
        //I2谐波含有率
        varxb.setI2Va2(dataset.get("I2va_2"));
        varxb.setI2Va3(dataset.get("I2va_3"));
        varxb.setI2Va4(dataset.get("I2va_4"));
        varxb.setI2Va5(dataset.get("I2va_5"));
        varxb.setI2Va6(dataset.get("I2va_6"));
        varxb.setI2Va7(dataset.get("I2va_7"));
        varxb.setI2Va8(dataset.get("I2va_8"));
        varxb.setI2Va9(dataset.get("I2va_9"));
        varxb.setI2Va10(dataset.get("I2va_10"));
        varxb.setI2Va11(dataset.get("I2va_11"));
        varxb.setI2Va12(dataset.get("I2va_12"));
        varxb.setI2Va13(dataset.get("I2va_13"));
        varxb.setI2Va14(dataset.get("I2va_14"));
        varxb.setI2Va15(dataset.get("I2va_15"));
        varxb.setI2Va16(dataset.get("I2va_16"));
        varxb.setI2Va17(dataset.get("I2va_17"));
        varxb.setI2Va18(dataset.get("I2va_18"));
        varxb.setI2Va19(dataset.get("I2va_19"));
        varxb.setI2Va20(dataset.get("I2va_20"));
        varxb.setI2Va21(dataset.get("I2va_21"));
        varxb.setI2Va22(dataset.get("I2va_22"));
        varxb.setI2Va23(dataset.get("I2va_23"));
        varxb.setI2Va24(dataset.get("I2va_24"));
        varxb.setI2Va25(dataset.get("I2va_25"));
        varxb.setI2Va26(dataset.get("I2va_26"));
        varxb.setI2Va27(dataset.get("I2va_27"));
        varxb.setI2Va28(dataset.get("I2va_28"));
        varxb.setI2Va29(dataset.get("I2va_29"));
        varxb.setI2Va30(dataset.get("I2va_30"));
        varxb.setI2Va31(dataset.get("I2va_31"));
        varxb.setI2Va32(dataset.get("I2va_32"));
        varxb.setI2Va33(dataset.get("I2va_33"));
        varxb.setI2Va34(dataset.get("I2va_34"));
        varxb.setI2Va35(dataset.get("I2va_35"));
        varxb.setI2Va36(dataset.get("I2va_36"));
        varxb.setI2Va37(dataset.get("I2va_37"));
        varxb.setI2Va38(dataset.get("I2va_38"));
        varxb.setI2Va39(dataset.get("I2va_39"));
        varxb.setI2Va40(dataset.get("I2va_40"));
        varxb.setI2Va41(dataset.get("I2va_41"));
        varxb.setI2Va42(dataset.get("I2va_42"));
        varxb.setI2Va43(dataset.get("I2va_43"));
        varxb.setI2Va44(dataset.get("I2va_44"));
        varxb.setI2Va45(dataset.get("I2va_45"));
        varxb.setI2Va46(dataset.get("I2va_46"));
        varxb.setI2Va47(dataset.get("I2va_47"));
        varxb.setI2Va48(dataset.get("I2va_48"));
        varxb.setI2Va49(dataset.get("I2va_49"));
        varxb.setI2Va50(dataset.get("I2va_50"));
        //I3谐波含有率
        varxb.setI3Va2(dataset.get("I3va_2"));
        varxb.setI3Va3(dataset.get("I3va_3"));
        varxb.setI3Va4(dataset.get("I3va_4"));
        varxb.setI3Va5(dataset.get("I3va_5"));
        varxb.setI3Va6(dataset.get("I3va_6"));
        varxb.setI3Va7(dataset.get("I3va_7"));
        varxb.setI3Va8(dataset.get("I3va_8"));
        varxb.setI3Va9(dataset.get("I3va_9"));
        varxb.setI3Va10(dataset.get("I3va_10"));
        varxb.setI3Va11(dataset.get("I3va_11"));
        varxb.setI3Va12(dataset.get("I3va_12"));
        varxb.setI3Va13(dataset.get("I3va_13"));
        varxb.setI3Va14(dataset.get("I3va_14"));
        varxb.setI3Va15(dataset.get("I3va_15"));
        varxb.setI3Va16(dataset.get("I3va_16"));
        varxb.setI3Va17(dataset.get("I3va_17"));
        varxb.setI3Va18(dataset.get("I3va_18"));
        varxb.setI3Va19(dataset.get("I3va_19"));
        varxb.setI3Va20(dataset.get("I3va_20"));
        varxb.setI3Va21(dataset.get("I3va_21"));
        varxb.setI3Va22(dataset.get("I3va_22"));
        varxb.setI3Va23(dataset.get("I3va_23"));
        varxb.setI3Va24(dataset.get("I3va_24"));
        varxb.setI3Va25(dataset.get("I3va_25"));
        varxb.setI3Va26(dataset.get("I3va_26"));
        varxb.setI3Va27(dataset.get("I3va_27"));
        varxb.setI3Va28(dataset.get("I3va_28"));
        varxb.setI3Va29(dataset.get("I3va_29"));
        varxb.setI3Va30(dataset.get("I3va_30"));
        varxb.setI3Va31(dataset.get("I3va_31"));
        varxb.setI3Va32(dataset.get("I3va_32"));
        varxb.setI3Va33(dataset.get("I3va_33"));
        varxb.setI3Va34(dataset.get("I3va_34"));
        varxb.setI3Va35(dataset.get("I3va_35"));
        varxb.setI3Va36(dataset.get("I3va_36"));
        varxb.setI3Va37(dataset.get("I3va_37"));
        varxb.setI3Va38(dataset.get("I3va_38"));
        varxb.setI3Va39(dataset.get("I3va_39"));
        varxb.setI3Va40(dataset.get("I3va_40"));
        varxb.setI3Va41(dataset.get("I3va_41"));
        varxb.setI3Va42(dataset.get("I3va_42"));
        varxb.setI3Va43(dataset.get("I3va_43"));
        varxb.setI3Va44(dataset.get("I3va_44"));
        varxb.setI3Va45(dataset.get("I3va_45"));
        varxb.setI3Va46(dataset.get("I3va_46"));
        varxb.setI3Va47(dataset.get("I3va_47"));
        varxb.setI3Va48(dataset.get("I3va_48"));
        varxb.setI3Va49(dataset.get("I3va_49"));
        varxb.setI3Va50(dataset.get("I3va_50"));


        //当前时间、检测设备id、maxID
        Timestamp currenttime = new Timestamp(System.currentTimeMillis());

        var.setTime(currenttime);
        varxb.setTime(currenttime);
        varsxdy.setTime(currenttime);

        var.setMpid(1);
        varxb.setMpid(1);
        varsxdy.setMpid(1);

        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

        PowerparmMonitor pp = (PowerparmMonitor)hbsessionDao.getFirst(
                "FROM PowerparmMonitor order by ppid desc");

        PowerxbMonitor pxb = (PowerxbMonitor)hbsessionDao.getFirst(
                "FROM PowerxbMonitor order by xbid desc");

        PowersxdyMonitor psxdy = (PowersxdyMonitor)hbsessionDao.getFirst(
                "FROM PowersxdyMonitor order by sxid desc");

        if(psxdy==null)
            varsxdy.setSxid(1);
        else
            varsxdy.setSxid(psxdy.getSxid() + 1);
        if(pp==null)
            var.setPpid(1);
        else
            var.setPpid(pp.getPpid() + 1);
        if(pxb==null)
            varxb.setXbid(1);
        else
            varxb.setXbid(pxb.getXbid() + 1);

        Float defzero = new Float(0);
        var.setU4(defzero);
        var.setI4(defzero);
        var.setCosPhi1(defzero);
        var.setCosPhi2(defzero);
        var.setCosPhi3(defzero);

        varxb.setU1Va1(defzero);
        varxb.setU2Va1(defzero);
        varxb.setU3Va1(defzero);
        varxb.setI1Va1(defzero);
        varxb.setI2Va1(defzero);
        varxb.setI3Va1(defzero);

        varsxdy.setV1(defzero);
        varsxdy.setV2(defzero);
        varsxdy.setV3(defzero);
        varsxdy.setAngleV1(defzero);
        varsxdy.setAngleV2(defzero);
        varsxdy.setAngleV3(defzero);
        varsxdy.setVunb(defzero);

        boolean rt = false;
        rt = hbsessionDao.insert(var);

        boolean xbrt = false;
        xbrt = hbsessionDao.insert(varxb);

        boolean sxdyrt = false;
        sxdyrt = hbsessionDao.insert(varsxdy);

        if(rt)
            System.out.println("存取parm数据成功");
        else  System.out.println("存取parm数据失败");

        if(xbrt)
            System.out.println("存取xb数据成功");
        else  System.out.println("存取xb数据失败");

        if(sxdyrt)
            System.out.println("存取sxdy数据成功");
        else  System.out.println("存取sxdy数据失败");

    }

}
