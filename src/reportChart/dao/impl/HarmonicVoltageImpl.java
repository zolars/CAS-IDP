package reportChart.dao.impl;


import Util.HBSessionDaoImpl;
import hibernatePOJO.DevicesThreshold;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import hibernatePOJO.PowerxbMonitor;
import reportChart.dao.HarmonicVoltage;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

//2019/9/19 cjy change all DB access method in this .java file

public class HarmonicVoltageImpl implements HarmonicVoltage {
    HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();

    char state1 = (char) (96 + 1);
    char state2 = (char) (96 + 2);
    char state3 = (char) (96 + 3);

    List<Double> valuej1i2 = new ArrayList<>();
    List<Double> valuej2i2 = new ArrayList<>();
    List<Double> valuej3i2 = new ArrayList<>();
    List<Double> valuej1i3 = new ArrayList<>();
    List<Double> valuej2i3 = new ArrayList<>();
    List<Double> valuej3i3 = new ArrayList<>();
    List<Double> valuej1i4 = new ArrayList<>();
    List<Double> valuej2i4 = new ArrayList<>();
    List<Double> valuej3i4 = new ArrayList<>();
    List<Double> valuej1i5 = new ArrayList<>();
    List<Double> valuej2i5 = new ArrayList<>();
    List<Double> valuej3i5 = new ArrayList<>();
    List<Double> valuej1i6 = new ArrayList<>();
    List<Double> valuej2i6 = new ArrayList<>();
    List<Double> valuej3i6 = new ArrayList<>();
    List<Double> valuej1i7 = new ArrayList<>();
    List<Double> valuej2i7 = new ArrayList<>();
    List<Double> valuej3i7 = new ArrayList<>();
    List<Double> valuej1i8 = new ArrayList<>();
    List<Double> valuej2i8 = new ArrayList<>();
    List<Double> valuej3i8 = new ArrayList<>();
    List<Double> valuej1i9 = new ArrayList<>();
    List<Double> valuej2i9 = new ArrayList<>();
    List<Double> valuej3i9 = new ArrayList<>();
    List<Double> valuej1i10 = new ArrayList<>();
    List<Double> valuej2i10 = new ArrayList<>();
    List<Double> valuej3i10 = new ArrayList<>();

    List<Double> valuej1i11 = new ArrayList<>();
    List<Double> valuej2i11 = new ArrayList<>();
    List<Double> valuej3i11 = new ArrayList<>();
    List<Double> valuej1i12 = new ArrayList<>();
    List<Double> valuej2i12 = new ArrayList<>();
    List<Double> valuej3i12 = new ArrayList<>();
    List<Double> valuej1i13 = new ArrayList<>();
    List<Double> valuej2i13 = new ArrayList<>();
    List<Double> valuej3i13 = new ArrayList<>();
    List<Double> valuej1i14 = new ArrayList<>();
    List<Double> valuej2i14 = new ArrayList<>();
    List<Double> valuej3i14 = new ArrayList<>();
    List<Double> valuej1i15 = new ArrayList<>();
    List<Double> valuej2i15 = new ArrayList<>();
    List<Double> valuej3i15 = new ArrayList<>();
    List<Double> valuej1i16 = new ArrayList<>();
    List<Double> valuej2i16 = new ArrayList<>();
    List<Double> valuej3i16 = new ArrayList<>();
    List<Double> valuej1i17 = new ArrayList<>();
    List<Double> valuej2i17 = new ArrayList<>();
    List<Double> valuej3i17 = new ArrayList<>();
    List<Double> valuej1i18 = new ArrayList<>();
    List<Double> valuej2i18 = new ArrayList<>();
    List<Double> valuej3i18 = new ArrayList<>();
    List<Double> valuej1i19 = new ArrayList<>();
    List<Double> valuej2i19 = new ArrayList<>();
    List<Double> valuej3i19 = new ArrayList<>();
    List<Double> valuej1i20 = new ArrayList<>();
    List<Double> valuej2i20 = new ArrayList<>();
    List<Double> valuej3i20 = new ArrayList<>();

    List<Double> valuej1i21 = new ArrayList<>();
    List<Double> valuej2i21 = new ArrayList<>();
    List<Double> valuej3i21 = new ArrayList<>();
    List<Double> valuej1i22 = new ArrayList<>();
    List<Double> valuej2i22 = new ArrayList<>();
    List<Double> valuej3i22 = new ArrayList<>();
    List<Double> valuej1i23 = new ArrayList<>();
    List<Double> valuej2i23 = new ArrayList<>();
    List<Double> valuej3i23 = new ArrayList<>();
    List<Double> valuej1i24 = new ArrayList<>();
    List<Double> valuej2i24 = new ArrayList<>();
    List<Double> valuej3i24 = new ArrayList<>();
    List<Double> valuej1i25 = new ArrayList<>();
    List<Double> valuej2i25 = new ArrayList<>();
    List<Double> valuej3i25 = new ArrayList<>();
    List<Double> valuej1i26 = new ArrayList<>();
    List<Double> valuej2i26 = new ArrayList<>();
    List<Double> valuej3i26 = new ArrayList<>();
    List<Double> valuej1i27 = new ArrayList<>();
    List<Double> valuej2i27 = new ArrayList<>();
    List<Double> valuej3i27 = new ArrayList<>();
    List<Double> valuej1i28 = new ArrayList<>();
    List<Double> valuej2i28 = new ArrayList<>();
    List<Double> valuej3i28 = new ArrayList<>();
    List<Double> valuej1i29 = new ArrayList<>();
    List<Double> valuej2i29 = new ArrayList<>();
    List<Double> valuej3i29 = new ArrayList<>();
    List<Double> valuej1i30 = new ArrayList<>();
    List<Double> valuej2i30 = new ArrayList<>();
    List<Double> valuej3i30 = new ArrayList<>();

    List<Double> valuej1i31 = new ArrayList<>();
    List<Double> valuej2i31 = new ArrayList<>();
    List<Double> valuej3i31 = new ArrayList<>();
    List<Double> valuej1i32 = new ArrayList<>();
    List<Double> valuej2i32 = new ArrayList<>();
    List<Double> valuej3i32 = new ArrayList<>();
    List<Double> valuej1i33 = new ArrayList<>();
    List<Double> valuej2i33 = new ArrayList<>();
    List<Double> valuej3i33 = new ArrayList<>();
    List<Double> valuej1i34 = new ArrayList<>();
    List<Double> valuej2i34 = new ArrayList<>();
    List<Double> valuej3i34 = new ArrayList<>();
    List<Double> valuej1i35 = new ArrayList<>();
    List<Double> valuej2i35 = new ArrayList<>();
    List<Double> valuej3i35 = new ArrayList<>();
    List<Double> valuej1i36 = new ArrayList<>();
    List<Double> valuej2i36 = new ArrayList<>();
    List<Double> valuej3i36 = new ArrayList<>();
    List<Double> valuej1i37 = new ArrayList<>();
    List<Double> valuej2i37 = new ArrayList<>();
    List<Double> valuej3i37 = new ArrayList<>();
    List<Double> valuej1i38 = new ArrayList<>();
    List<Double> valuej2i38 = new ArrayList<>();
    List<Double> valuej3i38 = new ArrayList<>();
    List<Double> valuej1i39 = new ArrayList<>();
    List<Double> valuej2i39 = new ArrayList<>();
    List<Double> valuej3i39 = new ArrayList<>();
    List<Double> valuej1i40 = new ArrayList<>();
    List<Double> valuej2i40 = new ArrayList<>();
    List<Double> valuej3i40 = new ArrayList<>();

    List<Double> valuej1i41 = new ArrayList<>();
    List<Double> valuej2i41 = new ArrayList<>();
    List<Double> valuej3i41 = new ArrayList<>();
    List<Double> valuej1i42 = new ArrayList<>();
    List<Double> valuej2i42 = new ArrayList<>();
    List<Double> valuej3i42 = new ArrayList<>();
    List<Double> valuej1i43 = new ArrayList<>();
    List<Double> valuej2i43 = new ArrayList<>();
    List<Double> valuej3i43 = new ArrayList<>();
    List<Double> valuej1i44 = new ArrayList<>();
    List<Double> valuej2i44 = new ArrayList<>();
    List<Double> valuej3i44 = new ArrayList<>();
    List<Double> valuej1i45 = new ArrayList<>();
    List<Double> valuej2i45 = new ArrayList<>();
    List<Double> valuej3i45 = new ArrayList<>();
    List<Double> valuej1i46 = new ArrayList<>();
    List<Double> valuej2i46 = new ArrayList<>();
    List<Double> valuej3i46 = new ArrayList<>();
    List<Double> valuej1i47 = new ArrayList<>();
    List<Double> valuej2i47 = new ArrayList<>();
    List<Double> valuej3i47 = new ArrayList<>();
    List<Double> valuej1i48 = new ArrayList<>();
    List<Double> valuej2i48 = new ArrayList<>();
    List<Double> valuej3i48 = new ArrayList<>();
    List<Double> valuej1i49 = new ArrayList<>();
    List<Double> valuej2i49 = new ArrayList<>();
    List<Double> valuej3i49 = new ArrayList<>();
    List<Double> valuej1i50 = new ArrayList<>();
    List<Double> valuej2i50 = new ArrayList<>();
    List<Double> valuej3i50 = new ArrayList<>();

    public List getHVresultBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";
         
        try {
            String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";

            List<PowerxbMonitor> pblist = hbsessionDao.search(sql);

            if(pblist != null) {
                for (int pbidx = 0; pbidx < pblist.size(); pbidx++) {
                    PowerxbMonitor obj = pblist.get(pbidx);

                    double dvaluej1i2 = obj.getU1Xb2();
                    double dvaluej2i2 = obj.getU2Xb2();
                    double dvaluej3i2 = obj.getU3Xb2();
                    double dvaluej1i3 = obj.getU1Xb3();
                    double dvaluej2i3 = obj.getU2Xb3();
                    double dvaluej3i3 = obj.getU3Xb3();
                    double dvaluej1i4 = obj.getU1Xb4();
                    double dvaluej2i4 = obj.getU2Xb4();
                    double dvaluej3i4 = obj.getU3Xb4();
                    double dvaluej1i5 = obj.getU1Xb5();
                    double dvaluej2i5 = obj.getU2Xb5();
                    double dvaluej3i5 = obj.getU3Xb5();
                    double dvaluej1i6 = obj.getU1Xb6();
                    double dvaluej2i6 = obj.getU2Xb6();
                    double dvaluej3i6 = obj.getU3Xb6();
                    double dvaluej1i7 = obj.getU1Xb7();
                    double dvaluej2i7 = obj.getU2Xb7();
                    double dvaluej3i7 = obj.getU3Xb7();
                    double dvaluej1i8 = obj.getU1Xb8();
                    double dvaluej2i8 = obj.getU2Xb8();
                    double dvaluej3i8 = obj.getU3Xb8();
                    double dvaluej1i9 = obj.getU1Xb9();
                    double dvaluej2i9 = obj.getU2Xb9();
                    double dvaluej3i9 = obj.getU3Xb9();
                    double dvaluej1i10 = obj.getU1Xb10();
                    double dvaluej2i10 = obj.getU2Xb10();
                    double dvaluej3i10 = obj.getU3Xb10();
                    double dvaluej1i11 = obj.getU1Xb11();
                    double dvaluej2i11 = obj.getU2Xb11();
                    double dvaluej3i11 = obj.getU3Xb11();
                    double dvaluej1i12 = obj.getU1Xb12();
                    double dvaluej2i12 = obj.getU2Xb12();
                    double dvaluej3i12 = obj.getU3Xb12();
                    double dvaluej1i13 = obj.getU1Xb13();
                    double dvaluej2i13 = obj.getU2Xb13();
                    double dvaluej3i13 = obj.getU3Xb13();
                    double dvaluej1i14 = obj.getU1Xb14();
                    double dvaluej2i14 = obj.getU2Xb14();
                    double dvaluej3i14 = obj.getU3Xb14();
                    double dvaluej1i15 = obj.getU1Xb15();
                    double dvaluej2i15 = obj.getU2Xb15();
                    double dvaluej3i15 = obj.getU3Xb15();
                    double dvaluej1i16 = obj.getU1Xb16();
                    double dvaluej2i16 = obj.getU2Xb16();
                    double dvaluej3i16 = obj.getU3Xb16();
                    double dvaluej1i17 = obj.getU1Xb17();
                    double dvaluej2i17 = obj.getU2Xb17();
                    double dvaluej3i17 = obj.getU3Xb17();
                    double dvaluej1i18 = obj.getU1Xb18();
                    double dvaluej2i18 = obj.getU2Xb18();
                    double dvaluej3i18 = obj.getU3Xb18();
                    double dvaluej1i19 = obj.getU1Xb19();
                    double dvaluej2i19 = obj.getU2Xb19();
                    double dvaluej3i19 = obj.getU3Xb19();
                    double dvaluej1i20 = obj.getU1Xb20();
                    double dvaluej2i20 = obj.getU2Xb20();
                    double dvaluej3i20 = obj.getU3Xb20();

                    double dvaluej1i21 = obj.getU1Xb21();
                    double dvaluej2i21 = obj.getU2Xb21();
                    double dvaluej3i21 = obj.getU3Xb21();
                    double dvaluej1i22 = obj.getU1Xb22();
                    double dvaluej2i22 = obj.getU2Xb22();
                    double dvaluej3i22 = obj.getU3Xb22();
                    double dvaluej1i23 = obj.getU1Xb23();
                    double dvaluej2i23 = obj.getU2Xb23();
                    double dvaluej3i23 = obj.getU3Xb23();
                    double dvaluej1i24 = obj.getU1Xb24();
                    double dvaluej2i24 = obj.getU2Xb24();
                    double dvaluej3i24 = obj.getU3Xb24();
                    double dvaluej1i25 = obj.getU1Xb25();
                    double dvaluej2i25 = obj.getU2Xb25();
                    double dvaluej3i25 = obj.getU3Xb25();
                    double dvaluej1i26 = obj.getU1Xb26();
                    double dvaluej2i26 = obj.getU2Xb26();
                    double dvaluej3i26 = obj.getU3Xb26();
                    double dvaluej1i27 = obj.getU1Xb27();
                    double dvaluej2i27 = obj.getU2Xb27();
                    double dvaluej3i27 = obj.getU3Xb27();
                    double dvaluej1i28 = obj.getU1Xb28();
                    double dvaluej2i28 = obj.getU2Xb28();
                    double dvaluej3i28 = obj.getU3Xb28();
                    double dvaluej1i29 = obj.getU1Xb29();
                    double dvaluej2i29 = obj.getU2Xb29();
                    double dvaluej3i29 = obj.getU3Xb29();
                    double dvaluej1i30 = obj.getU1Xb30();
                    double dvaluej2i30 = obj.getU2Xb30();
                    double dvaluej3i30 = obj.getU3Xb30();

                    double dvaluej1i31 = obj.getU1Xb31();
                    double dvaluej2i31 = obj.getU2Xb31();
                    double dvaluej3i31 = obj.getU3Xb31();
                    double dvaluej1i32 = obj.getU1Xb32();
                    double dvaluej2i32 = obj.getU2Xb32();
                    double dvaluej3i32 = obj.getU3Xb32();
                    double dvaluej1i33 = obj.getU1Xb33();
                    double dvaluej2i33 = obj.getU2Xb33();
                    double dvaluej3i33 = obj.getU3Xb33();
                    double dvaluej1i34 = obj.getU1Xb34();
                    double dvaluej2i34 = obj.getU2Xb34();
                    double dvaluej3i34 = obj.getU3Xb34();
                    double dvaluej1i35 = obj.getU1Xb35();
                    double dvaluej2i35 = obj.getU2Xb35();
                    double dvaluej3i35 = obj.getU3Xb35();
                    double dvaluej1i36 = obj.getU1Xb36();
                    double dvaluej2i36 = obj.getU2Xb36();
                    double dvaluej3i36 = obj.getU3Xb36();
                    double dvaluej1i37 = obj.getU1Xb37();
                    double dvaluej2i37 = obj.getU2Xb37();
                    double dvaluej3i37 = obj.getU3Xb37();
                    double dvaluej1i38 = obj.getU1Xb38();
                    double dvaluej2i38 = obj.getU2Xb38();
                    double dvaluej3i38 = obj.getU3Xb38();
                    double dvaluej1i39 = obj.getU1Xb39();
                    double dvaluej2i39 = obj.getU2Xb39();
                    double dvaluej3i39 = obj.getU3Xb39();
                    double dvaluej1i40 = obj.getU1Xb40();
                    double dvaluej2i40 = obj.getU2Xb40();
                    double dvaluej3i40 = obj.getU3Xb40();

                    double dvaluej1i41 = obj.getU1Xb41();
                    double dvaluej2i41 = obj.getU2Xb41();
                    double dvaluej3i41 = obj.getU3Xb41();
                    double dvaluej1i42 = obj.getU1Xb42();
                    double dvaluej2i42 = obj.getU2Xb42();
                    double dvaluej3i42 = obj.getU3Xb42();
                    double dvaluej1i43 = obj.getU1Xb43();
                    double dvaluej2i43 = obj.getU2Xb43();
                    double dvaluej3i43 = obj.getU3Xb43();
                    double dvaluej1i44 = obj.getU1Xb44();
                    double dvaluej2i44 = obj.getU2Xb44();
                    double dvaluej3i44 = obj.getU3Xb44();
                    double dvaluej1i45 = obj.getU1Xb45();
                    double dvaluej2i45 = obj.getU2Xb45();
                    double dvaluej3i45 = obj.getU3Xb45();
                    double dvaluej1i46 = obj.getU1Xb46();
                    double dvaluej2i46 = obj.getU2Xb46();
                    double dvaluej3i46 = obj.getU3Xb46();
                    double dvaluej1i47 = obj.getU1Xb47();
                    double dvaluej2i47 = obj.getU2Xb47();
                    double dvaluej3i47 = obj.getU3Xb47();
                    double dvaluej1i48 = obj.getU1Xb48();
                    double dvaluej2i48 = obj.getU2Xb48();
                    double dvaluej3i48 = obj.getU3Xb48();
                    double dvaluej1i49 = obj.getU1Xb49();
                    double dvaluej2i49 = obj.getU2Xb49();
                    double dvaluej3i49 = obj.getU3Xb49();
                    double dvaluej1i50 = obj.getU1Xb50();
                    double dvaluej2i50 = obj.getU2Xb50();
                    double dvaluej3i50 = obj.getU3Xb50();

                    valuej1i2.add(dvaluej1i2);
                    valuej2i2.add(dvaluej2i2);
                    valuej3i2.add(dvaluej3i2);
                    valuej1i3.add(dvaluej1i3);
                    valuej2i3.add(dvaluej2i3);
                    valuej3i3.add(dvaluej3i3);
                    valuej1i4.add(dvaluej1i4);
                    valuej2i4.add(dvaluej2i4);
                    valuej3i4.add(dvaluej3i4);
                    valuej1i5.add(dvaluej1i5);
                    valuej2i5.add(dvaluej2i5);
                    valuej3i5.add(dvaluej3i5);
                    valuej1i6.add(dvaluej1i6);
                    valuej2i6.add(dvaluej2i6);
                    valuej3i6.add(dvaluej3i6);
                    valuej1i7.add(dvaluej1i7);
                    valuej2i7.add(dvaluej2i7);
                    valuej3i7.add(dvaluej3i7);
                    valuej1i8.add(dvaluej1i8);
                    valuej2i8.add(dvaluej2i8);
                    valuej3i8.add(dvaluej3i8);
                    valuej1i9.add(dvaluej1i9);
                    valuej2i9.add(dvaluej2i9);
                    valuej3i9.add(dvaluej3i9);
                    valuej1i10.add(dvaluej1i10);
                    valuej2i10.add(dvaluej2i10);
                    valuej3i10.add(dvaluej3i10);

                    valuej1i11.add(dvaluej1i11);
                    valuej2i11.add(dvaluej2i11);
                    valuej3i11.add(dvaluej3i11);
                    valuej1i12.add(dvaluej1i12);
                    valuej2i12.add(dvaluej2i12);
                    valuej3i12.add(dvaluej3i12);
                    valuej1i13.add(dvaluej1i13);
                    valuej2i13.add(dvaluej2i13);
                    valuej3i13.add(dvaluej3i13);
                    valuej1i14.add(dvaluej1i14);
                    valuej2i14.add(dvaluej2i14);
                    valuej3i14.add(dvaluej3i14);
                    valuej1i15.add(dvaluej1i15);
                    valuej2i15.add(dvaluej2i15);
                    valuej3i15.add(dvaluej3i15);
                    valuej1i16.add(dvaluej1i16);
                    valuej2i16.add(dvaluej2i16);
                    valuej3i16.add(dvaluej3i16);
                    valuej1i17.add(dvaluej1i17);
                    valuej2i17.add(dvaluej2i17);
                    valuej3i17.add(dvaluej3i17);
                    valuej1i18.add(dvaluej1i18);
                    valuej2i18.add(dvaluej2i18);
                    valuej3i18.add(dvaluej3i18);
                    valuej1i19.add(dvaluej1i19);
                    valuej2i19.add(dvaluej2i19);
                    valuej3i19.add(dvaluej3i19);
                    valuej1i20.add(dvaluej1i20);
                    valuej2i20.add(dvaluej2i20);
                    valuej3i20.add(dvaluej3i20);

                    valuej1i21.add(dvaluej1i21);
                    valuej2i21.add(dvaluej2i21);
                    valuej3i21.add(dvaluej3i21);
                    valuej1i22.add(dvaluej1i22);
                    valuej2i22.add(dvaluej2i22);
                    valuej3i22.add(dvaluej3i22);
                    valuej1i23.add(dvaluej1i23);
                    valuej2i23.add(dvaluej2i23);
                    valuej3i23.add(dvaluej3i23);
                    valuej1i24.add(dvaluej1i24);
                    valuej2i24.add(dvaluej2i24);
                    valuej3i24.add(dvaluej3i24);
                    valuej1i25.add(dvaluej1i25);
                    valuej2i25.add(dvaluej2i25);
                    valuej3i25.add(dvaluej3i25);
                    valuej1i26.add(dvaluej1i26);
                    valuej2i26.add(dvaluej2i26);
                    valuej3i26.add(dvaluej3i26);
                    valuej1i27.add(dvaluej1i27);
                    valuej2i27.add(dvaluej2i27);
                    valuej3i27.add(dvaluej3i27);
                    valuej1i28.add(dvaluej1i28);
                    valuej2i28.add(dvaluej2i28);
                    valuej3i28.add(dvaluej3i28);
                    valuej1i29.add(dvaluej1i29);
                    valuej2i29.add(dvaluej2i29);
                    valuej3i29.add(dvaluej3i29);
                    valuej1i30.add(dvaluej1i30);
                    valuej2i30.add(dvaluej2i30);
                    valuej3i30.add(dvaluej3i30);

                    valuej1i31.add(dvaluej1i31);
                    valuej2i31.add(dvaluej2i31);
                    valuej3i31.add(dvaluej3i31);
                    valuej1i32.add(dvaluej1i32);
                    valuej2i32.add(dvaluej2i32);
                    valuej3i32.add(dvaluej3i32);
                    valuej1i33.add(dvaluej1i33);
                    valuej2i33.add(dvaluej2i33);
                    valuej3i33.add(dvaluej3i33);
                    valuej1i34.add(dvaluej1i34);
                    valuej2i34.add(dvaluej2i34);
                    valuej3i34.add(dvaluej3i34);
                    valuej1i35.add(dvaluej1i35);
                    valuej2i35.add(dvaluej2i35);
                    valuej3i35.add(dvaluej3i35);
                    valuej1i36.add(dvaluej1i36);
                    valuej2i36.add(dvaluej2i36);
                    valuej3i36.add(dvaluej3i36);
                    valuej1i37.add(dvaluej1i37);
                    valuej2i37.add(dvaluej2i37);
                    valuej3i37.add(dvaluej3i37);
                    valuej1i38.add(dvaluej1i38);
                    valuej2i38.add(dvaluej2i38);
                    valuej3i38.add(dvaluej3i38);
                    valuej1i39.add(dvaluej1i39);
                    valuej2i39.add(dvaluej2i39);
                    valuej3i39.add(dvaluej3i39);
                    valuej1i40.add(dvaluej1i40);
                    valuej2i40.add(dvaluej2i40);
                    valuej3i40.add(dvaluej3i40);

                    valuej1i41.add(dvaluej1i41);
                    valuej2i41.add(dvaluej2i41);
                    valuej3i41.add(dvaluej3i41);
                    valuej1i42.add(dvaluej1i42);
                    valuej2i42.add(dvaluej2i42);
                    valuej3i42.add(dvaluej3i42);
                    valuej1i43.add(dvaluej1i43);
                    valuej2i43.add(dvaluej2i43);
                    valuej3i43.add(dvaluej3i43);
                    valuej1i44.add(dvaluej1i44);
                    valuej2i44.add(dvaluej2i44);
                    valuej3i44.add(dvaluej3i44);
                    valuej1i45.add(dvaluej1i45);
                    valuej2i45.add(dvaluej2i45);
                    valuej3i45.add(dvaluej3i45);
                    valuej1i46.add(dvaluej1i46);
                    valuej2i46.add(dvaluej2i46);
                    valuej3i46.add(dvaluej3i46);
                    valuej1i47.add(dvaluej1i47);
                    valuej2i47.add(dvaluej2i47);
                    valuej3i47.add(dvaluej3i47);
                    valuej1i48.add(dvaluej1i48);
                    valuej2i48.add(dvaluej2i48);
                    valuej3i48.add(dvaluej3i48);
                    valuej1i49.add(dvaluej1i49);
                    valuej2i49.add(dvaluej2i49);
                    valuej3i49.add(dvaluej3i49);
                    valuej1i50.add(dvaluej1i50);
                    valuej2i50.add(dvaluej2i50);
                    valuej3i50.add(dvaluej3i50);

                }
            }

            String nullstra = "," + state1 + "," + null + "," + null + "," + null + "," + null;
            String nullstrb = "," + state2 + "," + null + "," + null + "," + null + "," + null;
            String nullstrc = "," + state3 + "," + null + "," + null + "," + null + "," + null;

            if (valuej1i2.size() == 0) { result.add((3) + nullstra); }
            if (valuej2i2.size() == 0) { result.add((3) + nullstrb); }
            if (valuej3i2.size() == 0) { result.add((3) + nullstrc); }
            if (valuej1i3.size() == 0) { result.add((4) + nullstra); }
            if (valuej2i3.size() == 0) { result.add((4) + nullstrb); }
            if (valuej3i3.size() == 0) { result.add((4) + nullstrc); }
            if (valuej1i4.size() == 0) { result.add((5) + nullstra); }
            if (valuej2i4.size() == 0) { result.add((5) + nullstrb); }
            if (valuej3i4.size() == 0) { result.add((5) + nullstrc); }
            if (valuej1i5.size() == 0) { result.add((6) + nullstra); }
            if (valuej2i5.size() == 0) { result.add((6) + nullstrb); }
            if (valuej3i5.size() == 0) { result.add((6) + nullstrc); }
            if (valuej1i6.size() == 0) { result.add((7) + nullstra); }
            if (valuej2i6.size() == 0) { result.add((7) + nullstrb); }
            if (valuej3i6.size() == 0) { result.add((7) + nullstrc); }
            if (valuej1i7.size() == 0) { result.add((8) + nullstra); }
            if (valuej2i7.size() == 0) { result.add((8) + nullstrb); }
            if (valuej3i7.size() == 0) { result.add((8) + nullstrc); }
            if (valuej1i8.size() == 0) { result.add((9) + nullstra); }
            if (valuej2i8.size() == 0) { result.add((9) + nullstrb); }
            if (valuej3i8.size() == 0) { result.add((9) + nullstrc); }
            if (valuej1i9.size() == 0) { result.add((10) + nullstra); }
            if (valuej2i9.size() == 0) { result.add((10) + nullstrb); }
            if (valuej3i9.size() == 0) { result.add((10) + nullstrc); }
            if (valuej1i10.size() == 0) { result.add((11) + nullstra); }
            if (valuej2i10.size() == 0) { result.add((11) + nullstrb); }
            if (valuej3i10.size() == 0) { result.add((11) + nullstrc); }
            if (valuej1i11.size() == 0) { result.add((12) + nullstra); }
            if (valuej2i11.size() == 0) { result.add((12) + nullstrb); }
            if (valuej3i11.size() == 0) { result.add((12) + nullstrc); }
            if (valuej1i12.size() == 0) { result.add((13) + nullstra); }
            if (valuej2i12.size() == 0) { result.add((13) + nullstrb); }
            if (valuej3i12.size() == 0) { result.add((13) + nullstrc); }
            if (valuej1i13.size() == 0) { result.add((14) + nullstra); }
            if (valuej2i13.size() == 0) { result.add((14) + nullstrb); }
            if (valuej3i13.size() == 0) { result.add((14) + nullstrc); }
            if (valuej1i14.size() == 0) { result.add((15) + nullstra); }
            if (valuej2i14.size() == 0) { result.add((15) + nullstrb); }
            if (valuej3i14.size() == 0) { result.add((15) + nullstrc); }
            if (valuej1i15.size() == 0) { result.add((16) + nullstra); }
            if (valuej2i15.size() == 0) { result.add((16) + nullstrb); }
            if (valuej3i15.size() == 0) { result.add((16) + nullstrc); }
            if (valuej1i16.size() == 0) { result.add((17) + nullstra); }
            if (valuej2i16.size() == 0) { result.add((17) + nullstrb); }
            if (valuej3i16.size() == 0) { result.add((17) + nullstrc); }
            if (valuej1i17.size() == 0) { result.add((18) + nullstra); }
            if (valuej2i17.size() == 0) { result.add((18) + nullstrb); }
            if (valuej3i17.size() == 0) { result.add((18) + nullstrc); }
            if (valuej1i18.size() == 0) { result.add((19) + nullstra); }
            if (valuej2i18.size() == 0) { result.add((19) + nullstrb); }
            if (valuej3i18.size() == 0) { result.add((19) + nullstrc); }
            if (valuej1i19.size() == 0) { result.add((20) + nullstra); }
            if (valuej2i19.size() == 0) { result.add((20) + nullstrb); }
            if (valuej3i19.size() == 0) { result.add((20) + nullstrc); }
            if (valuej1i20.size() == 0) { result.add((21) + nullstra); }
            if (valuej2i20.size() == 0) { result.add((21) + nullstrb); }
            if (valuej3i20.size() == 0) { result.add((21) + nullstrc); }
            if (valuej1i21.size() == 0) { result.add((22) + nullstra); }
            if (valuej2i21.size() == 0) { result.add((22) + nullstrb); }
            if (valuej3i21.size() == 0) { result.add((22) + nullstrc); }
            if (valuej1i22.size() == 0) { result.add((23) + nullstra); }
            if (valuej2i22.size() == 0) { result.add((23) + nullstrb); }
            if (valuej3i22.size() == 0) { result.add((23) + nullstrc); }
            if (valuej1i23.size() == 0) { result.add((24) + nullstra); }
            if (valuej2i23.size() == 0) { result.add((24) + nullstrb); }
            if (valuej3i23.size() == 0) { result.add((24) + nullstrc); }
            if (valuej1i24.size() == 0) { result.add((25) + nullstra); }
            if (valuej2i24.size() == 0) { result.add((25) + nullstrb); }
            if (valuej3i24.size() == 0) { result.add((25) + nullstrc); }
            if (valuej1i25.size() == 0) { result.add((26) + nullstra); }
            if (valuej2i25.size() == 0) { result.add((26) + nullstrb); }
            if (valuej3i25.size() == 0) { result.add((26) + nullstrc); }
            if (valuej1i26.size() == 0) { result.add((27) + nullstra); }
            if (valuej2i26.size() == 0) { result.add((27) + nullstrb); }
            if (valuej3i26.size() == 0) { result.add((27) + nullstrc); }
            if (valuej1i27.size() == 0) { result.add((28) + nullstra); }
            if (valuej2i27.size() == 0) { result.add((28) + nullstrb); }
            if (valuej3i27.size() == 0) { result.add((28) + nullstrc); }
            if (valuej1i28.size() == 0) { result.add((29) + nullstra); }
            if (valuej2i28.size() == 0) { result.add((29) + nullstrb); }
            if (valuej3i28.size() == 0) { result.add((29) + nullstrc); }
            if (valuej1i29.size() == 0) { result.add((30) + nullstra); }
            if (valuej2i29.size() == 0) { result.add((30) + nullstrb); }
            if (valuej3i29.size() == 0) { result.add((30) + nullstrc); }
            if (valuej1i30.size() == 0) { result.add((31) + nullstra); }
            if (valuej2i30.size() == 0) { result.add((31) + nullstrb); }
            if (valuej3i30.size() == 0) { result.add((31) + nullstrc); }
            if (valuej1i31.size() == 0) { result.add((32) + nullstra); }
            if (valuej2i31.size() == 0) { result.add((32) + nullstrb); }
            if (valuej3i31.size() == 0) { result.add((32) + nullstrc); }
            if (valuej1i32.size() == 0) { result.add((33) + nullstra); }
            if (valuej2i32.size() == 0) { result.add((33) + nullstrb); }
            if (valuej3i32.size() == 0) { result.add((33) + nullstrc); }
            if (valuej1i33.size() == 0) { result.add((34) + nullstra); }
            if (valuej2i33.size() == 0) { result.add((34) + nullstrb); }
            if (valuej3i33.size() == 0) { result.add((34) + nullstrc); }
            if (valuej1i34.size() == 0) { result.add((35) + nullstra); }
            if (valuej2i34.size() == 0) { result.add((35) + nullstrb); }
            if (valuej3i34.size() == 0) { result.add((35) + nullstrc); }
            if (valuej1i35.size() == 0) { result.add((36) + nullstra); }
            if (valuej2i35.size() == 0) { result.add((36) + nullstrb); }
            if (valuej3i35.size() == 0) { result.add((36) + nullstrc); }
            if (valuej1i36.size() == 0) { result.add((37) + nullstra); }
            if (valuej2i36.size() == 0) { result.add((37) + nullstrb); }
            if (valuej3i36.size() == 0) { result.add((37) + nullstrc); }
            if (valuej1i37.size() == 0) { result.add((38) + nullstra); }
            if (valuej2i37.size() == 0) { result.add((38) + nullstrb); }
            if (valuej3i37.size() == 0) { result.add((38) + nullstrc); }
            if (valuej1i38.size() == 0) { result.add((39) + nullstra); }
            if (valuej2i38.size() == 0) { result.add((39) + nullstrb); }
            if (valuej3i38.size() == 0) { result.add((39) + nullstrc); }
            if (valuej1i39.size() == 0) { result.add((40) + nullstra); }
            if (valuej2i39.size() == 0) { result.add((40) + nullstrb); }
            if (valuej3i39.size() == 0) { result.add((40) + nullstrc); }
            if (valuej1i40.size() == 0) { result.add((41) + nullstra); }
            if (valuej2i40.size() == 0) { result.add((41) + nullstrb); }
            if (valuej3i40.size() == 0) { result.add((41) + nullstrc); }
            if (valuej1i41.size() == 0) { result.add((42) + nullstra); }
            if (valuej2i41.size() == 0) { result.add((42) + nullstrb); }
            if (valuej3i41.size() == 0) { result.add((42) + nullstrc); }
            if (valuej1i42.size() == 0) { result.add((43) + nullstra); }
            if (valuej2i42.size() == 0) { result.add((43) + nullstrb); }
            if (valuej3i42.size() == 0) { result.add((43) + nullstrc); }
            if (valuej1i43.size() == 0) { result.add((44) + nullstra); }
            if (valuej2i43.size() == 0) { result.add((44) + nullstrb); }
            if (valuej3i43.size() == 0) { result.add((44) + nullstrc); }
            if (valuej1i44.size() == 0) { result.add((45) + nullstra); }
            if (valuej2i44.size() == 0) { result.add((45) + nullstrb); }
            if (valuej3i44.size() == 0) { result.add((45) + nullstrc); }
            if (valuej1i45.size() == 0) { result.add((46) + nullstra); }
            if (valuej2i45.size() == 0) { result.add((46) + nullstrb); }
            if (valuej3i45.size() == 0) { result.add((46) + nullstrc); }
            if (valuej1i46.size() == 0) { result.add((47) + nullstra); }
            if (valuej2i46.size() == 0) { result.add((47) + nullstrb); }
            if (valuej3i46.size() == 0) { result.add((47) + nullstrc); }
            if (valuej1i47.size() == 0) { result.add((48) + nullstra); }
            if (valuej2i47.size() == 0) { result.add((48) + nullstrb); }
            if (valuej3i47.size() == 0) { result.add((48) + nullstrc); }
            if (valuej1i48.size() == 0) { result.add((49) + nullstra); }
            if (valuej2i48.size() == 0) { result.add((49) + nullstrb); }
            if (valuej3i48.size() == 0) { result.add((49) + nullstrc); }
            if (valuej1i49.size() == 0) { result.add((50) + nullstra); }
            if (valuej2i49.size() == 0) { result.add((50) + nullstrb); }
            if (valuej3i49.size() == 0) { result.add((50) + nullstrc); }
            if (valuej1i50.size() == 0) { result.add((51) + nullstra); }
            if (valuej2i50.size() == 0) { result.add((51) + nullstrb); }
            if (valuej3i50.size() == 0) { result.add((51) + nullstrc); }

            if (valuej1i2.size() > 0) { result.add((3) + "," + state1 + "," + getMax(valuej1i2) + "," + getMin(valuej1i2) + "," + getAve(valuej1i2) + "," + get95p(valuej1i2)); }
            if (valuej2i2.size() > 0) { result.add((3) + "," + state2 + "," + getMax(valuej2i2) + "," + getMin(valuej2i2) + "," + getAve(valuej2i2) + "," + get95p(valuej2i2)); }
            if (valuej3i2.size() > 0) { result.add((3) + "," + state3 + "," + getMax(valuej3i2) + "," + getMin(valuej3i2) + "," + getAve(valuej3i2) + "," + get95p(valuej3i2)); }
            if (valuej1i3.size() > 0) { result.add((4) + "," + state1 + "," + getMax(valuej1i3) + "," + getMin(valuej1i3) + "," + getAve(valuej1i3) + "," + get95p(valuej1i3)); }
            if (valuej2i3.size() > 0) { result.add((4) + "," + state2 + "," + getMax(valuej2i3) + "," + getMin(valuej2i3) + "," + getAve(valuej2i3) + "," + get95p(valuej2i3)); }
            if (valuej3i3.size() > 0) { result.add((4) + "," + state3 + "," + getMax(valuej3i3) + "," + getMin(valuej3i3) + "," + getAve(valuej3i3) + "," + get95p(valuej3i3)); }
            if (valuej1i4.size() > 0) { result.add((5) + "," + state1 + "," + getMax(valuej1i4) + "," + getMin(valuej1i4) + "," + getAve(valuej1i4) + "," + get95p(valuej1i4)); }
            if (valuej2i4.size() > 0) { result.add((5) + "," + state2 + "," + getMax(valuej2i4) + "," + getMin(valuej2i4) + "," + getAve(valuej2i4) + "," + get95p(valuej2i4)); }
            if (valuej3i4.size() > 0) { result.add((5) + "," + state3 + "," + getMax(valuej3i4) + "," + getMin(valuej3i4) + "," + getAve(valuej3i4) + "," + get95p(valuej3i4)); }
            if (valuej1i5.size() > 0) { result.add((6) + "," + state1 + "," + getMax(valuej1i5) + "," + getMin(valuej1i5) + "," + getAve(valuej1i5) + "," + get95p(valuej1i5)); }
            if (valuej2i5.size() > 0) { result.add((6) + "," + state2 + "," + getMax(valuej2i5) + "," + getMin(valuej2i5) + "," + getAve(valuej2i5) + "," + get95p(valuej2i5)); }
            if (valuej3i5.size() > 0) { result.add((6) + "," + state3 + "," + getMax(valuej3i5) + "," + getMin(valuej3i5) + "," + getAve(valuej3i5) + "," + get95p(valuej3i5)); }
            if (valuej1i6.size() > 0) { result.add((7) + "," + state1 + "," + getMax(valuej1i6) + "," + getMin(valuej1i6) + "," + getAve(valuej1i6) + "," + get95p(valuej1i6)); }
            if (valuej2i6.size() > 0) { result.add((7) + "," + state2 + "," + getMax(valuej2i6) + "," + getMin(valuej2i6) + "," + getAve(valuej2i6) + "," + get95p(valuej2i6)); }
            if (valuej3i6.size() > 0) { result.add((7) + "," + state3 + "," + getMax(valuej3i6) + "," + getMin(valuej3i6) + "," + getAve(valuej3i6) + "," + get95p(valuej3i6)); }
            if (valuej1i7.size() > 0) { result.add((8) + "," + state1 + "," + getMax(valuej1i7) + "," + getMin(valuej1i7) + "," + getAve(valuej1i7) + "," + get95p(valuej1i7)); }
            if (valuej2i7.size() > 0) { result.add((8) + "," + state2 + "," + getMax(valuej2i7) + "," + getMin(valuej2i7) + "," + getAve(valuej2i7) + "," + get95p(valuej2i7)); }
            if (valuej3i7.size() > 0) { result.add((8) + "," + state3 + "," + getMax(valuej3i7) + "," + getMin(valuej3i7) + "," + getAve(valuej3i7) + "," + get95p(valuej3i7)); }
            if (valuej1i8.size() > 0) { result.add((9) + "," + state1 + "," + getMax(valuej1i8) + "," + getMin(valuej1i8) + "," + getAve(valuej1i8) + "," + get95p(valuej1i8)); }
            if (valuej2i8.size() > 0) { result.add((9) + "," + state2 + "," + getMax(valuej2i8) + "," + getMin(valuej2i8) + "," + getAve(valuej2i8) + "," + get95p(valuej2i8)); }
            if (valuej3i8.size() > 0) { result.add((9) + "," + state3 + "," + getMax(valuej3i8) + "," + getMin(valuej3i8) + "," + getAve(valuej3i8) + "," + get95p(valuej3i8)); }
            if (valuej1i9.size() > 0) { result.add((10) + "," + state1 + "," + getMax(valuej1i9) + "," + getMin(valuej1i9) + "," + getAve(valuej1i9) + "," + get95p(valuej1i9)); }
            if (valuej2i9.size() > 0) { result.add((10) + "," + state2 + "," + getMax(valuej2i9) + "," + getMin(valuej2i9) + "," + getAve(valuej2i9) + "," + get95p(valuej2i9)); }
            if (valuej3i9.size() > 0) { result.add((10) + "," + state3 + "," + getMax(valuej3i9) + "," + getMin(valuej3i9) + "," + getAve(valuej3i9) + "," + get95p(valuej3i9)); }
            if (valuej1i10.size() > 0) { result.add((11) + "," + state1 + "," + getMax(valuej1i10) + "," + getMin(valuej1i10) + "," + getAve(valuej1i10) + "," + get95p(valuej1i10)); }
            if (valuej2i10.size() > 0) { result.add((11) + "," + state2 + "," + getMax(valuej2i10) + "," + getMin(valuej2i10) + "," + getAve(valuej2i10) + "," + get95p(valuej2i10)); }
            if (valuej3i10.size() > 0) { result.add((11) + "," + state3 + "," + getMax(valuej3i10) + "," + getMin(valuej3i10) + "," + getAve(valuej3i10) + "," + get95p(valuej3i10)); }

            if (valuej1i11.size() > 0) { result.add((12) + "," + state1 + "," + getMax(valuej1i11) + "," + getMin(valuej1i11) + "," + getAve(valuej1i11) + "," + get95p(valuej1i11)); }
            if (valuej2i11.size() > 0) { result.add((12) + "," + state2 + "," + getMax(valuej2i11) + "," + getMin(valuej2i11) + "," + getAve(valuej2i11) + "," + get95p(valuej2i11)); }
            if (valuej3i11.size() > 0) { result.add((12) + "," + state3 + "," + getMax(valuej3i11) + "," + getMin(valuej3i11) + "," + getAve(valuej3i11) + "," + get95p(valuej3i11)); }
            if (valuej1i12.size() > 0) { result.add((13) + "," + state1 + "," + getMax(valuej1i12) + "," + getMin(valuej1i12) + "," + getAve(valuej1i12) + "," + get95p(valuej1i12)); }
            if (valuej2i12.size() > 0) { result.add((13) + "," + state2 + "," + getMax(valuej2i12) + "," + getMin(valuej2i12) + "," + getAve(valuej2i12) + "," + get95p(valuej2i12)); }
            if (valuej3i12.size() > 0) { result.add((13) + "," + state3 + "," + getMax(valuej3i12) + "," + getMin(valuej3i12) + "," + getAve(valuej3i12) + "," + get95p(valuej3i12)); }
            if (valuej1i13.size() > 0) { result.add((14) + "," + state1 + "," + getMax(valuej1i13) + "," + getMin(valuej1i13) + "," + getAve(valuej1i13) + "," + get95p(valuej1i13)); }
            if (valuej2i13.size() > 0) { result.add((14) + "," + state2 + "," + getMax(valuej2i13) + "," + getMin(valuej2i13) + "," + getAve(valuej2i13) + "," + get95p(valuej2i13)); }
            if (valuej3i13.size() > 0) { result.add((14) + "," + state3 + "," + getMax(valuej3i13) + "," + getMin(valuej3i13) + "," + getAve(valuej3i13) + "," + get95p(valuej3i13)); }
            if (valuej1i14.size() > 0) { result.add((15) + "," + state1 + "," + getMax(valuej1i14) + "," + getMin(valuej1i14) + "," + getAve(valuej1i14) + "," + get95p(valuej1i14)); }
            if (valuej2i14.size() > 0) { result.add((15) + "," + state2 + "," + getMax(valuej2i14) + "," + getMin(valuej2i14) + "," + getAve(valuej2i14) + "," + get95p(valuej2i14)); }
            if (valuej3i14.size() > 0) { result.add((15) + "," + state3 + "," + getMax(valuej3i14) + "," + getMin(valuej3i14) + "," + getAve(valuej3i14) + "," + get95p(valuej3i14)); }
            if (valuej1i15.size() > 0) { result.add((16) + "," + state1 + "," + getMax(valuej1i15) + "," + getMin(valuej1i15) + "," + getAve(valuej1i15) + "," + get95p(valuej1i15)); }
            if (valuej2i15.size() > 0) { result.add((16) + "," + state2 + "," + getMax(valuej2i15) + "," + getMin(valuej2i15) + "," + getAve(valuej2i15) + "," + get95p(valuej2i15)); }
            if (valuej3i15.size() > 0) { result.add((16) + "," + state3 + "," + getMax(valuej3i15) + "," + getMin(valuej3i15) + "," + getAve(valuej3i15) + "," + get95p(valuej3i15)); }
            if (valuej1i16.size() > 0) { result.add((17) + "," + state1 + "," + getMax(valuej1i16) + "," + getMin(valuej1i16) + "," + getAve(valuej1i16) + "," + get95p(valuej1i16)); }
            if (valuej2i16.size() > 0) { result.add((17) + "," + state2 + "," + getMax(valuej2i16) + "," + getMin(valuej2i16) + "," + getAve(valuej2i16) + "," + get95p(valuej2i16)); }
            if (valuej3i16.size() > 0) { result.add((17) + "," + state3 + "," + getMax(valuej3i16) + "," + getMin(valuej3i16) + "," + getAve(valuej3i16) + "," + get95p(valuej3i16)); }
            if (valuej1i17.size() > 0) { result.add((18) + "," + state1 + "," + getMax(valuej1i17) + "," + getMin(valuej1i17) + "," + getAve(valuej1i17) + "," + get95p(valuej1i17)); }
            if (valuej2i17.size() > 0) { result.add((18) + "," + state2 + "," + getMax(valuej2i17) + "," + getMin(valuej2i17) + "," + getAve(valuej2i17) + "," + get95p(valuej2i17)); }
            if (valuej3i17.size() > 0) { result.add((18) + "," + state3 + "," + getMax(valuej3i17) + "," + getMin(valuej3i17) + "," + getAve(valuej3i17) + "," + get95p(valuej3i17)); }
            if (valuej1i18.size() > 0) { result.add((19) + "," + state1 + "," + getMax(valuej1i18) + "," + getMin(valuej1i18) + "," + getAve(valuej1i18) + "," + get95p(valuej1i18)); }
            if (valuej2i18.size() > 0) { result.add((19) + "," + state2 + "," + getMax(valuej2i18) + "," + getMin(valuej2i18) + "," + getAve(valuej2i18) + "," + get95p(valuej2i18)); }
            if (valuej3i18.size() > 0) { result.add((19) + "," + state3 + "," + getMax(valuej3i18) + "," + getMin(valuej3i18) + "," + getAve(valuej3i18) + "," + get95p(valuej3i18)); }
            if (valuej1i19.size() > 0) { result.add((20) + "," + state1 + "," + getMax(valuej1i19) + "," + getMin(valuej1i19) + "," + getAve(valuej1i19) + "," + get95p(valuej1i19)); }
            if (valuej2i19.size() > 0) { result.add((20) + "," + state2 + "," + getMax(valuej2i19) + "," + getMin(valuej2i19) + "," + getAve(valuej2i19) + "," + get95p(valuej2i19)); }
            if (valuej3i19.size() > 0) { result.add((20) + "," + state3 + "," + getMax(valuej3i19) + "," + getMin(valuej3i19) + "," + getAve(valuej3i19) + "," + get95p(valuej3i19)); }
            if (valuej1i20.size() > 0) { result.add((21) + "," + state1 + "," + getMax(valuej1i20) + "," + getMin(valuej1i20) + "," + getAve(valuej1i20) + "," + get95p(valuej1i20)); }
            if (valuej2i20.size() > 0) { result.add((21) + "," + state2 + "," + getMax(valuej2i20) + "," + getMin(valuej2i20) + "," + getAve(valuej2i20) + "," + get95p(valuej2i20)); }
            if (valuej3i20.size() > 0) { result.add((21) + "," + state3 + "," + getMax(valuej3i20) + "," + getMin(valuej3i20) + "," + getAve(valuej3i20) + "," + get95p(valuej3i20)); }

            if (valuej1i21.size() > 0) { result.add((22) + "," + state1 + "," + getMax(valuej1i21) + "," + getMin(valuej1i21) + "," + getAve(valuej1i21) + "," + get95p(valuej1i21)); }
            if (valuej2i21.size() > 0) { result.add((22) + "," + state2 + "," + getMax(valuej2i21) + "," + getMin(valuej2i21) + "," + getAve(valuej2i21) + "," + get95p(valuej2i21)); }
            if (valuej3i21.size() > 0) { result.add((22) + "," + state3 + "," + getMax(valuej3i21) + "," + getMin(valuej3i21) + "," + getAve(valuej3i21) + "," + get95p(valuej3i21)); }
            if (valuej1i22.size() > 0) { result.add((23) + "," + state1 + "," + getMax(valuej1i22) + "," + getMin(valuej1i22) + "," + getAve(valuej1i22) + "," + get95p(valuej1i22)); }
            if (valuej2i22.size() > 0) { result.add((23) + "," + state2 + "," + getMax(valuej2i22) + "," + getMin(valuej2i22) + "," + getAve(valuej2i22) + "," + get95p(valuej2i22)); }
            if (valuej3i22.size() > 0) { result.add((23) + "," + state3 + "," + getMax(valuej3i22) + "," + getMin(valuej3i22) + "," + getAve(valuej3i22) + "," + get95p(valuej3i22)); }
            if (valuej1i23.size() > 0) { result.add((24) + "," + state1 + "," + getMax(valuej1i23) + "," + getMin(valuej1i23) + "," + getAve(valuej1i23) + "," + get95p(valuej1i23)); }
            if (valuej2i23.size() > 0) { result.add((24) + "," + state2 + "," + getMax(valuej2i23) + "," + getMin(valuej2i23) + "," + getAve(valuej2i23) + "," + get95p(valuej2i23)); }
            if (valuej3i23.size() > 0) { result.add((24) + "," + state3 + "," + getMax(valuej3i23) + "," + getMin(valuej3i23) + "," + getAve(valuej3i23) + "," + get95p(valuej3i23)); }
            if (valuej1i24.size() > 0) { result.add((25) + "," + state1 + "," + getMax(valuej1i24) + "," + getMin(valuej1i24) + "," + getAve(valuej1i24) + "," + get95p(valuej1i24)); }
            if (valuej2i24.size() > 0) { result.add((25) + "," + state2 + "," + getMax(valuej2i24) + "," + getMin(valuej2i24) + "," + getAve(valuej2i24) + "," + get95p(valuej2i24)); }
            if (valuej3i24.size() > 0) { result.add((25) + "," + state3 + "," + getMax(valuej3i24) + "," + getMin(valuej3i24) + "," + getAve(valuej3i24) + "," + get95p(valuej3i24)); }
            if (valuej1i25.size() > 0) { result.add((26) + "," + state1 + "," + getMax(valuej1i25) + "," + getMin(valuej1i25) + "," + getAve(valuej1i25) + "," + get95p(valuej1i25)); }
            if (valuej2i25.size() > 0) { result.add((26) + "," + state2 + "," + getMax(valuej2i25) + "," + getMin(valuej2i25) + "," + getAve(valuej2i25) + "," + get95p(valuej2i25)); }
            if (valuej3i25.size() > 0) { result.add((26) + "," + state3 + "," + getMax(valuej3i25) + "," + getMin(valuej3i25) + "," + getAve(valuej3i25) + "," + get95p(valuej3i25)); }
            if (valuej1i26.size() > 0) { result.add((27) + "," + state1 + "," + getMax(valuej1i26) + "," + getMin(valuej1i26) + "," + getAve(valuej1i26) + "," + get95p(valuej1i26)); }
            if (valuej2i26.size() > 0) { result.add((27) + "," + state2 + "," + getMax(valuej2i26) + "," + getMin(valuej2i26) + "," + getAve(valuej2i26) + "," + get95p(valuej2i26)); }
            if (valuej3i26.size() > 0) { result.add((27) + "," + state3 + "," + getMax(valuej3i26) + "," + getMin(valuej3i26) + "," + getAve(valuej3i26) + "," + get95p(valuej3i26)); }
            if (valuej1i27.size() > 0) { result.add((28) + "," + state1 + "," + getMax(valuej1i27) + "," + getMin(valuej1i27) + "," + getAve(valuej1i27) + "," + get95p(valuej1i27)); }
            if (valuej2i27.size() > 0) { result.add((28) + "," + state2 + "," + getMax(valuej2i27) + "," + getMin(valuej2i27) + "," + getAve(valuej2i27) + "," + get95p(valuej2i27)); }
            if (valuej3i27.size() > 0) { result.add((28) + "," + state3 + "," + getMax(valuej3i27) + "," + getMin(valuej3i27) + "," + getAve(valuej3i27) + "," + get95p(valuej3i27)); }
            if (valuej1i28.size() > 0) { result.add((29) + "," + state1 + "," + getMax(valuej1i28) + "," + getMin(valuej1i28) + "," + getAve(valuej1i28) + "," + get95p(valuej1i28)); }
            if (valuej2i28.size() > 0) { result.add((29) + "," + state2 + "," + getMax(valuej2i28) + "," + getMin(valuej2i28) + "," + getAve(valuej2i28) + "," + get95p(valuej2i28)); }
            if (valuej3i28.size() > 0) { result.add((29) + "," + state3 + "," + getMax(valuej3i28) + "," + getMin(valuej3i28) + "," + getAve(valuej3i28) + "," + get95p(valuej3i28)); }
            if (valuej1i29.size() > 0) { result.add((30) + "," + state1 + "," + getMax(valuej1i29) + "," + getMin(valuej1i29) + "," + getAve(valuej1i29) + "," + get95p(valuej1i29)); }
            if (valuej2i29.size() > 0) { result.add((30) + "," + state2 + "," + getMax(valuej2i29) + "," + getMin(valuej2i29) + "," + getAve(valuej2i29) + "," + get95p(valuej2i29)); }
            if (valuej3i29.size() > 0) { result.add((30) + "," + state3 + "," + getMax(valuej3i29) + "," + getMin(valuej3i29) + "," + getAve(valuej3i29) + "," + get95p(valuej3i29)); }
            if (valuej1i30.size() > 0) { result.add((31) + "," + state1 + "," + getMax(valuej1i30) + "," + getMin(valuej1i30) + "," + getAve(valuej1i30) + "," + get95p(valuej1i30)); }
            if (valuej2i30.size() > 0) { result.add((31) + "," + state2 + "," + getMax(valuej2i30) + "," + getMin(valuej2i30) + "," + getAve(valuej2i30) + "," + get95p(valuej2i30)); }
            if (valuej3i30.size() > 0) { result.add((31) + "," + state3 + "," + getMax(valuej3i30) + "," + getMin(valuej3i30) + "," + getAve(valuej3i30) + "," + get95p(valuej3i30)); }

            if (valuej1i31.size() > 0) { result.add((32) + "," + state1 + "," + getMax(valuej1i31) + "," + getMin(valuej1i31) + "," + getAve(valuej1i31) + "," + get95p(valuej1i31)); }
            if (valuej2i31.size() > 0) { result.add((32) + "," + state2 + "," + getMax(valuej2i31) + "," + getMin(valuej2i31) + "," + getAve(valuej2i31) + "," + get95p(valuej2i31)); }
            if (valuej3i31.size() > 0) { result.add((32) + "," + state3 + "," + getMax(valuej3i31) + "," + getMin(valuej3i31) + "," + getAve(valuej3i31) + "," + get95p(valuej3i31)); }
            if (valuej1i32.size() > 0) { result.add((33) + "," + state1 + "," + getMax(valuej1i32) + "," + getMin(valuej1i32) + "," + getAve(valuej1i32) + "," + get95p(valuej1i32)); }
            if (valuej2i32.size() > 0) { result.add((33) + "," + state2 + "," + getMax(valuej2i32) + "," + getMin(valuej2i32) + "," + getAve(valuej2i32) + "," + get95p(valuej2i32)); }
            if (valuej3i32.size() > 0) { result.add((33) + "," + state3 + "," + getMax(valuej3i32) + "," + getMin(valuej3i32) + "," + getAve(valuej3i32) + "," + get95p(valuej3i32)); }
            if (valuej1i33.size() > 0) { result.add((34) + "," + state1 + "," + getMax(valuej1i33) + "," + getMin(valuej1i33) + "," + getAve(valuej1i33) + "," + get95p(valuej1i33)); }
            if (valuej2i33.size() > 0) { result.add((34) + "," + state2 + "," + getMax(valuej2i33) + "," + getMin(valuej2i33) + "," + getAve(valuej2i33) + "," + get95p(valuej2i33)); }
            if (valuej3i33.size() > 0) { result.add((34) + "," + state3 + "," + getMax(valuej3i33) + "," + getMin(valuej3i33) + "," + getAve(valuej3i33) + "," + get95p(valuej3i33)); }
            if (valuej1i34.size() > 0) { result.add((35) + "," + state1 + "," + getMax(valuej1i34) + "," + getMin(valuej1i34) + "," + getAve(valuej1i34) + "," + get95p(valuej1i34)); }
            if (valuej2i34.size() > 0) { result.add((35) + "," + state2 + "," + getMax(valuej2i34) + "," + getMin(valuej2i34) + "," + getAve(valuej2i34) + "," + get95p(valuej2i34)); }
            if (valuej3i34.size() > 0) { result.add((35) + "," + state3 + "," + getMax(valuej3i34) + "," + getMin(valuej3i34) + "," + getAve(valuej3i34) + "," + get95p(valuej3i34)); }
            if (valuej1i35.size() > 0) { result.add((36) + "," + state1 + "," + getMax(valuej1i35) + "," + getMin(valuej1i35) + "," + getAve(valuej1i35) + "," + get95p(valuej1i35)); }
            if (valuej2i35.size() > 0) { result.add((36) + "," + state2 + "," + getMax(valuej2i35) + "," + getMin(valuej2i35) + "," + getAve(valuej2i35) + "," + get95p(valuej2i35)); }
            if (valuej3i35.size() > 0) { result.add((36) + "," + state3 + "," + getMax(valuej3i35) + "," + getMin(valuej3i35) + "," + getAve(valuej3i35) + "," + get95p(valuej3i35)); }
            if (valuej1i36.size() > 0) { result.add((37) + "," + state1 + "," + getMax(valuej1i36) + "," + getMin(valuej1i36) + "," + getAve(valuej1i36) + "," + get95p(valuej1i36)); }
            if (valuej2i36.size() > 0) { result.add((37) + "," + state2 + "," + getMax(valuej2i36) + "," + getMin(valuej2i36) + "," + getAve(valuej2i36) + "," + get95p(valuej2i36)); }
            if (valuej3i36.size() > 0) { result.add((37) + "," + state3 + "," + getMax(valuej3i36) + "," + getMin(valuej3i36) + "," + getAve(valuej3i36) + "," + get95p(valuej3i36)); }
            if (valuej1i37.size() > 0) { result.add((38) + "," + state1 + "," + getMax(valuej1i37) + "," + getMin(valuej1i37) + "," + getAve(valuej1i37) + "," + get95p(valuej1i37)); }
            if (valuej2i37.size() > 0) { result.add((38) + "," + state2 + "," + getMax(valuej2i37) + "," + getMin(valuej2i37) + "," + getAve(valuej2i37) + "," + get95p(valuej2i37)); }
            if (valuej3i37.size() > 0) { result.add((38) + "," + state3 + "," + getMax(valuej3i37) + "," + getMin(valuej3i37) + "," + getAve(valuej3i37) + "," + get95p(valuej3i37)); }
            if (valuej1i38.size() > 0) { result.add((39) + "," + state1 + "," + getMax(valuej1i38) + "," + getMin(valuej1i38) + "," + getAve(valuej1i38) + "," + get95p(valuej1i38)); }
            if (valuej2i38.size() > 0) { result.add((39) + "," + state2 + "," + getMax(valuej2i38) + "," + getMin(valuej2i38) + "," + getAve(valuej2i38) + "," + get95p(valuej2i38)); }
            if (valuej3i38.size() > 0) { result.add((39) + "," + state3 + "," + getMax(valuej3i38) + "," + getMin(valuej3i38) + "," + getAve(valuej3i38) + "," + get95p(valuej3i38)); }
            if (valuej1i39.size() > 0) { result.add((40) + "," + state1 + "," + getMax(valuej1i39) + "," + getMin(valuej1i39) + "," + getAve(valuej1i39) + "," + get95p(valuej1i39)); }
            if (valuej2i39.size() > 0) { result.add((40) + "," + state2 + "," + getMax(valuej2i39) + "," + getMin(valuej2i39) + "," + getAve(valuej2i39) + "," + get95p(valuej2i39)); }
            if (valuej3i39.size() > 0) { result.add((40) + "," + state3 + "," + getMax(valuej3i39) + "," + getMin(valuej3i39) + "," + getAve(valuej3i39) + "," + get95p(valuej3i39)); }
            if (valuej1i40.size() > 0) { result.add((41) + "," + state1 + "," + getMax(valuej1i40) + "," + getMin(valuej1i40) + "," + getAve(valuej1i40) + "," + get95p(valuej1i40)); }
            if (valuej2i40.size() > 0) { result.add((41) + "," + state2 + "," + getMax(valuej2i40) + "," + getMin(valuej2i40) + "," + getAve(valuej2i40) + "," + get95p(valuej2i40)); }
            if (valuej3i40.size() > 0) { result.add((41) + "," + state3 + "," + getMax(valuej3i40) + "," + getMin(valuej3i40) + "," + getAve(valuej3i40) + "," + get95p(valuej3i40)); }

            if (valuej1i41.size() > 0) { result.add((42) + "," + state1 + "," + getMax(valuej1i41) + "," + getMin(valuej1i41) + "," + getAve(valuej1i41) + "," + get95p(valuej1i41)); }
            if (valuej2i41.size() > 0) { result.add((42) + "," + state2 + "," + getMax(valuej2i41) + "," + getMin(valuej2i41) + "," + getAve(valuej2i41) + "," + get95p(valuej2i41)); }
            if (valuej3i41.size() > 0) { result.add((42) + "," + state3 + "," + getMax(valuej3i41) + "," + getMin(valuej3i41) + "," + getAve(valuej3i41) + "," + get95p(valuej3i41)); }
            if (valuej1i42.size() > 0) { result.add((43) + "," + state1 + "," + getMax(valuej1i42) + "," + getMin(valuej1i42) + "," + getAve(valuej1i42) + "," + get95p(valuej1i42)); }
            if (valuej2i42.size() > 0) { result.add((43) + "," + state2 + "," + getMax(valuej2i42) + "," + getMin(valuej2i42) + "," + getAve(valuej2i42) + "," + get95p(valuej2i42)); }
            if (valuej3i42.size() > 0) { result.add((43) + "," + state3 + "," + getMax(valuej3i42) + "," + getMin(valuej3i42) + "," + getAve(valuej3i42) + "," + get95p(valuej3i42)); }
            if (valuej1i43.size() > 0) { result.add((44) + "," + state1 + "," + getMax(valuej1i43) + "," + getMin(valuej1i43) + "," + getAve(valuej1i43) + "," + get95p(valuej1i43)); }
            if (valuej2i43.size() > 0) { result.add((44) + "," + state2 + "," + getMax(valuej2i43) + "," + getMin(valuej2i43) + "," + getAve(valuej2i43) + "," + get95p(valuej2i43)); }
            if (valuej3i43.size() > 0) { result.add((44) + "," + state3 + "," + getMax(valuej3i43) + "," + getMin(valuej3i43) + "," + getAve(valuej3i43) + "," + get95p(valuej3i43)); }
            if (valuej1i44.size() > 0) { result.add((45) + "," + state1 + "," + getMax(valuej1i44) + "," + getMin(valuej1i44) + "," + getAve(valuej1i44) + "," + get95p(valuej1i44)); }
            if (valuej2i44.size() > 0) { result.add((45) + "," + state2 + "," + getMax(valuej2i44) + "," + getMin(valuej2i44) + "," + getAve(valuej2i44) + "," + get95p(valuej2i44)); }
            if (valuej3i44.size() > 0) { result.add((45) + "," + state3 + "," + getMax(valuej3i44) + "," + getMin(valuej3i44) + "," + getAve(valuej3i44) + "," + get95p(valuej3i44)); }
            if (valuej1i45.size() > 0) { result.add((46) + "," + state1 + "," + getMax(valuej1i45) + "," + getMin(valuej1i45) + "," + getAve(valuej1i45) + "," + get95p(valuej1i45)); }
            if (valuej2i45.size() > 0) { result.add((46) + "," + state2 + "," + getMax(valuej2i45) + "," + getMin(valuej2i45) + "," + getAve(valuej2i45) + "," + get95p(valuej2i45)); }
            if (valuej3i45.size() > 0) { result.add((46) + "," + state3 + "," + getMax(valuej3i45) + "," + getMin(valuej3i45) + "," + getAve(valuej3i45) + "," + get95p(valuej3i45)); }
            if (valuej1i46.size() > 0) { result.add((47) + "," + state1 + "," + getMax(valuej1i46) + "," + getMin(valuej1i46) + "," + getAve(valuej1i46) + "," + get95p(valuej1i46)); }
            if (valuej2i46.size() > 0) { result.add((47) + "," + state2 + "," + getMax(valuej2i46) + "," + getMin(valuej2i46) + "," + getAve(valuej2i46) + "," + get95p(valuej2i46)); }
            if (valuej3i46.size() > 0) { result.add((47) + "," + state3 + "," + getMax(valuej3i46) + "," + getMin(valuej3i46) + "," + getAve(valuej3i46) + "," + get95p(valuej3i46)); }
            if (valuej1i47.size() > 0) { result.add((48) + "," + state1 + "," + getMax(valuej1i47) + "," + getMin(valuej1i47) + "," + getAve(valuej1i47) + "," + get95p(valuej1i47)); }
            if (valuej2i47.size() > 0) { result.add((48) + "," + state2 + "," + getMax(valuej2i47) + "," + getMin(valuej2i47) + "," + getAve(valuej2i47) + "," + get95p(valuej2i47)); }
            if (valuej3i47.size() > 0) { result.add((48) + "," + state3 + "," + getMax(valuej3i47) + "," + getMin(valuej3i47) + "," + getAve(valuej3i47) + "," + get95p(valuej3i47)); }
            if (valuej1i48.size() > 0) { result.add((49) + "," + state1 + "," + getMax(valuej1i48) + "," + getMin(valuej1i48) + "," + getAve(valuej1i48) + "," + get95p(valuej1i48)); }
            if (valuej2i48.size() > 0) { result.add((49) + "," + state2 + "," + getMax(valuej2i48) + "," + getMin(valuej2i48) + "," + getAve(valuej2i48) + "," + get95p(valuej2i48)); }
            if (valuej3i48.size() > 0) { result.add((49) + "," + state3 + "," + getMax(valuej3i48) + "," + getMin(valuej3i48) + "," + getAve(valuej3i48) + "," + get95p(valuej3i48)); }
            if (valuej1i49.size() > 0) { result.add((50) + "," + state1 + "," + getMax(valuej1i49) + "," + getMin(valuej1i49) + "," + getAve(valuej1i49) + "," + get95p(valuej1i49)); }
            if (valuej2i49.size() > 0) { result.add((50) + "," + state2 + "," + getMax(valuej2i49) + "," + getMin(valuej2i49) + "," + getAve(valuej2i49) + "," + get95p(valuej2i49)); }
            if (valuej3i49.size() > 0) { result.add((50) + "," + state3 + "," + getMax(valuej3i49) + "," + getMin(valuej3i49) + "," + getAve(valuej3i49) + "," + get95p(valuej3i49)); }
            if (valuej1i50.size() > 0) { result.add((51) + "," + state1 + "," + getMax(valuej1i50) + "," + getMin(valuej1i50) + "," + getAve(valuej1i50) + "," + get95p(valuej1i50)); }
            if (valuej2i50.size() > 0) { result.add((51) + "," + state2 + "," + getMax(valuej2i50) + "," + getMin(valuej2i50) + "," + getAve(valuej2i50) + "," + get95p(valuej2i50)); }
            if (valuej3i50.size() > 0) { result.add((51) + "," + state3 + "," + getMax(valuej3i50) + "," + getMin(valuej3i50) + "," + getAve(valuej3i50) + "," + get95p(valuej3i50)); }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHVresultBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";

            List<PowerxbMonitor> pblist = hbsessionDao.search(sql);

            if(pblist != null) {
                for (int pbidx = 0; pbidx < pblist.size(); pbidx++) {
                    PowerxbMonitor obj = pblist.get(pbidx);

                    double dvaluej1i2 = obj.getU1Xb2();
                    double dvaluej2i2 = obj.getU2Xb2();
                    double dvaluej3i2 = obj.getU3Xb2();
                    double dvaluej1i3 = obj.getU1Xb3();
                    double dvaluej2i3 = obj.getU2Xb3();
                    double dvaluej3i3 = obj.getU3Xb3();
                    double dvaluej1i4 = obj.getU1Xb4();
                    double dvaluej2i4 = obj.getU2Xb4();
                    double dvaluej3i4 = obj.getU3Xb4();
                    double dvaluej1i5 = obj.getU1Xb5();
                    double dvaluej2i5 = obj.getU2Xb5();
                    double dvaluej3i5 = obj.getU3Xb5();
                    double dvaluej1i6 = obj.getU1Xb6();
                    double dvaluej2i6 = obj.getU2Xb6();
                    double dvaluej3i6 = obj.getU3Xb6();
                    double dvaluej1i7 = obj.getU1Xb7();
                    double dvaluej2i7 = obj.getU2Xb7();
                    double dvaluej3i7 = obj.getU3Xb7();
                    double dvaluej1i8 = obj.getU1Xb8();
                    double dvaluej2i8 = obj.getU2Xb8();
                    double dvaluej3i8 = obj.getU3Xb8();
                    double dvaluej1i9 = obj.getU1Xb9();
                    double dvaluej2i9 = obj.getU2Xb9();
                    double dvaluej3i9 = obj.getU3Xb9();
                    double dvaluej1i10 = obj.getU1Xb10();
                    double dvaluej2i10 = obj.getU2Xb10();
                    double dvaluej3i10 = obj.getU3Xb10();
                    double dvaluej1i11 = obj.getU1Xb11();
                    double dvaluej2i11 = obj.getU2Xb11();
                    double dvaluej3i11 = obj.getU3Xb11();
                    double dvaluej1i12 = obj.getU1Xb12();
                    double dvaluej2i12 = obj.getU2Xb12();
                    double dvaluej3i12 = obj.getU3Xb12();
                    double dvaluej1i13 = obj.getU1Xb13();
                    double dvaluej2i13 = obj.getU2Xb13();
                    double dvaluej3i13 = obj.getU3Xb13();
                    double dvaluej1i14 = obj.getU1Xb14();
                    double dvaluej2i14 = obj.getU2Xb14();
                    double dvaluej3i14 = obj.getU3Xb14();
                    double dvaluej1i15 = obj.getU1Xb15();
                    double dvaluej2i15 = obj.getU2Xb15();
                    double dvaluej3i15 = obj.getU3Xb15();
                    double dvaluej1i16 = obj.getU1Xb16();
                    double dvaluej2i16 = obj.getU2Xb16();
                    double dvaluej3i16 = obj.getU3Xb16();
                    double dvaluej1i17 = obj.getU1Xb17();
                    double dvaluej2i17 = obj.getU2Xb17();
                    double dvaluej3i17 = obj.getU3Xb17();
                    double dvaluej1i18 = obj.getU1Xb18();
                    double dvaluej2i18 = obj.getU2Xb18();
                    double dvaluej3i18 = obj.getU3Xb18();
                    double dvaluej1i19 = obj.getU1Xb19();
                    double dvaluej2i19 = obj.getU2Xb19();
                    double dvaluej3i19 = obj.getU3Xb19();
                    double dvaluej1i20 = obj.getU1Xb20();
                    double dvaluej2i20 = obj.getU2Xb20();
                    double dvaluej3i20 = obj.getU3Xb20();

                    double dvaluej1i21 = obj.getU1Xb21();
                    double dvaluej2i21 = obj.getU2Xb21();
                    double dvaluej3i21 = obj.getU3Xb21();
                    double dvaluej1i22 = obj.getU1Xb22();
                    double dvaluej2i22 = obj.getU2Xb22();
                    double dvaluej3i22 = obj.getU3Xb22();
                    double dvaluej1i23 = obj.getU1Xb23();
                    double dvaluej2i23 = obj.getU2Xb23();
                    double dvaluej3i23 = obj.getU3Xb23();
                    double dvaluej1i24 = obj.getU1Xb24();
                    double dvaluej2i24 = obj.getU2Xb24();
                    double dvaluej3i24 = obj.getU3Xb24();
                    double dvaluej1i25 = obj.getU1Xb25();
                    double dvaluej2i25 = obj.getU2Xb25();
                    double dvaluej3i25 = obj.getU3Xb25();
                    double dvaluej1i26 = obj.getU1Xb26();
                    double dvaluej2i26 = obj.getU2Xb26();
                    double dvaluej3i26 = obj.getU3Xb26();
                    double dvaluej1i27 = obj.getU1Xb27();
                    double dvaluej2i27 = obj.getU2Xb27();
                    double dvaluej3i27 = obj.getU3Xb27();
                    double dvaluej1i28 = obj.getU1Xb28();
                    double dvaluej2i28 = obj.getU2Xb28();
                    double dvaluej3i28 = obj.getU3Xb28();
                    double dvaluej1i29 = obj.getU1Xb29();
                    double dvaluej2i29 = obj.getU2Xb29();
                    double dvaluej3i29 = obj.getU3Xb29();
                    double dvaluej1i30 = obj.getU1Xb30();
                    double dvaluej2i30 = obj.getU2Xb30();
                    double dvaluej3i30 = obj.getU3Xb30();

                    double dvaluej1i31 = obj.getU1Xb31();
                    double dvaluej2i31 = obj.getU2Xb31();
                    double dvaluej3i31 = obj.getU3Xb31();
                    double dvaluej1i32 = obj.getU1Xb32();
                    double dvaluej2i32 = obj.getU2Xb32();
                    double dvaluej3i32 = obj.getU3Xb32();
                    double dvaluej1i33 = obj.getU1Xb33();
                    double dvaluej2i33 = obj.getU2Xb33();
                    double dvaluej3i33 = obj.getU3Xb33();
                    double dvaluej1i34 = obj.getU1Xb34();
                    double dvaluej2i34 = obj.getU2Xb34();
                    double dvaluej3i34 = obj.getU3Xb34();
                    double dvaluej1i35 = obj.getU1Xb35();
                    double dvaluej2i35 = obj.getU2Xb35();
                    double dvaluej3i35 = obj.getU3Xb35();
                    double dvaluej1i36 = obj.getU1Xb36();
                    double dvaluej2i36 = obj.getU2Xb36();
                    double dvaluej3i36 = obj.getU3Xb36();
                    double dvaluej1i37 = obj.getU1Xb37();
                    double dvaluej2i37 = obj.getU2Xb37();
                    double dvaluej3i37 = obj.getU3Xb37();
                    double dvaluej1i38 = obj.getU1Xb38();
                    double dvaluej2i38 = obj.getU2Xb38();
                    double dvaluej3i38 = obj.getU3Xb38();
                    double dvaluej1i39 = obj.getU1Xb39();
                    double dvaluej2i39 = obj.getU2Xb39();
                    double dvaluej3i39 = obj.getU3Xb39();
                    double dvaluej1i40 = obj.getU1Xb40();
                    double dvaluej2i40 = obj.getU2Xb40();
                    double dvaluej3i40 = obj.getU3Xb40();

                    double dvaluej1i41 = obj.getU1Xb41();
                    double dvaluej2i41 = obj.getU2Xb41();
                    double dvaluej3i41 = obj.getU3Xb41();
                    double dvaluej1i42 = obj.getU1Xb42();
                    double dvaluej2i42 = obj.getU2Xb42();
                    double dvaluej3i42 = obj.getU3Xb42();
                    double dvaluej1i43 = obj.getU1Xb43();
                    double dvaluej2i43 = obj.getU2Xb43();
                    double dvaluej3i43 = obj.getU3Xb43();
                    double dvaluej1i44 = obj.getU1Xb44();
                    double dvaluej2i44 = obj.getU2Xb44();
                    double dvaluej3i44 = obj.getU3Xb44();
                    double dvaluej1i45 = obj.getU1Xb45();
                    double dvaluej2i45 = obj.getU2Xb45();
                    double dvaluej3i45 = obj.getU3Xb45();
                    double dvaluej1i46 = obj.getU1Xb46();
                    double dvaluej2i46 = obj.getU2Xb46();
                    double dvaluej3i46 = obj.getU3Xb46();
                    double dvaluej1i47 = obj.getU1Xb47();
                    double dvaluej2i47 = obj.getU2Xb47();
                    double dvaluej3i47 = obj.getU3Xb47();
                    double dvaluej1i48 = obj.getU1Xb48();
                    double dvaluej2i48 = obj.getU2Xb48();
                    double dvaluej3i48 = obj.getU3Xb48();
                    double dvaluej1i49 = obj.getU1Xb49();
                    double dvaluej2i49 = obj.getU2Xb49();
                    double dvaluej3i49 = obj.getU3Xb49();
                    double dvaluej1i50 = obj.getU1Xb50();
                    double dvaluej2i50 = obj.getU2Xb50();
                    double dvaluej3i50 = obj.getU3Xb50();

                    valuej1i2.add(dvaluej1i2);
                    valuej2i2.add(dvaluej2i2);
                    valuej3i2.add(dvaluej3i2);
                    valuej1i3.add(dvaluej1i3);
                    valuej2i3.add(dvaluej2i3);
                    valuej3i3.add(dvaluej3i3);
                    valuej1i4.add(dvaluej1i4);
                    valuej2i4.add(dvaluej2i4);
                    valuej3i4.add(dvaluej3i4);
                    valuej1i5.add(dvaluej1i5);
                    valuej2i5.add(dvaluej2i5);
                    valuej3i5.add(dvaluej3i5);
                    valuej1i6.add(dvaluej1i6);
                    valuej2i6.add(dvaluej2i6);
                    valuej3i6.add(dvaluej3i6);
                    valuej1i7.add(dvaluej1i7);
                    valuej2i7.add(dvaluej2i7);
                    valuej3i7.add(dvaluej3i7);
                    valuej1i8.add(dvaluej1i8);
                    valuej2i8.add(dvaluej2i8);
                    valuej3i8.add(dvaluej3i8);
                    valuej1i9.add(dvaluej1i9);
                    valuej2i9.add(dvaluej2i9);
                    valuej3i9.add(dvaluej3i9);
                    valuej1i10.add(dvaluej1i10);
                    valuej2i10.add(dvaluej2i10);
                    valuej3i10.add(dvaluej3i10);

                    valuej1i11.add(dvaluej1i11);
                    valuej2i11.add(dvaluej2i11);
                    valuej3i11.add(dvaluej3i11);
                    valuej1i12.add(dvaluej1i12);
                    valuej2i12.add(dvaluej2i12);
                    valuej3i12.add(dvaluej3i12);
                    valuej1i13.add(dvaluej1i13);
                    valuej2i13.add(dvaluej2i13);
                    valuej3i13.add(dvaluej3i13);
                    valuej1i14.add(dvaluej1i14);
                    valuej2i14.add(dvaluej2i14);
                    valuej3i14.add(dvaluej3i14);
                    valuej1i15.add(dvaluej1i15);
                    valuej2i15.add(dvaluej2i15);
                    valuej3i15.add(dvaluej3i15);
                    valuej1i16.add(dvaluej1i16);
                    valuej2i16.add(dvaluej2i16);
                    valuej3i16.add(dvaluej3i16);
                    valuej1i17.add(dvaluej1i17);
                    valuej2i17.add(dvaluej2i17);
                    valuej3i17.add(dvaluej3i17);
                    valuej1i18.add(dvaluej1i18);
                    valuej2i18.add(dvaluej2i18);
                    valuej3i18.add(dvaluej3i18);
                    valuej1i19.add(dvaluej1i19);
                    valuej2i19.add(dvaluej2i19);
                    valuej3i19.add(dvaluej3i19);
                    valuej1i20.add(dvaluej1i20);
                    valuej2i20.add(dvaluej2i20);
                    valuej3i20.add(dvaluej3i20);

                    valuej1i21.add(dvaluej1i21);
                    valuej2i21.add(dvaluej2i21);
                    valuej3i21.add(dvaluej3i21);
                    valuej1i22.add(dvaluej1i22);
                    valuej2i22.add(dvaluej2i22);
                    valuej3i22.add(dvaluej3i22);
                    valuej1i23.add(dvaluej1i23);
                    valuej2i23.add(dvaluej2i23);
                    valuej3i23.add(dvaluej3i23);
                    valuej1i24.add(dvaluej1i24);
                    valuej2i24.add(dvaluej2i24);
                    valuej3i24.add(dvaluej3i24);
                    valuej1i25.add(dvaluej1i25);
                    valuej2i25.add(dvaluej2i25);
                    valuej3i25.add(dvaluej3i25);
                    valuej1i26.add(dvaluej1i26);
                    valuej2i26.add(dvaluej2i26);
                    valuej3i26.add(dvaluej3i26);
                    valuej1i27.add(dvaluej1i27);
                    valuej2i27.add(dvaluej2i27);
                    valuej3i27.add(dvaluej3i27);
                    valuej1i28.add(dvaluej1i28);
                    valuej2i28.add(dvaluej2i28);
                    valuej3i28.add(dvaluej3i28);
                    valuej1i29.add(dvaluej1i29);
                    valuej2i29.add(dvaluej2i29);
                    valuej3i29.add(dvaluej3i29);
                    valuej1i30.add(dvaluej1i30);
                    valuej2i30.add(dvaluej2i30);
                    valuej3i30.add(dvaluej3i30);

                    valuej1i31.add(dvaluej1i31);
                    valuej2i31.add(dvaluej2i31);
                    valuej3i31.add(dvaluej3i31);
                    valuej1i32.add(dvaluej1i32);
                    valuej2i32.add(dvaluej2i32);
                    valuej3i32.add(dvaluej3i32);
                    valuej1i33.add(dvaluej1i33);
                    valuej2i33.add(dvaluej2i33);
                    valuej3i33.add(dvaluej3i33);
                    valuej1i34.add(dvaluej1i34);
                    valuej2i34.add(dvaluej2i34);
                    valuej3i34.add(dvaluej3i34);
                    valuej1i35.add(dvaluej1i35);
                    valuej2i35.add(dvaluej2i35);
                    valuej3i35.add(dvaluej3i35);
                    valuej1i36.add(dvaluej1i36);
                    valuej2i36.add(dvaluej2i36);
                    valuej3i36.add(dvaluej3i36);
                    valuej1i37.add(dvaluej1i37);
                    valuej2i37.add(dvaluej2i37);
                    valuej3i37.add(dvaluej3i37);
                    valuej1i38.add(dvaluej1i38);
                    valuej2i38.add(dvaluej2i38);
                    valuej3i38.add(dvaluej3i38);
                    valuej1i39.add(dvaluej1i39);
                    valuej2i39.add(dvaluej2i39);
                    valuej3i39.add(dvaluej3i39);
                    valuej1i40.add(dvaluej1i40);
                    valuej2i40.add(dvaluej2i40);
                    valuej3i40.add(dvaluej3i40);

                    valuej1i41.add(dvaluej1i41);
                    valuej2i41.add(dvaluej2i41);
                    valuej3i41.add(dvaluej3i41);
                    valuej1i42.add(dvaluej1i42);
                    valuej2i42.add(dvaluej2i42);
                    valuej3i42.add(dvaluej3i42);
                    valuej1i43.add(dvaluej1i43);
                    valuej2i43.add(dvaluej2i43);
                    valuej3i43.add(dvaluej3i43);
                    valuej1i44.add(dvaluej1i44);
                    valuej2i44.add(dvaluej2i44);
                    valuej3i44.add(dvaluej3i44);
                    valuej1i45.add(dvaluej1i45);
                    valuej2i45.add(dvaluej2i45);
                    valuej3i45.add(dvaluej3i45);
                    valuej1i46.add(dvaluej1i46);
                    valuej2i46.add(dvaluej2i46);
                    valuej3i46.add(dvaluej3i46);
                    valuej1i47.add(dvaluej1i47);
                    valuej2i47.add(dvaluej2i47);
                    valuej3i47.add(dvaluej3i47);
                    valuej1i48.add(dvaluej1i48);
                    valuej2i48.add(dvaluej2i48);
                    valuej3i48.add(dvaluej3i48);
                    valuej1i49.add(dvaluej1i49);
                    valuej2i49.add(dvaluej2i49);
                    valuej3i49.add(dvaluej3i49);
                    valuej1i50.add(dvaluej1i50);
                    valuej2i50.add(dvaluej2i50);
                    valuej3i50.add(dvaluej3i50);

                }
            }

            String nullstra = "," + state1 + "," + null + "," + null + "," + null + "," + null;
            String nullstrb = "," + state2 + "," + null + "," + null + "," + null + "," + null;
            String nullstrc = "," + state3 + "," + null + "," + null + "," + null + "," + null;

            if (valuej1i2.size() == 0) { result.add((3) + nullstra); }
            if (valuej2i2.size() == 0) { result.add((3) + nullstrb); }
            if (valuej3i2.size() == 0) { result.add((3) + nullstrc); }
            if (valuej1i3.size() == 0) { result.add((4) + nullstra); }
            if (valuej2i3.size() == 0) { result.add((4) + nullstrb); }
            if (valuej3i3.size() == 0) { result.add((4) + nullstrc); }
            if (valuej1i4.size() == 0) { result.add((5) + nullstra); }
            if (valuej2i4.size() == 0) { result.add((5) + nullstrb); }
            if (valuej3i4.size() == 0) { result.add((5) + nullstrc); }
            if (valuej1i5.size() == 0) { result.add((6) + nullstra); }
            if (valuej2i5.size() == 0) { result.add((6) + nullstrb); }
            if (valuej3i5.size() == 0) { result.add((6) + nullstrc); }
            if (valuej1i6.size() == 0) { result.add((7) + nullstra); }
            if (valuej2i6.size() == 0) { result.add((7) + nullstrb); }
            if (valuej3i6.size() == 0) { result.add((7) + nullstrc); }
            if (valuej1i7.size() == 0) { result.add((8) + nullstra); }
            if (valuej2i7.size() == 0) { result.add((8) + nullstrb); }
            if (valuej3i7.size() == 0) { result.add((8) + nullstrc); }
            if (valuej1i8.size() == 0) { result.add((9) + nullstra); }
            if (valuej2i8.size() == 0) { result.add((9) + nullstrb); }
            if (valuej3i8.size() == 0) { result.add((9) + nullstrc); }
            if (valuej1i9.size() == 0) { result.add((10) + nullstra); }
            if (valuej2i9.size() == 0) { result.add((10) + nullstrb); }
            if (valuej3i9.size() == 0) { result.add((10) + nullstrc); }
            if (valuej1i10.size() == 0) { result.add((11) + nullstra); }
            if (valuej2i10.size() == 0) { result.add((11) + nullstrb); }
            if (valuej3i10.size() == 0) { result.add((11) + nullstrc); }
            if (valuej1i11.size() == 0) { result.add((12) + nullstra); }
            if (valuej2i11.size() == 0) { result.add((12) + nullstrb); }
            if (valuej3i11.size() == 0) { result.add((12) + nullstrc); }
            if (valuej1i12.size() == 0) { result.add((13) + nullstra); }
            if (valuej2i12.size() == 0) { result.add((13) + nullstrb); }
            if (valuej3i12.size() == 0) { result.add((13) + nullstrc); }
            if (valuej1i13.size() == 0) { result.add((14) + nullstra); }
            if (valuej2i13.size() == 0) { result.add((14) + nullstrb); }
            if (valuej3i13.size() == 0) { result.add((14) + nullstrc); }
            if (valuej1i14.size() == 0) { result.add((15) + nullstra); }
            if (valuej2i14.size() == 0) { result.add((15) + nullstrb); }
            if (valuej3i14.size() == 0) { result.add((15) + nullstrc); }
            if (valuej1i15.size() == 0) { result.add((16) + nullstra); }
            if (valuej2i15.size() == 0) { result.add((16) + nullstrb); }
            if (valuej3i15.size() == 0) { result.add((16) + nullstrc); }
            if (valuej1i16.size() == 0) { result.add((17) + nullstra); }
            if (valuej2i16.size() == 0) { result.add((17) + nullstrb); }
            if (valuej3i16.size() == 0) { result.add((17) + nullstrc); }
            if (valuej1i17.size() == 0) { result.add((18) + nullstra); }
            if (valuej2i17.size() == 0) { result.add((18) + nullstrb); }
            if (valuej3i17.size() == 0) { result.add((18) + nullstrc); }
            if (valuej1i18.size() == 0) { result.add((19) + nullstra); }
            if (valuej2i18.size() == 0) { result.add((19) + nullstrb); }
            if (valuej3i18.size() == 0) { result.add((19) + nullstrc); }
            if (valuej1i19.size() == 0) { result.add((20) + nullstra); }
            if (valuej2i19.size() == 0) { result.add((20) + nullstrb); }
            if (valuej3i19.size() == 0) { result.add((20) + nullstrc); }
            if (valuej1i20.size() == 0) { result.add((21) + nullstra); }
            if (valuej2i20.size() == 0) { result.add((21) + nullstrb); }
            if (valuej3i20.size() == 0) { result.add((21) + nullstrc); }
            if (valuej1i21.size() == 0) { result.add((22) + nullstra); }
            if (valuej2i21.size() == 0) { result.add((22) + nullstrb); }
            if (valuej3i21.size() == 0) { result.add((22) + nullstrc); }
            if (valuej1i22.size() == 0) { result.add((23) + nullstra); }
            if (valuej2i22.size() == 0) { result.add((23) + nullstrb); }
            if (valuej3i22.size() == 0) { result.add((23) + nullstrc); }
            if (valuej1i23.size() == 0) { result.add((24) + nullstra); }
            if (valuej2i23.size() == 0) { result.add((24) + nullstrb); }
            if (valuej3i23.size() == 0) { result.add((24) + nullstrc); }
            if (valuej1i24.size() == 0) { result.add((25) + nullstra); }
            if (valuej2i24.size() == 0) { result.add((25) + nullstrb); }
            if (valuej3i24.size() == 0) { result.add((25) + nullstrc); }
            if (valuej1i25.size() == 0) { result.add((26) + nullstra); }
            if (valuej2i25.size() == 0) { result.add((26) + nullstrb); }
            if (valuej3i25.size() == 0) { result.add((26) + nullstrc); }
            if (valuej1i26.size() == 0) { result.add((27) + nullstra); }
            if (valuej2i26.size() == 0) { result.add((27) + nullstrb); }
            if (valuej3i26.size() == 0) { result.add((27) + nullstrc); }
            if (valuej1i27.size() == 0) { result.add((28) + nullstra); }
            if (valuej2i27.size() == 0) { result.add((28) + nullstrb); }
            if (valuej3i27.size() == 0) { result.add((28) + nullstrc); }
            if (valuej1i28.size() == 0) { result.add((29) + nullstra); }
            if (valuej2i28.size() == 0) { result.add((29) + nullstrb); }
            if (valuej3i28.size() == 0) { result.add((29) + nullstrc); }
            if (valuej1i29.size() == 0) { result.add((30) + nullstra); }
            if (valuej2i29.size() == 0) { result.add((30) + nullstrb); }
            if (valuej3i29.size() == 0) { result.add((30) + nullstrc); }
            if (valuej1i30.size() == 0) { result.add((31) + nullstra); }
            if (valuej2i30.size() == 0) { result.add((31) + nullstrb); }
            if (valuej3i30.size() == 0) { result.add((31) + nullstrc); }
            if (valuej1i31.size() == 0) { result.add((32) + nullstra); }
            if (valuej2i31.size() == 0) { result.add((32) + nullstrb); }
            if (valuej3i31.size() == 0) { result.add((32) + nullstrc); }
            if (valuej1i32.size() == 0) { result.add((33) + nullstra); }
            if (valuej2i32.size() == 0) { result.add((33) + nullstrb); }
            if (valuej3i32.size() == 0) { result.add((33) + nullstrc); }
            if (valuej1i33.size() == 0) { result.add((34) + nullstra); }
            if (valuej2i33.size() == 0) { result.add((34) + nullstrb); }
            if (valuej3i33.size() == 0) { result.add((34) + nullstrc); }
            if (valuej1i34.size() == 0) { result.add((35) + nullstra); }
            if (valuej2i34.size() == 0) { result.add((35) + nullstrb); }
            if (valuej3i34.size() == 0) { result.add((35) + nullstrc); }
            if (valuej1i35.size() == 0) { result.add((36) + nullstra); }
            if (valuej2i35.size() == 0) { result.add((36) + nullstrb); }
            if (valuej3i35.size() == 0) { result.add((36) + nullstrc); }
            if (valuej1i36.size() == 0) { result.add((37) + nullstra); }
            if (valuej2i36.size() == 0) { result.add((37) + nullstrb); }
            if (valuej3i36.size() == 0) { result.add((37) + nullstrc); }
            if (valuej1i37.size() == 0) { result.add((38) + nullstra); }
            if (valuej2i37.size() == 0) { result.add((38) + nullstrb); }
            if (valuej3i37.size() == 0) { result.add((38) + nullstrc); }
            if (valuej1i38.size() == 0) { result.add((39) + nullstra); }
            if (valuej2i38.size() == 0) { result.add((39) + nullstrb); }
            if (valuej3i38.size() == 0) { result.add((39) + nullstrc); }
            if (valuej1i39.size() == 0) { result.add((40) + nullstra); }
            if (valuej2i39.size() == 0) { result.add((40) + nullstrb); }
            if (valuej3i39.size() == 0) { result.add((40) + nullstrc); }
            if (valuej1i40.size() == 0) { result.add((41) + nullstra); }
            if (valuej2i40.size() == 0) { result.add((41) + nullstrb); }
            if (valuej3i40.size() == 0) { result.add((41) + nullstrc); }
            if (valuej1i41.size() == 0) { result.add((42) + nullstra); }
            if (valuej2i41.size() == 0) { result.add((42) + nullstrb); }
            if (valuej3i41.size() == 0) { result.add((42) + nullstrc); }
            if (valuej1i42.size() == 0) { result.add((43) + nullstra); }
            if (valuej2i42.size() == 0) { result.add((43) + nullstrb); }
            if (valuej3i42.size() == 0) { result.add((43) + nullstrc); }
            if (valuej1i43.size() == 0) { result.add((44) + nullstra); }
            if (valuej2i43.size() == 0) { result.add((44) + nullstrb); }
            if (valuej3i43.size() == 0) { result.add((44) + nullstrc); }
            if (valuej1i44.size() == 0) { result.add((45) + nullstra); }
            if (valuej2i44.size() == 0) { result.add((45) + nullstrb); }
            if (valuej3i44.size() == 0) { result.add((45) + nullstrc); }
            if (valuej1i45.size() == 0) { result.add((46) + nullstra); }
            if (valuej2i45.size() == 0) { result.add((46) + nullstrb); }
            if (valuej3i45.size() == 0) { result.add((46) + nullstrc); }
            if (valuej1i46.size() == 0) { result.add((47) + nullstra); }
            if (valuej2i46.size() == 0) { result.add((47) + nullstrb); }
            if (valuej3i46.size() == 0) { result.add((47) + nullstrc); }
            if (valuej1i47.size() == 0) { result.add((48) + nullstra); }
            if (valuej2i47.size() == 0) { result.add((48) + nullstrb); }
            if (valuej3i47.size() == 0) { result.add((48) + nullstrc); }
            if (valuej1i48.size() == 0) { result.add((49) + nullstra); }
            if (valuej2i48.size() == 0) { result.add((49) + nullstrb); }
            if (valuej3i48.size() == 0) { result.add((49) + nullstrc); }
            if (valuej1i49.size() == 0) { result.add((50) + nullstra); }
            if (valuej2i49.size() == 0) { result.add((50) + nullstrb); }
            if (valuej3i49.size() == 0) { result.add((50) + nullstrc); }
            if (valuej1i50.size() == 0) { result.add((51) + nullstra); }
            if (valuej2i50.size() == 0) { result.add((51) + nullstrb); }
            if (valuej3i50.size() == 0) { result.add((51) + nullstrc); }

            if (valuej1i2.size() > 0) { result.add((3) + "," + state1 + "," + getMax(valuej1i2) + "," + getMin(valuej1i2) + "," + getAve(valuej1i2) + "," + get95p(valuej1i2)); }
            if (valuej2i2.size() > 0) { result.add((3) + "," + state2 + "," + getMax(valuej2i2) + "," + getMin(valuej2i2) + "," + getAve(valuej2i2) + "," + get95p(valuej2i2)); }
            if (valuej3i2.size() > 0) { result.add((3) + "," + state3 + "," + getMax(valuej3i2) + "," + getMin(valuej3i2) + "," + getAve(valuej3i2) + "," + get95p(valuej3i2)); }
            if (valuej1i3.size() > 0) { result.add((4) + "," + state1 + "," + getMax(valuej1i3) + "," + getMin(valuej1i3) + "," + getAve(valuej1i3) + "," + get95p(valuej1i3)); }
            if (valuej2i3.size() > 0) { result.add((4) + "," + state2 + "," + getMax(valuej2i3) + "," + getMin(valuej2i3) + "," + getAve(valuej2i3) + "," + get95p(valuej2i3)); }
            if (valuej3i3.size() > 0) { result.add((4) + "," + state3 + "," + getMax(valuej3i3) + "," + getMin(valuej3i3) + "," + getAve(valuej3i3) + "," + get95p(valuej3i3)); }
            if (valuej1i4.size() > 0) { result.add((5) + "," + state1 + "," + getMax(valuej1i4) + "," + getMin(valuej1i4) + "," + getAve(valuej1i4) + "," + get95p(valuej1i4)); }
            if (valuej2i4.size() > 0) { result.add((5) + "," + state2 + "," + getMax(valuej2i4) + "," + getMin(valuej2i4) + "," + getAve(valuej2i4) + "," + get95p(valuej2i4)); }
            if (valuej3i4.size() > 0) { result.add((5) + "," + state3 + "," + getMax(valuej3i4) + "," + getMin(valuej3i4) + "," + getAve(valuej3i4) + "," + get95p(valuej3i4)); }
            if (valuej1i5.size() > 0) { result.add((6) + "," + state1 + "," + getMax(valuej1i5) + "," + getMin(valuej1i5) + "," + getAve(valuej1i5) + "," + get95p(valuej1i5)); }
            if (valuej2i5.size() > 0) { result.add((6) + "," + state2 + "," + getMax(valuej2i5) + "," + getMin(valuej2i5) + "," + getAve(valuej2i5) + "," + get95p(valuej2i5)); }
            if (valuej3i5.size() > 0) { result.add((6) + "," + state3 + "," + getMax(valuej3i5) + "," + getMin(valuej3i5) + "," + getAve(valuej3i5) + "," + get95p(valuej3i5)); }
            if (valuej1i6.size() > 0) { result.add((7) + "," + state1 + "," + getMax(valuej1i6) + "," + getMin(valuej1i6) + "," + getAve(valuej1i6) + "," + get95p(valuej1i6)); }
            if (valuej2i6.size() > 0) { result.add((7) + "," + state2 + "," + getMax(valuej2i6) + "," + getMin(valuej2i6) + "," + getAve(valuej2i6) + "," + get95p(valuej2i6)); }
            if (valuej3i6.size() > 0) { result.add((7) + "," + state3 + "," + getMax(valuej3i6) + "," + getMin(valuej3i6) + "," + getAve(valuej3i6) + "," + get95p(valuej3i6)); }
            if (valuej1i7.size() > 0) { result.add((8) + "," + state1 + "," + getMax(valuej1i7) + "," + getMin(valuej1i7) + "," + getAve(valuej1i7) + "," + get95p(valuej1i7)); }
            if (valuej2i7.size() > 0) { result.add((8) + "," + state2 + "," + getMax(valuej2i7) + "," + getMin(valuej2i7) + "," + getAve(valuej2i7) + "," + get95p(valuej2i7)); }
            if (valuej3i7.size() > 0) { result.add((8) + "," + state3 + "," + getMax(valuej3i7) + "," + getMin(valuej3i7) + "," + getAve(valuej3i7) + "," + get95p(valuej3i7)); }
            if (valuej1i8.size() > 0) { result.add((9) + "," + state1 + "," + getMax(valuej1i8) + "," + getMin(valuej1i8) + "," + getAve(valuej1i8) + "," + get95p(valuej1i8)); }
            if (valuej2i8.size() > 0) { result.add((9) + "," + state2 + "," + getMax(valuej2i8) + "," + getMin(valuej2i8) + "," + getAve(valuej2i8) + "," + get95p(valuej2i8)); }
            if (valuej3i8.size() > 0) { result.add((9) + "," + state3 + "," + getMax(valuej3i8) + "," + getMin(valuej3i8) + "," + getAve(valuej3i8) + "," + get95p(valuej3i8)); }
            if (valuej1i9.size() > 0) { result.add((10) + "," + state1 + "," + getMax(valuej1i9) + "," + getMin(valuej1i9) + "," + getAve(valuej1i9) + "," + get95p(valuej1i9)); }
            if (valuej2i9.size() > 0) { result.add((10) + "," + state2 + "," + getMax(valuej2i9) + "," + getMin(valuej2i9) + "," + getAve(valuej2i9) + "," + get95p(valuej2i9)); }
            if (valuej3i9.size() > 0) { result.add((10) + "," + state3 + "," + getMax(valuej3i9) + "," + getMin(valuej3i9) + "," + getAve(valuej3i9) + "," + get95p(valuej3i9)); }
            if (valuej1i10.size() > 0) { result.add((11) + "," + state1 + "," + getMax(valuej1i10) + "," + getMin(valuej1i10) + "," + getAve(valuej1i10) + "," + get95p(valuej1i10)); }
            if (valuej2i10.size() > 0) { result.add((11) + "," + state2 + "," + getMax(valuej2i10) + "," + getMin(valuej2i10) + "," + getAve(valuej2i10) + "," + get95p(valuej2i10)); }
            if (valuej3i10.size() > 0) { result.add((11) + "," + state3 + "," + getMax(valuej3i10) + "," + getMin(valuej3i10) + "," + getAve(valuej3i10) + "," + get95p(valuej3i10)); }

            if (valuej1i11.size() > 0) { result.add((12) + "," + state1 + "," + getMax(valuej1i11) + "," + getMin(valuej1i11) + "," + getAve(valuej1i11) + "," + get95p(valuej1i11)); }
            if (valuej2i11.size() > 0) { result.add((12) + "," + state2 + "," + getMax(valuej2i11) + "," + getMin(valuej2i11) + "," + getAve(valuej2i11) + "," + get95p(valuej2i11)); }
            if (valuej3i11.size() > 0) { result.add((12) + "," + state3 + "," + getMax(valuej3i11) + "," + getMin(valuej3i11) + "," + getAve(valuej3i11) + "," + get95p(valuej3i11)); }
            if (valuej1i12.size() > 0) { result.add((13) + "," + state1 + "," + getMax(valuej1i12) + "," + getMin(valuej1i12) + "," + getAve(valuej1i12) + "," + get95p(valuej1i12)); }
            if (valuej2i12.size() > 0) { result.add((13) + "," + state2 + "," + getMax(valuej2i12) + "," + getMin(valuej2i12) + "," + getAve(valuej2i12) + "," + get95p(valuej2i12)); }
            if (valuej3i12.size() > 0) { result.add((13) + "," + state3 + "," + getMax(valuej3i12) + "," + getMin(valuej3i12) + "," + getAve(valuej3i12) + "," + get95p(valuej3i12)); }
            if (valuej1i13.size() > 0) { result.add((14) + "," + state1 + "," + getMax(valuej1i13) + "," + getMin(valuej1i13) + "," + getAve(valuej1i13) + "," + get95p(valuej1i13)); }
            if (valuej2i13.size() > 0) { result.add((14) + "," + state2 + "," + getMax(valuej2i13) + "," + getMin(valuej2i13) + "," + getAve(valuej2i13) + "," + get95p(valuej2i13)); }
            if (valuej3i13.size() > 0) { result.add((14) + "," + state3 + "," + getMax(valuej3i13) + "," + getMin(valuej3i13) + "," + getAve(valuej3i13) + "," + get95p(valuej3i13)); }
            if (valuej1i14.size() > 0) { result.add((15) + "," + state1 + "," + getMax(valuej1i14) + "," + getMin(valuej1i14) + "," + getAve(valuej1i14) + "," + get95p(valuej1i14)); }
            if (valuej2i14.size() > 0) { result.add((15) + "," + state2 + "," + getMax(valuej2i14) + "," + getMin(valuej2i14) + "," + getAve(valuej2i14) + "," + get95p(valuej2i14)); }
            if (valuej3i14.size() > 0) { result.add((15) + "," + state3 + "," + getMax(valuej3i14) + "," + getMin(valuej3i14) + "," + getAve(valuej3i14) + "," + get95p(valuej3i14)); }
            if (valuej1i15.size() > 0) { result.add((16) + "," + state1 + "," + getMax(valuej1i15) + "," + getMin(valuej1i15) + "," + getAve(valuej1i15) + "," + get95p(valuej1i15)); }
            if (valuej2i15.size() > 0) { result.add((16) + "," + state2 + "," + getMax(valuej2i15) + "," + getMin(valuej2i15) + "," + getAve(valuej2i15) + "," + get95p(valuej2i15)); }
            if (valuej3i15.size() > 0) { result.add((16) + "," + state3 + "," + getMax(valuej3i15) + "," + getMin(valuej3i15) + "," + getAve(valuej3i15) + "," + get95p(valuej3i15)); }
            if (valuej1i16.size() > 0) { result.add((17) + "," + state1 + "," + getMax(valuej1i16) + "," + getMin(valuej1i16) + "," + getAve(valuej1i16) + "," + get95p(valuej1i16)); }
            if (valuej2i16.size() > 0) { result.add((17) + "," + state2 + "," + getMax(valuej2i16) + "," + getMin(valuej2i16) + "," + getAve(valuej2i16) + "," + get95p(valuej2i16)); }
            if (valuej3i16.size() > 0) { result.add((17) + "," + state3 + "," + getMax(valuej3i16) + "," + getMin(valuej3i16) + "," + getAve(valuej3i16) + "," + get95p(valuej3i16)); }
            if (valuej1i17.size() > 0) { result.add((18) + "," + state1 + "," + getMax(valuej1i17) + "," + getMin(valuej1i17) + "," + getAve(valuej1i17) + "," + get95p(valuej1i17)); }
            if (valuej2i17.size() > 0) { result.add((18) + "," + state2 + "," + getMax(valuej2i17) + "," + getMin(valuej2i17) + "," + getAve(valuej2i17) + "," + get95p(valuej2i17)); }
            if (valuej3i17.size() > 0) { result.add((18) + "," + state3 + "," + getMax(valuej3i17) + "," + getMin(valuej3i17) + "," + getAve(valuej3i17) + "," + get95p(valuej3i17)); }
            if (valuej1i18.size() > 0) { result.add((19) + "," + state1 + "," + getMax(valuej1i18) + "," + getMin(valuej1i18) + "," + getAve(valuej1i18) + "," + get95p(valuej1i18)); }
            if (valuej2i18.size() > 0) { result.add((19) + "," + state2 + "," + getMax(valuej2i18) + "," + getMin(valuej2i18) + "," + getAve(valuej2i18) + "," + get95p(valuej2i18)); }
            if (valuej3i18.size() > 0) { result.add((19) + "," + state3 + "," + getMax(valuej3i18) + "," + getMin(valuej3i18) + "," + getAve(valuej3i18) + "," + get95p(valuej3i18)); }
            if (valuej1i19.size() > 0) { result.add((20) + "," + state1 + "," + getMax(valuej1i19) + "," + getMin(valuej1i19) + "," + getAve(valuej1i19) + "," + get95p(valuej1i19)); }
            if (valuej2i19.size() > 0) { result.add((20) + "," + state2 + "," + getMax(valuej2i19) + "," + getMin(valuej2i19) + "," + getAve(valuej2i19) + "," + get95p(valuej2i19)); }
            if (valuej3i19.size() > 0) { result.add((20) + "," + state3 + "," + getMax(valuej3i19) + "," + getMin(valuej3i19) + "," + getAve(valuej3i19) + "," + get95p(valuej3i19)); }
            if (valuej1i20.size() > 0) { result.add((21) + "," + state1 + "," + getMax(valuej1i20) + "," + getMin(valuej1i20) + "," + getAve(valuej1i20) + "," + get95p(valuej1i20)); }
            if (valuej2i20.size() > 0) { result.add((21) + "," + state2 + "," + getMax(valuej2i20) + "," + getMin(valuej2i20) + "," + getAve(valuej2i20) + "," + get95p(valuej2i20)); }
            if (valuej3i20.size() > 0) { result.add((21) + "," + state3 + "," + getMax(valuej3i20) + "," + getMin(valuej3i20) + "," + getAve(valuej3i20) + "," + get95p(valuej3i20)); }

            if (valuej1i21.size() > 0) { result.add((22) + "," + state1 + "," + getMax(valuej1i21) + "," + getMin(valuej1i21) + "," + getAve(valuej1i21) + "," + get95p(valuej1i21)); }
            if (valuej2i21.size() > 0) { result.add((22) + "," + state2 + "," + getMax(valuej2i21) + "," + getMin(valuej2i21) + "," + getAve(valuej2i21) + "," + get95p(valuej2i21)); }
            if (valuej3i21.size() > 0) { result.add((22) + "," + state3 + "," + getMax(valuej3i21) + "," + getMin(valuej3i21) + "," + getAve(valuej3i21) + "," + get95p(valuej3i21)); }
            if (valuej1i22.size() > 0) { result.add((23) + "," + state1 + "," + getMax(valuej1i22) + "," + getMin(valuej1i22) + "," + getAve(valuej1i22) + "," + get95p(valuej1i22)); }
            if (valuej2i22.size() > 0) { result.add((23) + "," + state2 + "," + getMax(valuej2i22) + "," + getMin(valuej2i22) + "," + getAve(valuej2i22) + "," + get95p(valuej2i22)); }
            if (valuej3i22.size() > 0) { result.add((23) + "," + state3 + "," + getMax(valuej3i22) + "," + getMin(valuej3i22) + "," + getAve(valuej3i22) + "," + get95p(valuej3i22)); }
            if (valuej1i23.size() > 0) { result.add((24) + "," + state1 + "," + getMax(valuej1i23) + "," + getMin(valuej1i23) + "," + getAve(valuej1i23) + "," + get95p(valuej1i23)); }
            if (valuej2i23.size() > 0) { result.add((24) + "," + state2 + "," + getMax(valuej2i23) + "," + getMin(valuej2i23) + "," + getAve(valuej2i23) + "," + get95p(valuej2i23)); }
            if (valuej3i23.size() > 0) { result.add((24) + "," + state3 + "," + getMax(valuej3i23) + "," + getMin(valuej3i23) + "," + getAve(valuej3i23) + "," + get95p(valuej3i23)); }
            if (valuej1i24.size() > 0) { result.add((25) + "," + state1 + "," + getMax(valuej1i24) + "," + getMin(valuej1i24) + "," + getAve(valuej1i24) + "," + get95p(valuej1i24)); }
            if (valuej2i24.size() > 0) { result.add((25) + "," + state2 + "," + getMax(valuej2i24) + "," + getMin(valuej2i24) + "," + getAve(valuej2i24) + "," + get95p(valuej2i24)); }
            if (valuej3i24.size() > 0) { result.add((25) + "," + state3 + "," + getMax(valuej3i24) + "," + getMin(valuej3i24) + "," + getAve(valuej3i24) + "," + get95p(valuej3i24)); }
            if (valuej1i25.size() > 0) { result.add((26) + "," + state1 + "," + getMax(valuej1i25) + "," + getMin(valuej1i25) + "," + getAve(valuej1i25) + "," + get95p(valuej1i25)); }
            if (valuej2i25.size() > 0) { result.add((26) + "," + state2 + "," + getMax(valuej2i25) + "," + getMin(valuej2i25) + "," + getAve(valuej2i25) + "," + get95p(valuej2i25)); }
            if (valuej3i25.size() > 0) { result.add((26) + "," + state3 + "," + getMax(valuej3i25) + "," + getMin(valuej3i25) + "," + getAve(valuej3i25) + "," + get95p(valuej3i25)); }
            if (valuej1i26.size() > 0) { result.add((27) + "," + state1 + "," + getMax(valuej1i26) + "," + getMin(valuej1i26) + "," + getAve(valuej1i26) + "," + get95p(valuej1i26)); }
            if (valuej2i26.size() > 0) { result.add((27) + "," + state2 + "," + getMax(valuej2i26) + "," + getMin(valuej2i26) + "," + getAve(valuej2i26) + "," + get95p(valuej2i26)); }
            if (valuej3i26.size() > 0) { result.add((27) + "," + state3 + "," + getMax(valuej3i26) + "," + getMin(valuej3i26) + "," + getAve(valuej3i26) + "," + get95p(valuej3i26)); }
            if (valuej1i27.size() > 0) { result.add((28) + "," + state1 + "," + getMax(valuej1i27) + "," + getMin(valuej1i27) + "," + getAve(valuej1i27) + "," + get95p(valuej1i27)); }
            if (valuej2i27.size() > 0) { result.add((28) + "," + state2 + "," + getMax(valuej2i27) + "," + getMin(valuej2i27) + "," + getAve(valuej2i27) + "," + get95p(valuej2i27)); }
            if (valuej3i27.size() > 0) { result.add((28) + "," + state3 + "," + getMax(valuej3i27) + "," + getMin(valuej3i27) + "," + getAve(valuej3i27) + "," + get95p(valuej3i27)); }
            if (valuej1i28.size() > 0) { result.add((29) + "," + state1 + "," + getMax(valuej1i28) + "," + getMin(valuej1i28) + "," + getAve(valuej1i28) + "," + get95p(valuej1i28)); }
            if (valuej2i28.size() > 0) { result.add((29) + "," + state2 + "," + getMax(valuej2i28) + "," + getMin(valuej2i28) + "," + getAve(valuej2i28) + "," + get95p(valuej2i28)); }
            if (valuej3i28.size() > 0) { result.add((29) + "," + state3 + "," + getMax(valuej3i28) + "," + getMin(valuej3i28) + "," + getAve(valuej3i28) + "," + get95p(valuej3i28)); }
            if (valuej1i29.size() > 0) { result.add((30) + "," + state1 + "," + getMax(valuej1i29) + "," + getMin(valuej1i29) + "," + getAve(valuej1i29) + "," + get95p(valuej1i29)); }
            if (valuej2i29.size() > 0) { result.add((30) + "," + state2 + "," + getMax(valuej2i29) + "," + getMin(valuej2i29) + "," + getAve(valuej2i29) + "," + get95p(valuej2i29)); }
            if (valuej3i29.size() > 0) { result.add((30) + "," + state3 + "," + getMax(valuej3i29) + "," + getMin(valuej3i29) + "," + getAve(valuej3i29) + "," + get95p(valuej3i29)); }
            if (valuej1i30.size() > 0) { result.add((31) + "," + state1 + "," + getMax(valuej1i30) + "," + getMin(valuej1i30) + "," + getAve(valuej1i30) + "," + get95p(valuej1i30)); }
            if (valuej2i30.size() > 0) { result.add((31) + "," + state2 + "," + getMax(valuej2i30) + "," + getMin(valuej2i30) + "," + getAve(valuej2i30) + "," + get95p(valuej2i30)); }
            if (valuej3i30.size() > 0) { result.add((31) + "," + state3 + "," + getMax(valuej3i30) + "," + getMin(valuej3i30) + "," + getAve(valuej3i30) + "," + get95p(valuej3i30)); }

            if (valuej1i31.size() > 0) { result.add((32) + "," + state1 + "," + getMax(valuej1i31) + "," + getMin(valuej1i31) + "," + getAve(valuej1i31) + "," + get95p(valuej1i31)); }
            if (valuej2i31.size() > 0) { result.add((32) + "," + state2 + "," + getMax(valuej2i31) + "," + getMin(valuej2i31) + "," + getAve(valuej2i31) + "," + get95p(valuej2i31)); }
            if (valuej3i31.size() > 0) { result.add((32) + "," + state3 + "," + getMax(valuej3i31) + "," + getMin(valuej3i31) + "," + getAve(valuej3i31) + "," + get95p(valuej3i31)); }
            if (valuej1i32.size() > 0) { result.add((33) + "," + state1 + "," + getMax(valuej1i32) + "," + getMin(valuej1i32) + "," + getAve(valuej1i32) + "," + get95p(valuej1i32)); }
            if (valuej2i32.size() > 0) { result.add((33) + "," + state2 + "," + getMax(valuej2i32) + "," + getMin(valuej2i32) + "," + getAve(valuej2i32) + "," + get95p(valuej2i32)); }
            if (valuej3i32.size() > 0) { result.add((33) + "," + state3 + "," + getMax(valuej3i32) + "," + getMin(valuej3i32) + "," + getAve(valuej3i32) + "," + get95p(valuej3i32)); }
            if (valuej1i33.size() > 0) { result.add((34) + "," + state1 + "," + getMax(valuej1i33) + "," + getMin(valuej1i33) + "," + getAve(valuej1i33) + "," + get95p(valuej1i33)); }
            if (valuej2i33.size() > 0) { result.add((34) + "," + state2 + "," + getMax(valuej2i33) + "," + getMin(valuej2i33) + "," + getAve(valuej2i33) + "," + get95p(valuej2i33)); }
            if (valuej3i33.size() > 0) { result.add((34) + "," + state3 + "," + getMax(valuej3i33) + "," + getMin(valuej3i33) + "," + getAve(valuej3i33) + "," + get95p(valuej3i33)); }
            if (valuej1i34.size() > 0) { result.add((35) + "," + state1 + "," + getMax(valuej1i34) + "," + getMin(valuej1i34) + "," + getAve(valuej1i34) + "," + get95p(valuej1i34)); }
            if (valuej2i34.size() > 0) { result.add((35) + "," + state2 + "," + getMax(valuej2i34) + "," + getMin(valuej2i34) + "," + getAve(valuej2i34) + "," + get95p(valuej2i34)); }
            if (valuej3i34.size() > 0) { result.add((35) + "," + state3 + "," + getMax(valuej3i34) + "," + getMin(valuej3i34) + "," + getAve(valuej3i34) + "," + get95p(valuej3i34)); }
            if (valuej1i35.size() > 0) { result.add((36) + "," + state1 + "," + getMax(valuej1i35) + "," + getMin(valuej1i35) + "," + getAve(valuej1i35) + "," + get95p(valuej1i35)); }
            if (valuej2i35.size() > 0) { result.add((36) + "," + state2 + "," + getMax(valuej2i35) + "," + getMin(valuej2i35) + "," + getAve(valuej2i35) + "," + get95p(valuej2i35)); }
            if (valuej3i35.size() > 0) { result.add((36) + "," + state3 + "," + getMax(valuej3i35) + "," + getMin(valuej3i35) + "," + getAve(valuej3i35) + "," + get95p(valuej3i35)); }
            if (valuej1i36.size() > 0) { result.add((37) + "," + state1 + "," + getMax(valuej1i36) + "," + getMin(valuej1i36) + "," + getAve(valuej1i36) + "," + get95p(valuej1i36)); }
            if (valuej2i36.size() > 0) { result.add((37) + "," + state2 + "," + getMax(valuej2i36) + "," + getMin(valuej2i36) + "," + getAve(valuej2i36) + "," + get95p(valuej2i36)); }
            if (valuej3i36.size() > 0) { result.add((37) + "," + state3 + "," + getMax(valuej3i36) + "," + getMin(valuej3i36) + "," + getAve(valuej3i36) + "," + get95p(valuej3i36)); }
            if (valuej1i37.size() > 0) { result.add((38) + "," + state1 + "," + getMax(valuej1i37) + "," + getMin(valuej1i37) + "," + getAve(valuej1i37) + "," + get95p(valuej1i37)); }
            if (valuej2i37.size() > 0) { result.add((38) + "," + state2 + "," + getMax(valuej2i37) + "," + getMin(valuej2i37) + "," + getAve(valuej2i37) + "," + get95p(valuej2i37)); }
            if (valuej3i37.size() > 0) { result.add((38) + "," + state3 + "," + getMax(valuej3i37) + "," + getMin(valuej3i37) + "," + getAve(valuej3i37) + "," + get95p(valuej3i37)); }
            if (valuej1i38.size() > 0) { result.add((39) + "," + state1 + "," + getMax(valuej1i38) + "," + getMin(valuej1i38) + "," + getAve(valuej1i38) + "," + get95p(valuej1i38)); }
            if (valuej2i38.size() > 0) { result.add((39) + "," + state2 + "," + getMax(valuej2i38) + "," + getMin(valuej2i38) + "," + getAve(valuej2i38) + "," + get95p(valuej2i38)); }
            if (valuej3i38.size() > 0) { result.add((39) + "," + state3 + "," + getMax(valuej3i38) + "," + getMin(valuej3i38) + "," + getAve(valuej3i38) + "," + get95p(valuej3i38)); }
            if (valuej1i39.size() > 0) { result.add((40) + "," + state1 + "," + getMax(valuej1i39) + "," + getMin(valuej1i39) + "," + getAve(valuej1i39) + "," + get95p(valuej1i39)); }
            if (valuej2i39.size() > 0) { result.add((40) + "," + state2 + "," + getMax(valuej2i39) + "," + getMin(valuej2i39) + "," + getAve(valuej2i39) + "," + get95p(valuej2i39)); }
            if (valuej3i39.size() > 0) { result.add((40) + "," + state3 + "," + getMax(valuej3i39) + "," + getMin(valuej3i39) + "," + getAve(valuej3i39) + "," + get95p(valuej3i39)); }
            if (valuej1i40.size() > 0) { result.add((41) + "," + state1 + "," + getMax(valuej1i40) + "," + getMin(valuej1i40) + "," + getAve(valuej1i40) + "," + get95p(valuej1i40)); }
            if (valuej2i40.size() > 0) { result.add((41) + "," + state2 + "," + getMax(valuej2i40) + "," + getMin(valuej2i40) + "," + getAve(valuej2i40) + "," + get95p(valuej2i40)); }
            if (valuej3i40.size() > 0) { result.add((41) + "," + state3 + "," + getMax(valuej3i40) + "," + getMin(valuej3i40) + "," + getAve(valuej3i40) + "," + get95p(valuej3i40)); }

            if (valuej1i41.size() > 0) { result.add((42) + "," + state1 + "," + getMax(valuej1i41) + "," + getMin(valuej1i41) + "," + getAve(valuej1i41) + "," + get95p(valuej1i41)); }
            if (valuej2i41.size() > 0) { result.add((42) + "," + state2 + "," + getMax(valuej2i41) + "," + getMin(valuej2i41) + "," + getAve(valuej2i41) + "," + get95p(valuej2i41)); }
            if (valuej3i41.size() > 0) { result.add((42) + "," + state3 + "," + getMax(valuej3i41) + "," + getMin(valuej3i41) + "," + getAve(valuej3i41) + "," + get95p(valuej3i41)); }
            if (valuej1i42.size() > 0) { result.add((43) + "," + state1 + "," + getMax(valuej1i42) + "," + getMin(valuej1i42) + "," + getAve(valuej1i42) + "," + get95p(valuej1i42)); }
            if (valuej2i42.size() > 0) { result.add((43) + "," + state2 + "," + getMax(valuej2i42) + "," + getMin(valuej2i42) + "," + getAve(valuej2i42) + "," + get95p(valuej2i42)); }
            if (valuej3i42.size() > 0) { result.add((43) + "," + state3 + "," + getMax(valuej3i42) + "," + getMin(valuej3i42) + "," + getAve(valuej3i42) + "," + get95p(valuej3i42)); }
            if (valuej1i43.size() > 0) { result.add((44) + "," + state1 + "," + getMax(valuej1i43) + "," + getMin(valuej1i43) + "," + getAve(valuej1i43) + "," + get95p(valuej1i43)); }
            if (valuej2i43.size() > 0) { result.add((44) + "," + state2 + "," + getMax(valuej2i43) + "," + getMin(valuej2i43) + "," + getAve(valuej2i43) + "," + get95p(valuej2i43)); }
            if (valuej3i43.size() > 0) { result.add((44) + "," + state3 + "," + getMax(valuej3i43) + "," + getMin(valuej3i43) + "," + getAve(valuej3i43) + "," + get95p(valuej3i43)); }
            if (valuej1i44.size() > 0) { result.add((45) + "," + state1 + "," + getMax(valuej1i44) + "," + getMin(valuej1i44) + "," + getAve(valuej1i44) + "," + get95p(valuej1i44)); }
            if (valuej2i44.size() > 0) { result.add((45) + "," + state2 + "," + getMax(valuej2i44) + "," + getMin(valuej2i44) + "," + getAve(valuej2i44) + "," + get95p(valuej2i44)); }
            if (valuej3i44.size() > 0) { result.add((45) + "," + state3 + "," + getMax(valuej3i44) + "," + getMin(valuej3i44) + "," + getAve(valuej3i44) + "," + get95p(valuej3i44)); }
            if (valuej1i45.size() > 0) { result.add((46) + "," + state1 + "," + getMax(valuej1i45) + "," + getMin(valuej1i45) + "," + getAve(valuej1i45) + "," + get95p(valuej1i45)); }
            if (valuej2i45.size() > 0) { result.add((46) + "," + state2 + "," + getMax(valuej2i45) + "," + getMin(valuej2i45) + "," + getAve(valuej2i45) + "," + get95p(valuej2i45)); }
            if (valuej3i45.size() > 0) { result.add((46) + "," + state3 + "," + getMax(valuej3i45) + "," + getMin(valuej3i45) + "," + getAve(valuej3i45) + "," + get95p(valuej3i45)); }
            if (valuej1i46.size() > 0) { result.add((47) + "," + state1 + "," + getMax(valuej1i46) + "," + getMin(valuej1i46) + "," + getAve(valuej1i46) + "," + get95p(valuej1i46)); }
            if (valuej2i46.size() > 0) { result.add((47) + "," + state2 + "," + getMax(valuej2i46) + "," + getMin(valuej2i46) + "," + getAve(valuej2i46) + "," + get95p(valuej2i46)); }
            if (valuej3i46.size() > 0) { result.add((47) + "," + state3 + "," + getMax(valuej3i46) + "," + getMin(valuej3i46) + "," + getAve(valuej3i46) + "," + get95p(valuej3i46)); }
            if (valuej1i47.size() > 0) { result.add((48) + "," + state1 + "," + getMax(valuej1i47) + "," + getMin(valuej1i47) + "," + getAve(valuej1i47) + "," + get95p(valuej1i47)); }
            if (valuej2i47.size() > 0) { result.add((48) + "," + state2 + "," + getMax(valuej2i47) + "," + getMin(valuej2i47) + "," + getAve(valuej2i47) + "," + get95p(valuej2i47)); }
            if (valuej3i47.size() > 0) { result.add((48) + "," + state3 + "," + getMax(valuej3i47) + "," + getMin(valuej3i47) + "," + getAve(valuej3i47) + "," + get95p(valuej3i47)); }
            if (valuej1i48.size() > 0) { result.add((49) + "," + state1 + "," + getMax(valuej1i48) + "," + getMin(valuej1i48) + "," + getAve(valuej1i48) + "," + get95p(valuej1i48)); }
            if (valuej2i48.size() > 0) { result.add((49) + "," + state2 + "," + getMax(valuej2i48) + "," + getMin(valuej2i48) + "," + getAve(valuej2i48) + "," + get95p(valuej2i48)); }
            if (valuej3i48.size() > 0) { result.add((49) + "," + state3 + "," + getMax(valuej3i48) + "," + getMin(valuej3i48) + "," + getAve(valuej3i48) + "," + get95p(valuej3i48)); }
            if (valuej1i49.size() > 0) { result.add((50) + "," + state1 + "," + getMax(valuej1i49) + "," + getMin(valuej1i49) + "," + getAve(valuej1i49) + "," + get95p(valuej1i49)); }
            if (valuej2i49.size() > 0) { result.add((50) + "," + state2 + "," + getMax(valuej2i49) + "," + getMin(valuej2i49) + "," + getAve(valuej2i49) + "," + get95p(valuej2i49)); }
            if (valuej3i49.size() > 0) { result.add((50) + "," + state3 + "," + getMax(valuej3i49) + "," + getMin(valuej3i49) + "," + getAve(valuej3i49) + "," + get95p(valuej3i49)); }
            if (valuej1i50.size() > 0) { result.add((51) + "," + state1 + "," + getMax(valuej1i50) + "," + getMin(valuej1i50) + "," + getAve(valuej1i50) + "," + get95p(valuej1i50)); }
            if (valuej2i50.size() > 0) { result.add((51) + "," + state2 + "," + getMax(valuej2i50) + "," + getMin(valuej2i50) + "," + getAve(valuej2i50) + "," + get95p(valuej2i50)); }
            if (valuej3i50.size() > 0) { result.add((51) + "," + state3 + "," + getMax(valuej3i50) + "," + getMin(valuej3i50) + "," + getAve(valuej3i50) + "," + get95p(valuej3i50)); }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHCresultBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
                    String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";

                    List<PowerxbMonitor> pblist = hbsessionDao.search(sql);

                    for (int pbidx = 0; pbidx < pblist.size(); pbidx++) {
                        PowerxbMonitor obj = pblist.get(pbidx);

                        double dvaluej1i2 = obj.getI1Va2();
                        double dvaluej2i2 = obj.getI2Va2();
                        double dvaluej3i2 = obj.getI3Va2();
                        double dvaluej1i3 = obj.getI1Va3();
                        double dvaluej2i3 = obj.getI2Va3();
                        double dvaluej3i3 = obj.getI3Va3();
                        double dvaluej1i4 = obj.getI1Va4();
                        double dvaluej2i4 = obj.getI2Va4();
                        double dvaluej3i4 = obj.getI3Va4();
                        double dvaluej1i5 = obj.getI1Va5();
                        double dvaluej2i5 = obj.getI2Va5();
                        double dvaluej3i5 = obj.getI3Va5();
                        double dvaluej1i6 = obj.getI1Va6();
                        double dvaluej2i6 = obj.getI2Va6();
                        double dvaluej3i6 = obj.getI3Va6();
                        double dvaluej1i7 = obj.getI1Va7();
                        double dvaluej2i7 = obj.getI2Va7();
                        double dvaluej3i7 = obj.getI3Va7();
                        double dvaluej1i8 = obj.getI1Va8();
                        double dvaluej2i8 = obj.getI2Va8();
                        double dvaluej3i8 = obj.getI3Va8();
                        double dvaluej1i9 = obj.getI1Va9();
                        double dvaluej2i9 = obj.getI2Va9();
                        double dvaluej3i9 = obj.getI3Va9();
                        double dvaluej1i10 = obj.getI1Va10();
                        double dvaluej2i10 = obj.getI2Va10();
                        double dvaluej3i10 = obj.getI3Va10();

                        double dvaluej1i11 = obj.getI1Va11();
                        double dvaluej2i11 = obj.getI2Va11();
                        double dvaluej3i11 = obj.getI3Va11();
                        double dvaluej1i12 = obj.getI1Va12();
                        double dvaluej2i12 = obj.getI2Va12();
                        double dvaluej3i12 = obj.getI3Va12();
                        double dvaluej1i13 = obj.getI1Va13();
                        double dvaluej2i13 = obj.getI2Va13();
                        double dvaluej3i13 = obj.getI3Va13();
                        double dvaluej1i14 = obj.getI1Va14();
                        double dvaluej2i14 = obj.getI2Va14();
                        double dvaluej3i14 = obj.getI3Va14();
                        double dvaluej1i15 = obj.getI1Va15();
                        double dvaluej2i15 = obj.getI2Va15();
                        double dvaluej3i15 = obj.getI3Va15();
                        double dvaluej1i16 = obj.getI1Va16();
                        double dvaluej2i16 = obj.getI2Va16();
                        double dvaluej3i16 = obj.getI3Va16();
                        double dvaluej1i17 = obj.getI1Va17();
                        double dvaluej2i17 = obj.getI2Va17();
                        double dvaluej3i17 = obj.getI3Va17();
                        double dvaluej1i18 = obj.getI1Va18();
                        double dvaluej2i18 = obj.getI2Va18();
                        double dvaluej3i18 = obj.getI3Va18();
                        double dvaluej1i19 = obj.getI1Va19();
                        double dvaluej2i19 = obj.getI2Va19();
                        double dvaluej3i19 = obj.getI3Va19();
                        double dvaluej1i20 = obj.getI1Va20();
                        double dvaluej2i20 = obj.getI2Va20();
                        double dvaluej3i20 = obj.getI3Va20();

                        double dvaluej1i21 = obj.getI1Va21();
                        double dvaluej2i21 = obj.getI2Va21();
                        double dvaluej3i21 = obj.getI3Va21();
                        double dvaluej1i22 = obj.getI1Va22();
                        double dvaluej2i22 = obj.getI2Va22();
                        double dvaluej3i22 = obj.getI3Va22();
                        double dvaluej1i23 = obj.getI1Va23();
                        double dvaluej2i23 = obj.getI2Va23();
                        double dvaluej3i23 = obj.getI3Va23();
                        double dvaluej1i24 = obj.getI1Va24();
                        double dvaluej2i24 = obj.getI2Va24();
                        double dvaluej3i24 = obj.getI3Va24();
                        double dvaluej1i25 = obj.getI1Va25();
                        double dvaluej2i25 = obj.getI2Va25();
                        double dvaluej3i25 = obj.getI3Va25();
                        double dvaluej1i26 = obj.getI1Va26();
                        double dvaluej2i26 = obj.getI2Va26();
                        double dvaluej3i26 = obj.getI3Va26();
                        double dvaluej1i27 = obj.getI1Va27();
                        double dvaluej2i27 = obj.getI2Va27();
                        double dvaluej3i27 = obj.getI3Va27();
                        double dvaluej1i28 = obj.getI1Va28();
                        double dvaluej2i28 = obj.getI2Va28();
                        double dvaluej3i28 = obj.getI3Va28();
                        double dvaluej1i29 = obj.getI1Va29();
                        double dvaluej2i29 = obj.getI2Va29();
                        double dvaluej3i29 = obj.getI3Va29();
                        double dvaluej1i30 = obj.getI1Va30();
                        double dvaluej2i30 = obj.getI2Va30();
                        double dvaluej3i30 = obj.getI3Va30();

                        double dvaluej1i31 = obj.getI1Va31();
                        double dvaluej2i31 = obj.getI2Va31();
                        double dvaluej3i31 = obj.getI3Va31();
                        double dvaluej1i32 = obj.getI1Va32();
                        double dvaluej2i32 = obj.getI2Va32();
                        double dvaluej3i32 = obj.getI3Va32();
                        double dvaluej1i33 = obj.getI1Va33();
                        double dvaluej2i33 = obj.getI2Va33();
                        double dvaluej3i33 = obj.getI3Va33();
                        double dvaluej1i34 = obj.getI1Va34();
                        double dvaluej2i34 = obj.getI2Va34();
                        double dvaluej3i34 = obj.getI3Va34();
                        double dvaluej1i35 = obj.getI1Va35();
                        double dvaluej2i35 = obj.getI2Va35();
                        double dvaluej3i35 = obj.getI3Va35();
                        double dvaluej1i36 = obj.getI1Va36();
                        double dvaluej2i36 = obj.getI2Va36();
                        double dvaluej3i36 = obj.getI3Va36();
                        double dvaluej1i37 = obj.getI1Va37();
                        double dvaluej2i37 = obj.getI2Va37();
                        double dvaluej3i37 = obj.getI3Va37();
                        double dvaluej1i38 = obj.getI1Va38();
                        double dvaluej2i38 = obj.getI2Va38();
                        double dvaluej3i38 = obj.getI3Va38();
                        double dvaluej1i39 = obj.getI1Va39();
                        double dvaluej2i39 = obj.getI2Va39();
                        double dvaluej3i39 = obj.getI3Va39();
                        double dvaluej1i40 = obj.getI1Va40();
                        double dvaluej2i40 = obj.getI2Va40();
                        double dvaluej3i40 = obj.getI3Va40();

                        double dvaluej1i41 = obj.getI1Va41();
                        double dvaluej2i41 = obj.getI2Va41();
                        double dvaluej3i41 = obj.getI3Va41();
                        double dvaluej1i42 = obj.getI1Va42();
                        double dvaluej2i42 = obj.getI2Va42();
                        double dvaluej3i42 = obj.getI3Va42();
                        double dvaluej1i43 = obj.getI1Va43();
                        double dvaluej2i43 = obj.getI2Va43();
                        double dvaluej3i43 = obj.getI3Va43();
                        double dvaluej1i44 = obj.getI1Va44();
                        double dvaluej2i44 = obj.getI2Va44();
                        double dvaluej3i44 = obj.getI3Va44();
                        double dvaluej1i45 = obj.getI1Va45();
                        double dvaluej2i45 = obj.getI2Va45();
                        double dvaluej3i45 = obj.getI3Va45();
                        double dvaluej1i46 = obj.getI1Va46();
                        double dvaluej2i46 = obj.getI2Va46();
                        double dvaluej3i46 = obj.getI3Va46();
                        double dvaluej1i47 = obj.getI1Va47();
                        double dvaluej2i47 = obj.getI2Va47();
                        double dvaluej3i47 = obj.getI3Va47();
                        double dvaluej1i48 = obj.getI1Va48();
                        double dvaluej2i48 = obj.getI2Va48();
                        double dvaluej3i48 = obj.getI3Va48();
                        double dvaluej1i49 = obj.getI1Va49();
                        double dvaluej2i49 = obj.getI2Va49();
                        double dvaluej3i49 = obj.getI3Va49();
                        double dvaluej1i50 = obj.getI1Va50();
                        double dvaluej2i50 = obj.getI2Va50();
                        double dvaluej3i50 = obj.getI3Va50();

//                        valuej1i1.add(dvaluej1i1);
//                        valuej2i1.add(dvaluej2i1);
//                        valuej3i1.add(dvaluej3i1);
                        valuej1i2.add(dvaluej1i2);
                        valuej2i2.add(dvaluej2i2);
                        valuej3i2.add(dvaluej3i2);
                        valuej1i3.add(dvaluej1i3);
                        valuej2i3.add(dvaluej2i3);
                        valuej3i3.add(dvaluej3i3);
                        valuej1i4.add(dvaluej1i4);
                        valuej2i4.add(dvaluej2i4);
                        valuej3i4.add(dvaluej3i4);
                        valuej1i5.add(dvaluej1i5);
                        valuej2i5.add(dvaluej2i5);
                        valuej3i5.add(dvaluej3i5);
                        valuej1i6.add(dvaluej1i6);
                        valuej2i6.add(dvaluej2i6);
                        valuej3i6.add(dvaluej3i6);
                        valuej1i7.add(dvaluej1i7);
                        valuej2i7.add(dvaluej2i7);
                        valuej3i7.add(dvaluej3i7);
                        valuej1i8.add(dvaluej1i8);
                        valuej2i8.add(dvaluej2i8);
                        valuej3i8.add(dvaluej3i8);
                        valuej1i9.add(dvaluej1i9);
                        valuej2i9.add(dvaluej2i9);
                        valuej3i9.add(dvaluej3i9);
                        valuej1i10.add(dvaluej1i10);
                        valuej2i10.add(dvaluej2i10);
                        valuej3i10.add(dvaluej3i10);

                        valuej1i11.add(dvaluej1i11);
                        valuej2i11.add(dvaluej2i11);
                        valuej3i11.add(dvaluej3i11);
                        valuej1i12.add(dvaluej1i12);
                        valuej2i12.add(dvaluej2i12);
                        valuej3i12.add(dvaluej3i12);
                        valuej1i13.add(dvaluej1i13);
                        valuej2i13.add(dvaluej2i13);
                        valuej3i13.add(dvaluej3i13);
                        valuej1i14.add(dvaluej1i14);
                        valuej2i14.add(dvaluej2i14);
                        valuej3i14.add(dvaluej3i14);
                        valuej1i15.add(dvaluej1i15);
                        valuej2i15.add(dvaluej2i15);
                        valuej3i15.add(dvaluej3i15);
                        valuej1i16.add(dvaluej1i16);
                        valuej2i16.add(dvaluej2i16);
                        valuej3i16.add(dvaluej3i16);
                        valuej1i17.add(dvaluej1i17);
                        valuej2i17.add(dvaluej2i17);
                        valuej3i17.add(dvaluej3i17);
                        valuej1i18.add(dvaluej1i18);
                        valuej2i18.add(dvaluej2i18);
                        valuej3i18.add(dvaluej3i18);
                        valuej1i19.add(dvaluej1i19);
                        valuej2i19.add(dvaluej2i19);
                        valuej3i19.add(dvaluej3i19);
                        valuej1i20.add(dvaluej1i20);
                        valuej2i20.add(dvaluej2i20);
                        valuej3i20.add(dvaluej3i20);

                        valuej1i21.add(dvaluej1i21);
                        valuej2i21.add(dvaluej2i21);
                        valuej3i21.add(dvaluej3i21);
                        valuej1i22.add(dvaluej1i22);
                        valuej2i22.add(dvaluej2i22);
                        valuej3i22.add(dvaluej3i22);
                        valuej1i23.add(dvaluej1i23);
                        valuej2i23.add(dvaluej2i23);
                        valuej3i23.add(dvaluej3i23);
                        valuej1i24.add(dvaluej1i24);
                        valuej2i24.add(dvaluej2i24);
                        valuej3i24.add(dvaluej3i24);
                        valuej1i25.add(dvaluej1i25);
                        valuej2i25.add(dvaluej2i25);
                        valuej3i25.add(dvaluej3i25);
                        valuej1i26.add(dvaluej1i26);
                        valuej2i26.add(dvaluej2i26);
                        valuej3i26.add(dvaluej3i26);
                        valuej1i27.add(dvaluej1i27);
                        valuej2i27.add(dvaluej2i27);
                        valuej3i27.add(dvaluej3i27);
                        valuej1i28.add(dvaluej1i28);
                        valuej2i28.add(dvaluej2i28);
                        valuej3i28.add(dvaluej3i28);
                        valuej1i29.add(dvaluej1i29);
                        valuej2i29.add(dvaluej2i29);
                        valuej3i29.add(dvaluej3i29);
                        valuej1i30.add(dvaluej1i30);
                        valuej2i30.add(dvaluej2i30);
                        valuej3i30.add(dvaluej3i30);

                        valuej1i31.add(dvaluej1i31);
                        valuej2i31.add(dvaluej2i31);
                        valuej3i31.add(dvaluej3i31);
                        valuej1i32.add(dvaluej1i32);
                        valuej2i32.add(dvaluej2i32);
                        valuej3i32.add(dvaluej3i32);
                        valuej1i33.add(dvaluej1i33);
                        valuej2i33.add(dvaluej2i33);
                        valuej3i33.add(dvaluej3i33);
                        valuej1i34.add(dvaluej1i34);
                        valuej2i34.add(dvaluej2i34);
                        valuej3i34.add(dvaluej3i34);
                        valuej1i35.add(dvaluej1i35);
                        valuej2i35.add(dvaluej2i35);
                        valuej3i35.add(dvaluej3i35);
                        valuej1i36.add(dvaluej1i36);
                        valuej2i36.add(dvaluej2i36);
                        valuej3i36.add(dvaluej3i36);
                        valuej1i37.add(dvaluej1i37);
                        valuej2i37.add(dvaluej2i37);
                        valuej3i37.add(dvaluej3i37);
                        valuej1i38.add(dvaluej1i38);
                        valuej2i38.add(dvaluej2i38);
                        valuej3i38.add(dvaluej3i38);
                        valuej1i39.add(dvaluej1i39);
                        valuej2i39.add(dvaluej2i39);
                        valuej3i39.add(dvaluej3i39);
                        valuej1i40.add(dvaluej1i40);
                        valuej2i40.add(dvaluej2i40);
                        valuej3i40.add(dvaluej3i40);

                        valuej1i41.add(dvaluej1i41);
                        valuej2i41.add(dvaluej2i41);
                        valuej3i41.add(dvaluej3i41);
                        valuej1i42.add(dvaluej1i42);
                        valuej2i42.add(dvaluej2i42);
                        valuej3i42.add(dvaluej3i42);
                        valuej1i43.add(dvaluej1i43);
                        valuej2i43.add(dvaluej2i43);
                        valuej3i43.add(dvaluej3i43);
                        valuej1i44.add(dvaluej1i44);
                        valuej2i44.add(dvaluej2i44);
                        valuej3i44.add(dvaluej3i44);
                        valuej1i45.add(dvaluej1i45);
                        valuej2i45.add(dvaluej2i45);
                        valuej3i45.add(dvaluej3i45);
                        valuej1i46.add(dvaluej1i46);
                        valuej2i46.add(dvaluej2i46);
                        valuej3i46.add(dvaluej3i46);
                        valuej1i47.add(dvaluej1i47);
                        valuej2i47.add(dvaluej2i47);
                        valuej3i47.add(dvaluej3i47);
                        valuej1i48.add(dvaluej1i48);
                        valuej2i48.add(dvaluej2i48);
                        valuej3i48.add(dvaluej3i48);
                        valuej1i49.add(dvaluej1i49);
                        valuej2i49.add(dvaluej2i49);
                        valuej3i49.add(dvaluej3i49);
                        valuej1i50.add(dvaluej1i50);
                        valuej2i50.add(dvaluej2i50);
                        valuej3i50.add(dvaluej3i50);

                    }

                    String nullstra = "," + state1 + "," + null + "," + null + "," + null + "," + null;
                    String nullstrb = "," + state2 + "," + null + "," + null + "," + null + "," + null;
                    String nullstrc = "," + state3 + "," + null + "," + null + "," + null + "," + null;

                    if (valuej1i2.size() == 0) { result.add((3) + nullstra); }
                    if (valuej2i2.size() == 0) { result.add((3) + nullstrb); }
                    if (valuej3i2.size() == 0) { result.add((3) + nullstrc); }
                    if (valuej1i3.size() == 0) { result.add((4) + nullstra); }
                    if (valuej2i3.size() == 0) { result.add((4) + nullstrb); }
                    if (valuej3i3.size() == 0) { result.add((4) + nullstrc); }
                    if (valuej1i4.size() == 0) { result.add((5) + nullstra); }
                    if (valuej2i4.size() == 0) { result.add((5) + nullstrb); }
                    if (valuej3i4.size() == 0) { result.add((5) + nullstrc); }
                    if (valuej1i5.size() == 0) { result.add((6) + nullstra); }
                    if (valuej2i5.size() == 0) { result.add((6) + nullstrb); }
                    if (valuej3i5.size() == 0) { result.add((6) + nullstrc); }
                    if (valuej1i6.size() == 0) { result.add((7) + nullstra); }
                    if (valuej2i6.size() == 0) { result.add((7) + nullstrb); }
                    if (valuej3i6.size() == 0) { result.add((7) + nullstrc); }
                    if (valuej1i7.size() == 0) { result.add((8) + nullstra); }
                    if (valuej2i7.size() == 0) { result.add((8) + nullstrb); }
                    if (valuej3i7.size() == 0) { result.add((8) + nullstrc); }
                    if (valuej1i8.size() == 0) { result.add((9) + nullstra); }
                    if (valuej2i8.size() == 0) { result.add((9) + nullstrb); }
                    if (valuej3i8.size() == 0) { result.add((9) + nullstrc); }
                    if (valuej1i9.size() == 0) { result.add((10) + nullstra); }
                    if (valuej2i9.size() == 0) { result.add((10) + nullstrb); }
                    if (valuej3i9.size() == 0) { result.add((10) + nullstrc); }
                    if (valuej1i10.size() == 0) { result.add((11) + nullstra); }
                    if (valuej2i10.size() == 0) { result.add((11) + nullstrb); }
                    if (valuej3i10.size() == 0) { result.add((11) + nullstrc); }
                    if (valuej1i11.size() == 0) { result.add((12) + nullstra); }
                    if (valuej2i11.size() == 0) { result.add((12) + nullstrb); }
                    if (valuej3i11.size() == 0) { result.add((12) + nullstrc); }
                    if (valuej1i12.size() == 0) { result.add((13) + nullstra); }
                    if (valuej2i12.size() == 0) { result.add((13) + nullstrb); }
                    if (valuej3i12.size() == 0) { result.add((13) + nullstrc); }
                    if (valuej1i13.size() == 0) { result.add((14) + nullstra); }
                    if (valuej2i13.size() == 0) { result.add((14) + nullstrb); }
                    if (valuej3i13.size() == 0) { result.add((14) + nullstrc); }
                    if (valuej1i14.size() == 0) { result.add((15) + nullstra); }
                    if (valuej2i14.size() == 0) { result.add((15) + nullstrb); }
                    if (valuej3i14.size() == 0) { result.add((15) + nullstrc); }
                    if (valuej1i15.size() == 0) { result.add((16) + nullstra); }
                    if (valuej2i15.size() == 0) { result.add((16) + nullstrb); }
                    if (valuej3i15.size() == 0) { result.add((16) + nullstrc); }
                    if (valuej1i16.size() == 0) { result.add((17) + nullstra); }
                    if (valuej2i16.size() == 0) { result.add((17) + nullstrb); }
                    if (valuej3i16.size() == 0) { result.add((17) + nullstrc); }
                    if (valuej1i17.size() == 0) { result.add((18) + nullstra); }
                    if (valuej2i17.size() == 0) { result.add((18) + nullstrb); }
                    if (valuej3i17.size() == 0) { result.add((18) + nullstrc); }
                    if (valuej1i18.size() == 0) { result.add((19) + nullstra); }
                    if (valuej2i18.size() == 0) { result.add((19) + nullstrb); }
                    if (valuej3i18.size() == 0) { result.add((19) + nullstrc); }
                    if (valuej1i19.size() == 0) { result.add((20) + nullstra); }
                    if (valuej2i19.size() == 0) { result.add((20) + nullstrb); }
                    if (valuej3i19.size() == 0) { result.add((20) + nullstrc); }
                    if (valuej1i20.size() == 0) { result.add((21) + nullstra); }
                    if (valuej2i20.size() == 0) { result.add((21) + nullstrb); }
                    if (valuej3i20.size() == 0) { result.add((21) + nullstrc); }
                    if (valuej1i21.size() == 0) { result.add((22) + nullstra); }
                    if (valuej2i21.size() == 0) { result.add((22) + nullstrb); }
                    if (valuej3i21.size() == 0) { result.add((22) + nullstrc); }
                    if (valuej1i22.size() == 0) { result.add((23) + nullstra); }
                    if (valuej2i22.size() == 0) { result.add((23) + nullstrb); }
                    if (valuej3i22.size() == 0) { result.add((23) + nullstrc); }
                    if (valuej1i23.size() == 0) { result.add((24) + nullstra); }
                    if (valuej2i23.size() == 0) { result.add((24) + nullstrb); }
                    if (valuej3i23.size() == 0) { result.add((24) + nullstrc); }
                    if (valuej1i24.size() == 0) { result.add((25) + nullstra); }
                    if (valuej2i24.size() == 0) { result.add((25) + nullstrb); }
                    if (valuej3i24.size() == 0) { result.add((25) + nullstrc); }
                    if (valuej1i25.size() == 0) { result.add((26) + nullstra); }
                    if (valuej2i25.size() == 0) { result.add((26) + nullstrb); }
                    if (valuej3i25.size() == 0) { result.add((26) + nullstrc); }
                    if (valuej1i26.size() == 0) { result.add((27) + nullstra); }
                    if (valuej2i26.size() == 0) { result.add((27) + nullstrb); }
                    if (valuej3i26.size() == 0) { result.add((27) + nullstrc); }
                    if (valuej1i27.size() == 0) { result.add((28) + nullstra); }
                    if (valuej2i27.size() == 0) { result.add((28) + nullstrb); }
                    if (valuej3i27.size() == 0) { result.add((28) + nullstrc); }
                    if (valuej1i28.size() == 0) { result.add((29) + nullstra); }
                    if (valuej2i28.size() == 0) { result.add((29) + nullstrb); }
                    if (valuej3i28.size() == 0) { result.add((29) + nullstrc); }
                    if (valuej1i29.size() == 0) { result.add((30) + nullstra); }
                    if (valuej2i29.size() == 0) { result.add((30) + nullstrb); }
                    if (valuej3i29.size() == 0) { result.add((30) + nullstrc); }
                    if (valuej1i30.size() == 0) { result.add((31) + nullstra); }
                    if (valuej2i30.size() == 0) { result.add((31) + nullstrb); }
                    if (valuej3i30.size() == 0) { result.add((31) + nullstrc); }
                    if (valuej1i31.size() == 0) { result.add((32) + nullstra); }
                    if (valuej2i31.size() == 0) { result.add((32) + nullstrb); }
                    if (valuej3i31.size() == 0) { result.add((32) + nullstrc); }
                    if (valuej1i32.size() == 0) { result.add((33) + nullstra); }
                    if (valuej2i32.size() == 0) { result.add((33) + nullstrb); }
                    if (valuej3i32.size() == 0) { result.add((33) + nullstrc); }
                    if (valuej1i33.size() == 0) { result.add((34) + nullstra); }
                    if (valuej2i33.size() == 0) { result.add((34) + nullstrb); }
                    if (valuej3i33.size() == 0) { result.add((34) + nullstrc); }
                    if (valuej1i34.size() == 0) { result.add((35) + nullstra); }
                    if (valuej2i34.size() == 0) { result.add((35) + nullstrb); }
                    if (valuej3i34.size() == 0) { result.add((35) + nullstrc); }
                    if (valuej1i35.size() == 0) { result.add((36) + nullstra); }
                    if (valuej2i35.size() == 0) { result.add((36) + nullstrb); }
                    if (valuej3i35.size() == 0) { result.add((36) + nullstrc); }
                    if (valuej1i36.size() == 0) { result.add((37) + nullstra); }
                    if (valuej2i36.size() == 0) { result.add((37) + nullstrb); }
                    if (valuej3i36.size() == 0) { result.add((37) + nullstrc); }
                    if (valuej1i37.size() == 0) { result.add((38) + nullstra); }
                    if (valuej2i37.size() == 0) { result.add((38) + nullstrb); }
                    if (valuej3i37.size() == 0) { result.add((38) + nullstrc); }
                    if (valuej1i38.size() == 0) { result.add((39) + nullstra); }
                    if (valuej2i38.size() == 0) { result.add((39) + nullstrb); }
                    if (valuej3i38.size() == 0) { result.add((39) + nullstrc); }
                    if (valuej1i39.size() == 0) { result.add((40) + nullstra); }
                    if (valuej2i39.size() == 0) { result.add((40) + nullstrb); }
                    if (valuej3i39.size() == 0) { result.add((40) + nullstrc); }
                    if (valuej1i40.size() == 0) { result.add((41) + nullstra); }
                    if (valuej2i40.size() == 0) { result.add((41) + nullstrb); }
                    if (valuej3i40.size() == 0) { result.add((41) + nullstrc); }
                    if (valuej1i41.size() == 0) { result.add((42) + nullstra); }
                    if (valuej2i41.size() == 0) { result.add((42) + nullstrb); }
                    if (valuej3i41.size() == 0) { result.add((42) + nullstrc); }
                    if (valuej1i42.size() == 0) { result.add((43) + nullstra); }
                    if (valuej2i42.size() == 0) { result.add((43) + nullstrb); }
                    if (valuej3i42.size() == 0) { result.add((43) + nullstrc); }
                    if (valuej1i43.size() == 0) { result.add((44) + nullstra); }
                    if (valuej2i43.size() == 0) { result.add((44) + nullstrb); }
                    if (valuej3i43.size() == 0) { result.add((44) + nullstrc); }
                    if (valuej1i44.size() == 0) { result.add((45) + nullstra); }
                    if (valuej2i44.size() == 0) { result.add((45) + nullstrb); }
                    if (valuej3i44.size() == 0) { result.add((45) + nullstrc); }
                    if (valuej1i45.size() == 0) { result.add((46) + nullstra); }
                    if (valuej2i45.size() == 0) { result.add((46) + nullstrb); }
                    if (valuej3i45.size() == 0) { result.add((46) + nullstrc); }
                    if (valuej1i46.size() == 0) { result.add((47) + nullstra); }
                    if (valuej2i46.size() == 0) { result.add((47) + nullstrb); }
                    if (valuej3i46.size() == 0) { result.add((47) + nullstrc); }
                    if (valuej1i47.size() == 0) { result.add((48) + nullstra); }
                    if (valuej2i47.size() == 0) { result.add((48) + nullstrb); }
                    if (valuej3i47.size() == 0) { result.add((48) + nullstrc); }
                    if (valuej1i48.size() == 0) { result.add((49) + nullstra); }
                    if (valuej2i48.size() == 0) { result.add((49) + nullstrb); }
                    if (valuej3i48.size() == 0) { result.add((49) + nullstrc); }
                    if (valuej1i49.size() == 0) { result.add((50) + nullstra); }
                    if (valuej2i49.size() == 0) { result.add((50) + nullstrb); }
                    if (valuej3i49.size() == 0) { result.add((50) + nullstrc); }
                    if (valuej1i50.size() == 0) { result.add((51) + nullstra); }
                    if (valuej2i50.size() == 0) { result.add((51) + nullstrb); }
                    if (valuej3i50.size() == 0) { result.add((51) + nullstrc); }

                    if (valuej1i2.size() > 0) { result.add((3) + "," + state1 + "," + getMax(valuej1i2) + "," + getMin(valuej1i2) + "," + getAve(valuej1i2) + "," + get95p(valuej1i2)); }
                    if (valuej2i2.size() > 0) { result.add((3) + "," + state2 + "," + getMax(valuej2i2) + "," + getMin(valuej2i2) + "," + getAve(valuej2i2) + "," + get95p(valuej2i2)); }
                    if (valuej3i2.size() > 0) { result.add((3) + "," + state3 + "," + getMax(valuej3i2) + "," + getMin(valuej3i2) + "," + getAve(valuej3i2) + "," + get95p(valuej3i2)); }
                    if (valuej1i3.size() > 0) { result.add((4) + "," + state1 + "," + getMax(valuej1i3) + "," + getMin(valuej1i3) + "," + getAve(valuej1i3) + "," + get95p(valuej1i3)); }
                    if (valuej2i3.size() > 0) { result.add((4) + "," + state2 + "," + getMax(valuej2i3) + "," + getMin(valuej2i3) + "," + getAve(valuej2i3) + "," + get95p(valuej2i3)); }
                    if (valuej3i3.size() > 0) { result.add((4) + "," + state3 + "," + getMax(valuej3i3) + "," + getMin(valuej3i3) + "," + getAve(valuej3i3) + "," + get95p(valuej3i3)); }
                    if (valuej1i4.size() > 0) { result.add((5) + "," + state1 + "," + getMax(valuej1i4) + "," + getMin(valuej1i4) + "," + getAve(valuej1i4) + "," + get95p(valuej1i4)); }
                    if (valuej2i4.size() > 0) { result.add((5) + "," + state2 + "," + getMax(valuej2i4) + "," + getMin(valuej2i4) + "," + getAve(valuej2i4) + "," + get95p(valuej2i4)); }
                    if (valuej3i4.size() > 0) { result.add((5) + "," + state3 + "," + getMax(valuej3i4) + "," + getMin(valuej3i4) + "," + getAve(valuej3i4) + "," + get95p(valuej3i4)); }
                    if (valuej1i5.size() > 0) { result.add((6) + "," + state1 + "," + getMax(valuej1i5) + "," + getMin(valuej1i5) + "," + getAve(valuej1i5) + "," + get95p(valuej1i5)); }
                    if (valuej2i5.size() > 0) { result.add((6) + "," + state2 + "," + getMax(valuej2i5) + "," + getMin(valuej2i5) + "," + getAve(valuej2i5) + "," + get95p(valuej2i5)); }
                    if (valuej3i5.size() > 0) { result.add((6) + "," + state3 + "," + getMax(valuej3i5) + "," + getMin(valuej3i5) + "," + getAve(valuej3i5) + "," + get95p(valuej3i5)); }
                    if (valuej1i6.size() > 0) { result.add((7) + "," + state1 + "," + getMax(valuej1i6) + "," + getMin(valuej1i6) + "," + getAve(valuej1i6) + "," + get95p(valuej1i6)); }
                    if (valuej2i6.size() > 0) { result.add((7) + "," + state2 + "," + getMax(valuej2i6) + "," + getMin(valuej2i6) + "," + getAve(valuej2i6) + "," + get95p(valuej2i6)); }
                    if (valuej3i6.size() > 0) { result.add((7) + "," + state3 + "," + getMax(valuej3i6) + "," + getMin(valuej3i6) + "," + getAve(valuej3i6) + "," + get95p(valuej3i6)); }
                    if (valuej1i7.size() > 0) { result.add((8) + "," + state1 + "," + getMax(valuej1i7) + "," + getMin(valuej1i7) + "," + getAve(valuej1i7) + "," + get95p(valuej1i7)); }
                    if (valuej2i7.size() > 0) { result.add((8) + "," + state2 + "," + getMax(valuej2i7) + "," + getMin(valuej2i7) + "," + getAve(valuej2i7) + "," + get95p(valuej2i7)); }
                    if (valuej3i7.size() > 0) { result.add((8) + "," + state3 + "," + getMax(valuej3i7) + "," + getMin(valuej3i7) + "," + getAve(valuej3i7) + "," + get95p(valuej3i7)); }
                    if (valuej1i8.size() > 0) { result.add((9) + "," + state1 + "," + getMax(valuej1i8) + "," + getMin(valuej1i8) + "," + getAve(valuej1i8) + "," + get95p(valuej1i8)); }
                    if (valuej2i8.size() > 0) { result.add((9) + "," + state2 + "," + getMax(valuej2i8) + "," + getMin(valuej2i8) + "," + getAve(valuej2i8) + "," + get95p(valuej2i8)); }
                    if (valuej3i8.size() > 0) { result.add((9) + "," + state3 + "," + getMax(valuej3i8) + "," + getMin(valuej3i8) + "," + getAve(valuej3i8) + "," + get95p(valuej3i8)); }
                    if (valuej1i9.size() > 0) { result.add((10) + "," + state1 + "," + getMax(valuej1i9) + "," + getMin(valuej1i9) + "," + getAve(valuej1i9) + "," + get95p(valuej1i9)); }
                    if (valuej2i9.size() > 0) { result.add((10) + "," + state2 + "," + getMax(valuej2i9) + "," + getMin(valuej2i9) + "," + getAve(valuej2i9) + "," + get95p(valuej2i9)); }
                    if (valuej3i9.size() > 0) { result.add((10) + "," + state3 + "," + getMax(valuej3i9) + "," + getMin(valuej3i9) + "," + getAve(valuej3i9) + "," + get95p(valuej3i9)); }
                    if (valuej1i10.size() > 0) { result.add((11) + "," + state1 + "," + getMax(valuej1i10) + "," + getMin(valuej1i10) + "," + getAve(valuej1i10) + "," + get95p(valuej1i10)); }
                    if (valuej2i10.size() > 0) { result.add((11) + "," + state2 + "," + getMax(valuej2i10) + "," + getMin(valuej2i10) + "," + getAve(valuej2i10) + "," + get95p(valuej2i10)); }
                    if (valuej3i10.size() > 0) { result.add((11) + "," + state3 + "," + getMax(valuej3i10) + "," + getMin(valuej3i10) + "," + getAve(valuej3i10) + "," + get95p(valuej3i10)); }

                    if (valuej1i11.size() > 0) { result.add((12) + "," + state1 + "," + getMax(valuej1i11) + "," + getMin(valuej1i11) + "," + getAve(valuej1i11) + "," + get95p(valuej1i11)); }
                    if (valuej2i11.size() > 0) { result.add((12) + "," + state2 + "," + getMax(valuej2i11) + "," + getMin(valuej2i11) + "," + getAve(valuej2i11) + "," + get95p(valuej2i11)); }
                    if (valuej3i11.size() > 0) { result.add((12) + "," + state3 + "," + getMax(valuej3i11) + "," + getMin(valuej3i11) + "," + getAve(valuej3i11) + "," + get95p(valuej3i11)); }
                    if (valuej1i12.size() > 0) { result.add((13) + "," + state1 + "," + getMax(valuej1i12) + "," + getMin(valuej1i12) + "," + getAve(valuej1i12) + "," + get95p(valuej1i12)); }
                    if (valuej2i12.size() > 0) { result.add((13) + "," + state2 + "," + getMax(valuej2i12) + "," + getMin(valuej2i12) + "," + getAve(valuej2i12) + "," + get95p(valuej2i12)); }
                    if (valuej3i12.size() > 0) { result.add((13) + "," + state3 + "," + getMax(valuej3i12) + "," + getMin(valuej3i12) + "," + getAve(valuej3i12) + "," + get95p(valuej3i12)); }
                    if (valuej1i13.size() > 0) { result.add((14) + "," + state1 + "," + getMax(valuej1i13) + "," + getMin(valuej1i13) + "," + getAve(valuej1i13) + "," + get95p(valuej1i13)); }
                    if (valuej2i13.size() > 0) { result.add((14) + "," + state2 + "," + getMax(valuej2i13) + "," + getMin(valuej2i13) + "," + getAve(valuej2i13) + "," + get95p(valuej2i13)); }
                    if (valuej3i13.size() > 0) { result.add((14) + "," + state3 + "," + getMax(valuej3i13) + "," + getMin(valuej3i13) + "," + getAve(valuej3i13) + "," + get95p(valuej3i13)); }
                    if (valuej1i14.size() > 0) { result.add((15) + "," + state1 + "," + getMax(valuej1i14) + "," + getMin(valuej1i14) + "," + getAve(valuej1i14) + "," + get95p(valuej1i14)); }
                    if (valuej2i14.size() > 0) { result.add((15) + "," + state2 + "," + getMax(valuej2i14) + "," + getMin(valuej2i14) + "," + getAve(valuej2i14) + "," + get95p(valuej2i14)); }
                    if (valuej3i14.size() > 0) { result.add((15) + "," + state3 + "," + getMax(valuej3i14) + "," + getMin(valuej3i14) + "," + getAve(valuej3i14) + "," + get95p(valuej3i14)); }
                    if (valuej1i15.size() > 0) { result.add((16) + "," + state1 + "," + getMax(valuej1i15) + "," + getMin(valuej1i15) + "," + getAve(valuej1i15) + "," + get95p(valuej1i15)); }
                    if (valuej2i15.size() > 0) { result.add((16) + "," + state2 + "," + getMax(valuej2i15) + "," + getMin(valuej2i15) + "," + getAve(valuej2i15) + "," + get95p(valuej2i15)); }
                    if (valuej3i15.size() > 0) { result.add((16) + "," + state3 + "," + getMax(valuej3i15) + "," + getMin(valuej3i15) + "," + getAve(valuej3i15) + "," + get95p(valuej3i15)); }
                    if (valuej1i16.size() > 0) { result.add((17) + "," + state1 + "," + getMax(valuej1i16) + "," + getMin(valuej1i16) + "," + getAve(valuej1i16) + "," + get95p(valuej1i16)); }
                    if (valuej2i16.size() > 0) { result.add((17) + "," + state2 + "," + getMax(valuej2i16) + "," + getMin(valuej2i16) + "," + getAve(valuej2i16) + "," + get95p(valuej2i16)); }
                    if (valuej3i16.size() > 0) { result.add((17) + "," + state3 + "," + getMax(valuej3i16) + "," + getMin(valuej3i16) + "," + getAve(valuej3i16) + "," + get95p(valuej3i16)); }
                    if (valuej1i17.size() > 0) { result.add((18) + "," + state1 + "," + getMax(valuej1i17) + "," + getMin(valuej1i17) + "," + getAve(valuej1i17) + "," + get95p(valuej1i17)); }
                    if (valuej2i17.size() > 0) { result.add((18) + "," + state2 + "," + getMax(valuej2i17) + "," + getMin(valuej2i17) + "," + getAve(valuej2i17) + "," + get95p(valuej2i17)); }
                    if (valuej3i17.size() > 0) { result.add((18) + "," + state3 + "," + getMax(valuej3i17) + "," + getMin(valuej3i17) + "," + getAve(valuej3i17) + "," + get95p(valuej3i17)); }
                    if (valuej1i18.size() > 0) { result.add((19) + "," + state1 + "," + getMax(valuej1i18) + "," + getMin(valuej1i18) + "," + getAve(valuej1i18) + "," + get95p(valuej1i18)); }
                    if (valuej2i18.size() > 0) { result.add((19) + "," + state2 + "," + getMax(valuej2i18) + "," + getMin(valuej2i18) + "," + getAve(valuej2i18) + "," + get95p(valuej2i18)); }
                    if (valuej3i18.size() > 0) { result.add((19) + "," + state3 + "," + getMax(valuej3i18) + "," + getMin(valuej3i18) + "," + getAve(valuej3i18) + "," + get95p(valuej3i18)); }
                    if (valuej1i19.size() > 0) { result.add((20) + "," + state1 + "," + getMax(valuej1i19) + "," + getMin(valuej1i19) + "," + getAve(valuej1i19) + "," + get95p(valuej1i19)); }
                    if (valuej2i19.size() > 0) { result.add((20) + "," + state2 + "," + getMax(valuej2i19) + "," + getMin(valuej2i19) + "," + getAve(valuej2i19) + "," + get95p(valuej2i19)); }
                    if (valuej3i19.size() > 0) { result.add((20) + "," + state3 + "," + getMax(valuej3i19) + "," + getMin(valuej3i19) + "," + getAve(valuej3i19) + "," + get95p(valuej3i19)); }
                    if (valuej1i20.size() > 0) { result.add((21) + "," + state1 + "," + getMax(valuej1i20) + "," + getMin(valuej1i20) + "," + getAve(valuej1i20) + "," + get95p(valuej1i20)); }
                    if (valuej2i20.size() > 0) { result.add((21) + "," + state2 + "," + getMax(valuej2i20) + "," + getMin(valuej2i20) + "," + getAve(valuej2i20) + "," + get95p(valuej2i20)); }
                    if (valuej3i20.size() > 0) { result.add((21) + "," + state3 + "," + getMax(valuej3i20) + "," + getMin(valuej3i20) + "," + getAve(valuej3i20) + "," + get95p(valuej3i20)); }

                    if (valuej1i21.size() > 0) { result.add((22) + "," + state1 + "," + getMax(valuej1i21) + "," + getMin(valuej1i21) + "," + getAve(valuej1i21) + "," + get95p(valuej1i21)); }
                    if (valuej2i21.size() > 0) { result.add((22) + "," + state2 + "," + getMax(valuej2i21) + "," + getMin(valuej2i21) + "," + getAve(valuej2i21) + "," + get95p(valuej2i21)); }
                    if (valuej3i21.size() > 0) { result.add((22) + "," + state3 + "," + getMax(valuej3i21) + "," + getMin(valuej3i21) + "," + getAve(valuej3i21) + "," + get95p(valuej3i21)); }
                    if (valuej1i22.size() > 0) { result.add((23) + "," + state1 + "," + getMax(valuej1i22) + "," + getMin(valuej1i22) + "," + getAve(valuej1i22) + "," + get95p(valuej1i22)); }
                    if (valuej2i22.size() > 0) { result.add((23) + "," + state2 + "," + getMax(valuej2i22) + "," + getMin(valuej2i22) + "," + getAve(valuej2i22) + "," + get95p(valuej2i22)); }
                    if (valuej3i22.size() > 0) { result.add((23) + "," + state3 + "," + getMax(valuej3i22) + "," + getMin(valuej3i22) + "," + getAve(valuej3i22) + "," + get95p(valuej3i22)); }
                    if (valuej1i23.size() > 0) { result.add((24) + "," + state1 + "," + getMax(valuej1i23) + "," + getMin(valuej1i23) + "," + getAve(valuej1i23) + "," + get95p(valuej1i23)); }
                    if (valuej2i23.size() > 0) { result.add((24) + "," + state2 + "," + getMax(valuej2i23) + "," + getMin(valuej2i23) + "," + getAve(valuej2i23) + "," + get95p(valuej2i23)); }
                    if (valuej3i23.size() > 0) { result.add((24) + "," + state3 + "," + getMax(valuej3i23) + "," + getMin(valuej3i23) + "," + getAve(valuej3i23) + "," + get95p(valuej3i23)); }
                    if (valuej1i24.size() > 0) { result.add((25) + "," + state1 + "," + getMax(valuej1i24) + "," + getMin(valuej1i24) + "," + getAve(valuej1i24) + "," + get95p(valuej1i24)); }
                    if (valuej2i24.size() > 0) { result.add((25) + "," + state2 + "," + getMax(valuej2i24) + "," + getMin(valuej2i24) + "," + getAve(valuej2i24) + "," + get95p(valuej2i24)); }
                    if (valuej3i24.size() > 0) { result.add((25) + "," + state3 + "," + getMax(valuej3i24) + "," + getMin(valuej3i24) + "," + getAve(valuej3i24) + "," + get95p(valuej3i24)); }
                    if (valuej1i25.size() > 0) { result.add((26) + "," + state1 + "," + getMax(valuej1i25) + "," + getMin(valuej1i25) + "," + getAve(valuej1i25) + "," + get95p(valuej1i25)); }
                    if (valuej2i25.size() > 0) { result.add((26) + "," + state2 + "," + getMax(valuej2i25) + "," + getMin(valuej2i25) + "," + getAve(valuej2i25) + "," + get95p(valuej2i25)); }
                    if (valuej3i25.size() > 0) { result.add((26) + "," + state3 + "," + getMax(valuej3i25) + "," + getMin(valuej3i25) + "," + getAve(valuej3i25) + "," + get95p(valuej3i25)); }
                    if (valuej1i26.size() > 0) { result.add((27) + "," + state1 + "," + getMax(valuej1i26) + "," + getMin(valuej1i26) + "," + getAve(valuej1i26) + "," + get95p(valuej1i26)); }
                    if (valuej2i26.size() > 0) { result.add((27) + "," + state2 + "," + getMax(valuej2i26) + "," + getMin(valuej2i26) + "," + getAve(valuej2i26) + "," + get95p(valuej2i26)); }
                    if (valuej3i26.size() > 0) { result.add((27) + "," + state3 + "," + getMax(valuej3i26) + "," + getMin(valuej3i26) + "," + getAve(valuej3i26) + "," + get95p(valuej3i26)); }
                    if (valuej1i27.size() > 0) { result.add((28) + "," + state1 + "," + getMax(valuej1i27) + "," + getMin(valuej1i27) + "," + getAve(valuej1i27) + "," + get95p(valuej1i27)); }
                    if (valuej2i27.size() > 0) { result.add((28) + "," + state2 + "," + getMax(valuej2i27) + "," + getMin(valuej2i27) + "," + getAve(valuej2i27) + "," + get95p(valuej2i27)); }
                    if (valuej3i27.size() > 0) { result.add((28) + "," + state3 + "," + getMax(valuej3i27) + "," + getMin(valuej3i27) + "," + getAve(valuej3i27) + "," + get95p(valuej3i27)); }
                    if (valuej1i28.size() > 0) { result.add((29) + "," + state1 + "," + getMax(valuej1i28) + "," + getMin(valuej1i28) + "," + getAve(valuej1i28) + "," + get95p(valuej1i28)); }
                    if (valuej2i28.size() > 0) { result.add((29) + "," + state2 + "," + getMax(valuej2i28) + "," + getMin(valuej2i28) + "," + getAve(valuej2i28) + "," + get95p(valuej2i28)); }
                    if (valuej3i28.size() > 0) { result.add((29) + "," + state3 + "," + getMax(valuej3i28) + "," + getMin(valuej3i28) + "," + getAve(valuej3i28) + "," + get95p(valuej3i28)); }
                    if (valuej1i29.size() > 0) { result.add((30) + "," + state1 + "," + getMax(valuej1i29) + "," + getMin(valuej1i29) + "," + getAve(valuej1i29) + "," + get95p(valuej1i29)); }
                    if (valuej2i29.size() > 0) { result.add((30) + "," + state2 + "," + getMax(valuej2i29) + "," + getMin(valuej2i29) + "," + getAve(valuej2i29) + "," + get95p(valuej2i29)); }
                    if (valuej3i29.size() > 0) { result.add((30) + "," + state3 + "," + getMax(valuej3i29) + "," + getMin(valuej3i29) + "," + getAve(valuej3i29) + "," + get95p(valuej3i29)); }
                    if (valuej1i30.size() > 0) { result.add((31) + "," + state1 + "," + getMax(valuej1i30) + "," + getMin(valuej1i30) + "," + getAve(valuej1i30) + "," + get95p(valuej1i30)); }
                    if (valuej2i30.size() > 0) { result.add((31) + "," + state2 + "," + getMax(valuej2i30) + "," + getMin(valuej2i30) + "," + getAve(valuej2i30) + "," + get95p(valuej2i30)); }
                    if (valuej3i30.size() > 0) { result.add((31) + "," + state3 + "," + getMax(valuej3i30) + "," + getMin(valuej3i30) + "," + getAve(valuej3i30) + "," + get95p(valuej3i30)); }

                    if (valuej1i31.size() > 0) { result.add((32) + "," + state1 + "," + getMax(valuej1i31) + "," + getMin(valuej1i31) + "," + getAve(valuej1i31) + "," + get95p(valuej1i31)); }
                    if (valuej2i31.size() > 0) { result.add((32) + "," + state2 + "," + getMax(valuej2i31) + "," + getMin(valuej2i31) + "," + getAve(valuej2i31) + "," + get95p(valuej2i31)); }
                    if (valuej3i31.size() > 0) { result.add((32) + "," + state3 + "," + getMax(valuej3i31) + "," + getMin(valuej3i31) + "," + getAve(valuej3i31) + "," + get95p(valuej3i31)); }
                    if (valuej1i32.size() > 0) { result.add((33) + "," + state1 + "," + getMax(valuej1i32) + "," + getMin(valuej1i32) + "," + getAve(valuej1i32) + "," + get95p(valuej1i32)); }
                    if (valuej2i32.size() > 0) { result.add((33) + "," + state2 + "," + getMax(valuej2i32) + "," + getMin(valuej2i32) + "," + getAve(valuej2i32) + "," + get95p(valuej2i32)); }
                    if (valuej3i32.size() > 0) { result.add((33) + "," + state3 + "," + getMax(valuej3i32) + "," + getMin(valuej3i32) + "," + getAve(valuej3i32) + "," + get95p(valuej3i32)); }
                    if (valuej1i33.size() > 0) { result.add((34) + "," + state1 + "," + getMax(valuej1i33) + "," + getMin(valuej1i33) + "," + getAve(valuej1i33) + "," + get95p(valuej1i33)); }
                    if (valuej2i33.size() > 0) { result.add((34) + "," + state2 + "," + getMax(valuej2i33) + "," + getMin(valuej2i33) + "," + getAve(valuej2i33) + "," + get95p(valuej2i33)); }
                    if (valuej3i33.size() > 0) { result.add((34) + "," + state3 + "," + getMax(valuej3i33) + "," + getMin(valuej3i33) + "," + getAve(valuej3i33) + "," + get95p(valuej3i33)); }
                    if (valuej1i34.size() > 0) { result.add((35) + "," + state1 + "," + getMax(valuej1i34) + "," + getMin(valuej1i34) + "," + getAve(valuej1i34) + "," + get95p(valuej1i34)); }
                    if (valuej2i34.size() > 0) { result.add((35) + "," + state2 + "," + getMax(valuej2i34) + "," + getMin(valuej2i34) + "," + getAve(valuej2i34) + "," + get95p(valuej2i34)); }
                    if (valuej3i34.size() > 0) { result.add((35) + "," + state3 + "," + getMax(valuej3i34) + "," + getMin(valuej3i34) + "," + getAve(valuej3i34) + "," + get95p(valuej3i34)); }
                    if (valuej1i35.size() > 0) { result.add((36) + "," + state1 + "," + getMax(valuej1i35) + "," + getMin(valuej1i35) + "," + getAve(valuej1i35) + "," + get95p(valuej1i35)); }
                    if (valuej2i35.size() > 0) { result.add((36) + "," + state2 + "," + getMax(valuej2i35) + "," + getMin(valuej2i35) + "," + getAve(valuej2i35) + "," + get95p(valuej2i35)); }
                    if (valuej3i35.size() > 0) { result.add((36) + "," + state3 + "," + getMax(valuej3i35) + "," + getMin(valuej3i35) + "," + getAve(valuej3i35) + "," + get95p(valuej3i35)); }
                    if (valuej1i36.size() > 0) { result.add((37) + "," + state1 + "," + getMax(valuej1i36) + "," + getMin(valuej1i36) + "," + getAve(valuej1i36) + "," + get95p(valuej1i36)); }
                    if (valuej2i36.size() > 0) { result.add((37) + "," + state2 + "," + getMax(valuej2i36) + "," + getMin(valuej2i36) + "," + getAve(valuej2i36) + "," + get95p(valuej2i36)); }
                    if (valuej3i36.size() > 0) { result.add((37) + "," + state3 + "," + getMax(valuej3i36) + "," + getMin(valuej3i36) + "," + getAve(valuej3i36) + "," + get95p(valuej3i36)); }
                    if (valuej1i37.size() > 0) { result.add((38) + "," + state1 + "," + getMax(valuej1i37) + "," + getMin(valuej1i37) + "," + getAve(valuej1i37) + "," + get95p(valuej1i37)); }
                    if (valuej2i37.size() > 0) { result.add((38) + "," + state2 + "," + getMax(valuej2i37) + "," + getMin(valuej2i37) + "," + getAve(valuej2i37) + "," + get95p(valuej2i37)); }
                    if (valuej3i37.size() > 0) { result.add((38) + "," + state3 + "," + getMax(valuej3i37) + "," + getMin(valuej3i37) + "," + getAve(valuej3i37) + "," + get95p(valuej3i37)); }
                    if (valuej1i38.size() > 0) { result.add((39) + "," + state1 + "," + getMax(valuej1i38) + "," + getMin(valuej1i38) + "," + getAve(valuej1i38) + "," + get95p(valuej1i38)); }
                    if (valuej2i38.size() > 0) { result.add((39) + "," + state2 + "," + getMax(valuej2i38) + "," + getMin(valuej2i38) + "," + getAve(valuej2i38) + "," + get95p(valuej2i38)); }
                    if (valuej3i38.size() > 0) { result.add((39) + "," + state3 + "," + getMax(valuej3i38) + "," + getMin(valuej3i38) + "," + getAve(valuej3i38) + "," + get95p(valuej3i38)); }
                    if (valuej1i39.size() > 0) { result.add((40) + "," + state1 + "," + getMax(valuej1i39) + "," + getMin(valuej1i39) + "," + getAve(valuej1i39) + "," + get95p(valuej1i39)); }
                    if (valuej2i39.size() > 0) { result.add((40) + "," + state2 + "," + getMax(valuej2i39) + "," + getMin(valuej2i39) + "," + getAve(valuej2i39) + "," + get95p(valuej2i39)); }
                    if (valuej3i39.size() > 0) { result.add((40) + "," + state3 + "," + getMax(valuej3i39) + "," + getMin(valuej3i39) + "," + getAve(valuej3i39) + "," + get95p(valuej3i39)); }
                    if (valuej1i40.size() > 0) { result.add((41) + "," + state1 + "," + getMax(valuej1i40) + "," + getMin(valuej1i40) + "," + getAve(valuej1i40) + "," + get95p(valuej1i40)); }
                    if (valuej2i40.size() > 0) { result.add((41) + "," + state2 + "," + getMax(valuej2i40) + "," + getMin(valuej2i40) + "," + getAve(valuej2i40) + "," + get95p(valuej2i40)); }
                    if (valuej3i40.size() > 0) { result.add((41) + "," + state3 + "," + getMax(valuej3i40) + "," + getMin(valuej3i40) + "," + getAve(valuej3i40) + "," + get95p(valuej3i40)); }

                    if (valuej1i41.size() > 0) { result.add((42) + "," + state1 + "," + getMax(valuej1i41) + "," + getMin(valuej1i41) + "," + getAve(valuej1i41) + "," + get95p(valuej1i41)); }
                    if (valuej2i41.size() > 0) { result.add((42) + "," + state2 + "," + getMax(valuej2i41) + "," + getMin(valuej2i41) + "," + getAve(valuej2i41) + "," + get95p(valuej2i41)); }
                    if (valuej3i41.size() > 0) { result.add((42) + "," + state3 + "," + getMax(valuej3i41) + "," + getMin(valuej3i41) + "," + getAve(valuej3i41) + "," + get95p(valuej3i41)); }
                    if (valuej1i42.size() > 0) { result.add((43) + "," + state1 + "," + getMax(valuej1i42) + "," + getMin(valuej1i42) + "," + getAve(valuej1i42) + "," + get95p(valuej1i42)); }
                    if (valuej2i42.size() > 0) { result.add((43) + "," + state2 + "," + getMax(valuej2i42) + "," + getMin(valuej2i42) + "," + getAve(valuej2i42) + "," + get95p(valuej2i42)); }
                    if (valuej3i42.size() > 0) { result.add((43) + "," + state3 + "," + getMax(valuej3i42) + "," + getMin(valuej3i42) + "," + getAve(valuej3i42) + "," + get95p(valuej3i42)); }
                    if (valuej1i43.size() > 0) { result.add((44) + "," + state1 + "," + getMax(valuej1i43) + "," + getMin(valuej1i43) + "," + getAve(valuej1i43) + "," + get95p(valuej1i43)); }
                    if (valuej2i43.size() > 0) { result.add((44) + "," + state2 + "," + getMax(valuej2i43) + "," + getMin(valuej2i43) + "," + getAve(valuej2i43) + "," + get95p(valuej2i43)); }
                    if (valuej3i43.size() > 0) { result.add((44) + "," + state3 + "," + getMax(valuej3i43) + "," + getMin(valuej3i43) + "," + getAve(valuej3i43) + "," + get95p(valuej3i43)); }
                    if (valuej1i44.size() > 0) { result.add((45) + "," + state1 + "," + getMax(valuej1i44) + "," + getMin(valuej1i44) + "," + getAve(valuej1i44) + "," + get95p(valuej1i44)); }
                    if (valuej2i44.size() > 0) { result.add((45) + "," + state2 + "," + getMax(valuej2i44) + "," + getMin(valuej2i44) + "," + getAve(valuej2i44) + "," + get95p(valuej2i44)); }
                    if (valuej3i44.size() > 0) { result.add((45) + "," + state3 + "," + getMax(valuej3i44) + "," + getMin(valuej3i44) + "," + getAve(valuej3i44) + "," + get95p(valuej3i44)); }
                    if (valuej1i45.size() > 0) { result.add((46) + "," + state1 + "," + getMax(valuej1i45) + "," + getMin(valuej1i45) + "," + getAve(valuej1i45) + "," + get95p(valuej1i45)); }
                    if (valuej2i45.size() > 0) { result.add((46) + "," + state2 + "," + getMax(valuej2i45) + "," + getMin(valuej2i45) + "," + getAve(valuej2i45) + "," + get95p(valuej2i45)); }
                    if (valuej3i45.size() > 0) { result.add((46) + "," + state3 + "," + getMax(valuej3i45) + "," + getMin(valuej3i45) + "," + getAve(valuej3i45) + "," + get95p(valuej3i45)); }
                    if (valuej1i46.size() > 0) { result.add((47) + "," + state1 + "," + getMax(valuej1i46) + "," + getMin(valuej1i46) + "," + getAve(valuej1i46) + "," + get95p(valuej1i46)); }
                    if (valuej2i46.size() > 0) { result.add((47) + "," + state2 + "," + getMax(valuej2i46) + "," + getMin(valuej2i46) + "," + getAve(valuej2i46) + "," + get95p(valuej2i46)); }
                    if (valuej3i46.size() > 0) { result.add((47) + "," + state3 + "," + getMax(valuej3i46) + "," + getMin(valuej3i46) + "," + getAve(valuej3i46) + "," + get95p(valuej3i46)); }
                    if (valuej1i47.size() > 0) { result.add((48) + "," + state1 + "," + getMax(valuej1i47) + "," + getMin(valuej1i47) + "," + getAve(valuej1i47) + "," + get95p(valuej1i47)); }
                    if (valuej2i47.size() > 0) { result.add((48) + "," + state2 + "," + getMax(valuej2i47) + "," + getMin(valuej2i47) + "," + getAve(valuej2i47) + "," + get95p(valuej2i47)); }
                    if (valuej3i47.size() > 0) { result.add((48) + "," + state3 + "," + getMax(valuej3i47) + "," + getMin(valuej3i47) + "," + getAve(valuej3i47) + "," + get95p(valuej3i47)); }
                    if (valuej1i48.size() > 0) { result.add((49) + "," + state1 + "," + getMax(valuej1i48) + "," + getMin(valuej1i48) + "," + getAve(valuej1i48) + "," + get95p(valuej1i48)); }
                    if (valuej2i48.size() > 0) { result.add((49) + "," + state2 + "," + getMax(valuej2i48) + "," + getMin(valuej2i48) + "," + getAve(valuej2i48) + "," + get95p(valuej2i48)); }
                    if (valuej3i48.size() > 0) { result.add((49) + "," + state3 + "," + getMax(valuej3i48) + "," + getMin(valuej3i48) + "," + getAve(valuej3i48) + "," + get95p(valuej3i48)); }
                    if (valuej1i49.size() > 0) { result.add((50) + "," + state1 + "," + getMax(valuej1i49) + "," + getMin(valuej1i49) + "," + getAve(valuej1i49) + "," + get95p(valuej1i49)); }
                    if (valuej2i49.size() > 0) { result.add((50) + "," + state2 + "," + getMax(valuej2i49) + "," + getMin(valuej2i49) + "," + getAve(valuej2i49) + "," + get95p(valuej2i49)); }
                    if (valuej3i49.size() > 0) { result.add((50) + "," + state3 + "," + getMax(valuej3i49) + "," + getMin(valuej3i49) + "," + getAve(valuej3i49) + "," + get95p(valuej3i49)); }
                    if (valuej1i50.size() > 0) { result.add((51) + "," + state1 + "," + getMax(valuej1i50) + "," + getMin(valuej1i50) + "," + getAve(valuej1i50) + "," + get95p(valuej1i50)); }
                    if (valuej2i50.size() > 0) { result.add((51) + "," + state2 + "," + getMax(valuej2i50) + "," + getMin(valuej2i50) + "," + getAve(valuej2i50) + "," + get95p(valuej2i50)); }
                    if (valuej3i50.size() > 0) { result.add((51) + "," + state3 + "," + getMax(valuej3i50) + "," + getMin(valuej3i50) + "," + getAve(valuej3i50) + "," + get95p(valuej3i50)); }

        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHCresultBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {

            String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";

            List<PowerxbMonitor> pblist = hbsessionDao.search(sql);

            if(pblist != null){
                for (int pbidx = 0; pbidx < pblist.size(); pbidx++) {
                    PowerxbMonitor obj = pblist.get(pbidx);

                    double dvaluej1i2 = obj.getI1Va2();
                    double dvaluej2i2 = obj.getI2Va2();
                    double dvaluej3i2 = obj.getI3Va2();
                    double dvaluej1i3 = obj.getI1Va3();
                    double dvaluej2i3 = obj.getI2Va3();
                    double dvaluej3i3 = obj.getI3Va3();
                    double dvaluej1i4 = obj.getI1Va4();
                    double dvaluej2i4 = obj.getI2Va4();
                    double dvaluej3i4 = obj.getI3Va4();
                    double dvaluej1i5 = obj.getI1Va5();
                    double dvaluej2i5 = obj.getI2Va5();
                    double dvaluej3i5 = obj.getI3Va5();
                    double dvaluej1i6 = obj.getI1Va6();
                    double dvaluej2i6 = obj.getI2Va6();
                    double dvaluej3i6 = obj.getI3Va6();
                    double dvaluej1i7 = obj.getI1Va7();
                    double dvaluej2i7 = obj.getI2Va7();
                    double dvaluej3i7 = obj.getI3Va7();
                    double dvaluej1i8 = obj.getI1Va8();
                    double dvaluej2i8 = obj.getI2Va8();
                    double dvaluej3i8 = obj.getI3Va8();
                    double dvaluej1i9 = obj.getI1Va9();
                    double dvaluej2i9 = obj.getI2Va9();
                    double dvaluej3i9 = obj.getI3Va9();
                    double dvaluej1i10 = obj.getI1Va10();
                    double dvaluej2i10 = obj.getI2Va10();
                    double dvaluej3i10 = obj.getI3Va10();

                    double dvaluej1i11 = obj.getI1Va11();
                    double dvaluej2i11 = obj.getI2Va11();
                    double dvaluej3i11 = obj.getI3Va11();
                    double dvaluej1i12 = obj.getI1Va12();
                    double dvaluej2i12 = obj.getI2Va12();
                    double dvaluej3i12 = obj.getI3Va12();
                    double dvaluej1i13 = obj.getI1Va13();
                    double dvaluej2i13 = obj.getI2Va13();
                    double dvaluej3i13 = obj.getI3Va13();
                    double dvaluej1i14 = obj.getI1Va14();
                    double dvaluej2i14 = obj.getI2Va14();
                    double dvaluej3i14 = obj.getI3Va14();
                    double dvaluej1i15 = obj.getI1Va15();
                    double dvaluej2i15 = obj.getI2Va15();
                    double dvaluej3i15 = obj.getI3Va15();
                    double dvaluej1i16 = obj.getI1Va16();
                    double dvaluej2i16 = obj.getI2Va16();
                    double dvaluej3i16 = obj.getI3Va16();
                    double dvaluej1i17 = obj.getI1Va17();
                    double dvaluej2i17 = obj.getI2Va17();
                    double dvaluej3i17 = obj.getI3Va17();
                    double dvaluej1i18 = obj.getI1Va18();
                    double dvaluej2i18 = obj.getI2Va18();
                    double dvaluej3i18 = obj.getI3Va18();
                    double dvaluej1i19 = obj.getI1Va19();
                    double dvaluej2i19 = obj.getI2Va19();
                    double dvaluej3i19 = obj.getI3Va19();
                    double dvaluej1i20 = obj.getI1Va20();
                    double dvaluej2i20 = obj.getI2Va20();
                    double dvaluej3i20 = obj.getI3Va20();

                    double dvaluej1i21 = obj.getI1Va21();
                    double dvaluej2i21 = obj.getI2Va21();
                    double dvaluej3i21 = obj.getI3Va21();
                    double dvaluej1i22 = obj.getI1Va22();
                    double dvaluej2i22 = obj.getI2Va22();
                    double dvaluej3i22 = obj.getI3Va22();
                    double dvaluej1i23 = obj.getI1Va23();
                    double dvaluej2i23 = obj.getI2Va23();
                    double dvaluej3i23 = obj.getI3Va23();
                    double dvaluej1i24 = obj.getI1Va24();
                    double dvaluej2i24 = obj.getI2Va24();
                    double dvaluej3i24 = obj.getI3Va24();
                    double dvaluej1i25 = obj.getI1Va25();
                    double dvaluej2i25 = obj.getI2Va25();
                    double dvaluej3i25 = obj.getI3Va25();
                    double dvaluej1i26 = obj.getI1Va26();
                    double dvaluej2i26 = obj.getI2Va26();
                    double dvaluej3i26 = obj.getI3Va26();
                    double dvaluej1i27 = obj.getI1Va27();
                    double dvaluej2i27 = obj.getI2Va27();
                    double dvaluej3i27 = obj.getI3Va27();
                    double dvaluej1i28 = obj.getI1Va28();
                    double dvaluej2i28 = obj.getI2Va28();
                    double dvaluej3i28 = obj.getI3Va28();
                    double dvaluej1i29 = obj.getI1Va29();
                    double dvaluej2i29 = obj.getI2Va29();
                    double dvaluej3i29 = obj.getI3Va29();
                    double dvaluej1i30 = obj.getI1Va30();
                    double dvaluej2i30 = obj.getI2Va30();
                    double dvaluej3i30 = obj.getI3Va30();

                    double dvaluej1i31 = obj.getI1Va31();
                    double dvaluej2i31 = obj.getI2Va31();
                    double dvaluej3i31 = obj.getI3Va31();
                    double dvaluej1i32 = obj.getI1Va32();
                    double dvaluej2i32 = obj.getI2Va32();
                    double dvaluej3i32 = obj.getI3Va32();
                    double dvaluej1i33 = obj.getI1Va33();
                    double dvaluej2i33 = obj.getI2Va33();
                    double dvaluej3i33 = obj.getI3Va33();
                    double dvaluej1i34 = obj.getI1Va34();
                    double dvaluej2i34 = obj.getI2Va34();
                    double dvaluej3i34 = obj.getI3Va34();
                    double dvaluej1i35 = obj.getI1Va35();
                    double dvaluej2i35 = obj.getI2Va35();
                    double dvaluej3i35 = obj.getI3Va35();
                    double dvaluej1i36 = obj.getI1Va36();
                    double dvaluej2i36 = obj.getI2Va36();
                    double dvaluej3i36 = obj.getI3Va36();
                    double dvaluej1i37 = obj.getI1Va37();
                    double dvaluej2i37 = obj.getI2Va37();
                    double dvaluej3i37 = obj.getI3Va37();
                    double dvaluej1i38 = obj.getI1Va38();
                    double dvaluej2i38 = obj.getI2Va38();
                    double dvaluej3i38 = obj.getI3Va38();
                    double dvaluej1i39 = obj.getI1Va39();
                    double dvaluej2i39 = obj.getI2Va39();
                    double dvaluej3i39 = obj.getI3Va39();
                    double dvaluej1i40 = obj.getI1Va40();
                    double dvaluej2i40 = obj.getI2Va40();
                    double dvaluej3i40 = obj.getI3Va40();

                    double dvaluej1i41 = obj.getI1Va41();
                    double dvaluej2i41 = obj.getI2Va41();
                    double dvaluej3i41 = obj.getI3Va41();
                    double dvaluej1i42 = obj.getI1Va42();
                    double dvaluej2i42 = obj.getI2Va42();
                    double dvaluej3i42 = obj.getI3Va42();
                    double dvaluej1i43 = obj.getI1Va43();
                    double dvaluej2i43 = obj.getI2Va43();
                    double dvaluej3i43 = obj.getI3Va43();
                    double dvaluej1i44 = obj.getI1Va44();
                    double dvaluej2i44 = obj.getI2Va44();
                    double dvaluej3i44 = obj.getI3Va44();
                    double dvaluej1i45 = obj.getI1Va45();
                    double dvaluej2i45 = obj.getI2Va45();
                    double dvaluej3i45 = obj.getI3Va45();
                    double dvaluej1i46 = obj.getI1Va46();
                    double dvaluej2i46 = obj.getI2Va46();
                    double dvaluej3i46 = obj.getI3Va46();
                    double dvaluej1i47 = obj.getI1Va47();
                    double dvaluej2i47 = obj.getI2Va47();
                    double dvaluej3i47 = obj.getI3Va47();
                    double dvaluej1i48 = obj.getI1Va48();
                    double dvaluej2i48 = obj.getI2Va48();
                    double dvaluej3i48 = obj.getI3Va48();
                    double dvaluej1i49 = obj.getI1Va49();
                    double dvaluej2i49 = obj.getI2Va49();
                    double dvaluej3i49 = obj.getI3Va49();
                    double dvaluej1i50 = obj.getI1Va50();
                    double dvaluej2i50 = obj.getI2Va50();
                    double dvaluej3i50 = obj.getI3Va50();

                    valuej1i2.add(dvaluej1i2);
                    valuej2i2.add(dvaluej2i2);
                    valuej3i2.add(dvaluej3i2);
                    valuej1i3.add(dvaluej1i3);
                    valuej2i3.add(dvaluej2i3);
                    valuej3i3.add(dvaluej3i3);
                    valuej1i4.add(dvaluej1i4);
                    valuej2i4.add(dvaluej2i4);
                    valuej3i4.add(dvaluej3i4);
                    valuej1i5.add(dvaluej1i5);
                    valuej2i5.add(dvaluej2i5);
                    valuej3i5.add(dvaluej3i5);
                    valuej1i6.add(dvaluej1i6);
                    valuej2i6.add(dvaluej2i6);
                    valuej3i6.add(dvaluej3i6);
                    valuej1i7.add(dvaluej1i7);
                    valuej2i7.add(dvaluej2i7);
                    valuej3i7.add(dvaluej3i7);
                    valuej1i8.add(dvaluej1i8);
                    valuej2i8.add(dvaluej2i8);
                    valuej3i8.add(dvaluej3i8);
                    valuej1i9.add(dvaluej1i9);
                    valuej2i9.add(dvaluej2i9);
                    valuej3i9.add(dvaluej3i9);
                    valuej1i10.add(dvaluej1i10);
                    valuej2i10.add(dvaluej2i10);
                    valuej3i10.add(dvaluej3i10);

                    valuej1i11.add(dvaluej1i11);
                    valuej2i11.add(dvaluej2i11);
                    valuej3i11.add(dvaluej3i11);
                    valuej1i12.add(dvaluej1i12);
                    valuej2i12.add(dvaluej2i12);
                    valuej3i12.add(dvaluej3i12);
                    valuej1i13.add(dvaluej1i13);
                    valuej2i13.add(dvaluej2i13);
                    valuej3i13.add(dvaluej3i13);
                    valuej1i14.add(dvaluej1i14);
                    valuej2i14.add(dvaluej2i14);
                    valuej3i14.add(dvaluej3i14);
                    valuej1i15.add(dvaluej1i15);
                    valuej2i15.add(dvaluej2i15);
                    valuej3i15.add(dvaluej3i15);
                    valuej1i16.add(dvaluej1i16);
                    valuej2i16.add(dvaluej2i16);
                    valuej3i16.add(dvaluej3i16);
                    valuej1i17.add(dvaluej1i17);
                    valuej2i17.add(dvaluej2i17);
                    valuej3i17.add(dvaluej3i17);
                    valuej1i18.add(dvaluej1i18);
                    valuej2i18.add(dvaluej2i18);
                    valuej3i18.add(dvaluej3i18);
                    valuej1i19.add(dvaluej1i19);
                    valuej2i19.add(dvaluej2i19);
                    valuej3i19.add(dvaluej3i19);
                    valuej1i20.add(dvaluej1i20);
                    valuej2i20.add(dvaluej2i20);
                    valuej3i20.add(dvaluej3i20);

                    valuej1i21.add(dvaluej1i21);
                    valuej2i21.add(dvaluej2i21);
                    valuej3i21.add(dvaluej3i21);
                    valuej1i22.add(dvaluej1i22);
                    valuej2i22.add(dvaluej2i22);
                    valuej3i22.add(dvaluej3i22);
                    valuej1i23.add(dvaluej1i23);
                    valuej2i23.add(dvaluej2i23);
                    valuej3i23.add(dvaluej3i23);
                    valuej1i24.add(dvaluej1i24);
                    valuej2i24.add(dvaluej2i24);
                    valuej3i24.add(dvaluej3i24);
                    valuej1i25.add(dvaluej1i25);
                    valuej2i25.add(dvaluej2i25);
                    valuej3i25.add(dvaluej3i25);
                    valuej1i26.add(dvaluej1i26);
                    valuej2i26.add(dvaluej2i26);
                    valuej3i26.add(dvaluej3i26);
                    valuej1i27.add(dvaluej1i27);
                    valuej2i27.add(dvaluej2i27);
                    valuej3i27.add(dvaluej3i27);
                    valuej1i28.add(dvaluej1i28);
                    valuej2i28.add(dvaluej2i28);
                    valuej3i28.add(dvaluej3i28);
                    valuej1i29.add(dvaluej1i29);
                    valuej2i29.add(dvaluej2i29);
                    valuej3i29.add(dvaluej3i29);
                    valuej1i30.add(dvaluej1i30);
                    valuej2i30.add(dvaluej2i30);
                    valuej3i30.add(dvaluej3i30);

                    valuej1i31.add(dvaluej1i31);
                    valuej2i31.add(dvaluej2i31);
                    valuej3i31.add(dvaluej3i31);
                    valuej1i32.add(dvaluej1i32);
                    valuej2i32.add(dvaluej2i32);
                    valuej3i32.add(dvaluej3i32);
                    valuej1i33.add(dvaluej1i33);
                    valuej2i33.add(dvaluej2i33);
                    valuej3i33.add(dvaluej3i33);
                    valuej1i34.add(dvaluej1i34);
                    valuej2i34.add(dvaluej2i34);
                    valuej3i34.add(dvaluej3i34);
                    valuej1i35.add(dvaluej1i35);
                    valuej2i35.add(dvaluej2i35);
                    valuej3i35.add(dvaluej3i35);
                    valuej1i36.add(dvaluej1i36);
                    valuej2i36.add(dvaluej2i36);
                    valuej3i36.add(dvaluej3i36);
                    valuej1i37.add(dvaluej1i37);
                    valuej2i37.add(dvaluej2i37);
                    valuej3i37.add(dvaluej3i37);
                    valuej1i38.add(dvaluej1i38);
                    valuej2i38.add(dvaluej2i38);
                    valuej3i38.add(dvaluej3i38);
                    valuej1i39.add(dvaluej1i39);
                    valuej2i39.add(dvaluej2i39);
                    valuej3i39.add(dvaluej3i39);
                    valuej1i40.add(dvaluej1i40);
                    valuej2i40.add(dvaluej2i40);
                    valuej3i40.add(dvaluej3i40);

                    valuej1i41.add(dvaluej1i41);
                    valuej2i41.add(dvaluej2i41);
                    valuej3i41.add(dvaluej3i41);
                    valuej1i42.add(dvaluej1i42);
                    valuej2i42.add(dvaluej2i42);
                    valuej3i42.add(dvaluej3i42);
                    valuej1i43.add(dvaluej1i43);
                    valuej2i43.add(dvaluej2i43);
                    valuej3i43.add(dvaluej3i43);
                    valuej1i44.add(dvaluej1i44);
                    valuej2i44.add(dvaluej2i44);
                    valuej3i44.add(dvaluej3i44);
                    valuej1i45.add(dvaluej1i45);
                    valuej2i45.add(dvaluej2i45);
                    valuej3i45.add(dvaluej3i45);
                    valuej1i46.add(dvaluej1i46);
                    valuej2i46.add(dvaluej2i46);
                    valuej3i46.add(dvaluej3i46);
                    valuej1i47.add(dvaluej1i47);
                    valuej2i47.add(dvaluej2i47);
                    valuej3i47.add(dvaluej3i47);
                    valuej1i48.add(dvaluej1i48);
                    valuej2i48.add(dvaluej2i48);
                    valuej3i48.add(dvaluej3i48);
                    valuej1i49.add(dvaluej1i49);
                    valuej2i49.add(dvaluej2i49);
                    valuej3i49.add(dvaluej3i49);
                    valuej1i50.add(dvaluej1i50);
                    valuej2i50.add(dvaluej2i50);
                    valuej3i50.add(dvaluej3i50);
                }
            }

            String nullstra = "," + state1 + "," + null + "," + null + "," + null + "," + null;
            String nullstrb = "," + state2 + "," + null + "," + null + "," + null + "," + null;
            String nullstrc = "," + state3 + "," + null + "," + null + "," + null + "," + null;

            if (valuej1i2.size() == 0) { result.add((3) + nullstra); }
            if (valuej2i2.size() == 0) { result.add((3) + nullstrb); }
            if (valuej3i2.size() == 0) { result.add((3) + nullstrc); }
            if (valuej1i3.size() == 0) { result.add((4) + nullstra); }
            if (valuej2i3.size() == 0) { result.add((4) + nullstrb); }
            if (valuej3i3.size() == 0) { result.add((4) + nullstrc); }
            if (valuej1i4.size() == 0) { result.add((5) + nullstra); }
            if (valuej2i4.size() == 0) { result.add((5) + nullstrb); }
            if (valuej3i4.size() == 0) { result.add((5) + nullstrc); }
            if (valuej1i5.size() == 0) { result.add((6) + nullstra); }
            if (valuej2i5.size() == 0) { result.add((6) + nullstrb); }
            if (valuej3i5.size() == 0) { result.add((6) + nullstrc); }
            if (valuej1i6.size() == 0) { result.add((7) + nullstra); }
            if (valuej2i6.size() == 0) { result.add((7) + nullstrb); }
            if (valuej3i6.size() == 0) { result.add((7) + nullstrc); }
            if (valuej1i7.size() == 0) { result.add((8) + nullstra); }
            if (valuej2i7.size() == 0) { result.add((8) + nullstrb); }
            if (valuej3i7.size() == 0) { result.add((8) + nullstrc); }
            if (valuej1i8.size() == 0) { result.add((9) + nullstra); }
            if (valuej2i8.size() == 0) { result.add((9) + nullstrb); }
            if (valuej3i8.size() == 0) { result.add((9) + nullstrc); }
            if (valuej1i9.size() == 0) { result.add((10) + nullstra); }
            if (valuej2i9.size() == 0) { result.add((10) + nullstrb); }
            if (valuej3i9.size() == 0) { result.add((10) + nullstrc); }
            if (valuej1i10.size() == 0) { result.add((11) + nullstra); }
            if (valuej2i10.size() == 0) { result.add((11) + nullstrb); }
            if (valuej3i10.size() == 0) { result.add((11) + nullstrc); }
            if (valuej1i11.size() == 0) { result.add((12) + nullstra); }
            if (valuej2i11.size() == 0) { result.add((12) + nullstrb); }
            if (valuej3i11.size() == 0) { result.add((12) + nullstrc); }
            if (valuej1i12.size() == 0) { result.add((13) + nullstra); }
            if (valuej2i12.size() == 0) { result.add((13) + nullstrb); }
            if (valuej3i12.size() == 0) { result.add((13) + nullstrc); }
            if (valuej1i13.size() == 0) { result.add((14) + nullstra); }
            if (valuej2i13.size() == 0) { result.add((14) + nullstrb); }
            if (valuej3i13.size() == 0) { result.add((14) + nullstrc); }
            if (valuej1i14.size() == 0) { result.add((15) + nullstra); }
            if (valuej2i14.size() == 0) { result.add((15) + nullstrb); }
            if (valuej3i14.size() == 0) { result.add((15) + nullstrc); }
            if (valuej1i15.size() == 0) { result.add((16) + nullstra); }
            if (valuej2i15.size() == 0) { result.add((16) + nullstrb); }
            if (valuej3i15.size() == 0) { result.add((16) + nullstrc); }
            if (valuej1i16.size() == 0) { result.add((17) + nullstra); }
            if (valuej2i16.size() == 0) { result.add((17) + nullstrb); }
            if (valuej3i16.size() == 0) { result.add((17) + nullstrc); }
            if (valuej1i17.size() == 0) { result.add((18) + nullstra); }
            if (valuej2i17.size() == 0) { result.add((18) + nullstrb); }
            if (valuej3i17.size() == 0) { result.add((18) + nullstrc); }
            if (valuej1i18.size() == 0) { result.add((19) + nullstra); }
            if (valuej2i18.size() == 0) { result.add((19) + nullstrb); }
            if (valuej3i18.size() == 0) { result.add((19) + nullstrc); }
            if (valuej1i19.size() == 0) { result.add((20) + nullstra); }
            if (valuej2i19.size() == 0) { result.add((20) + nullstrb); }
            if (valuej3i19.size() == 0) { result.add((20) + nullstrc); }
            if (valuej1i20.size() == 0) { result.add((21) + nullstra); }
            if (valuej2i20.size() == 0) { result.add((21) + nullstrb); }
            if (valuej3i20.size() == 0) { result.add((21) + nullstrc); }
            if (valuej1i21.size() == 0) { result.add((22) + nullstra); }
            if (valuej2i21.size() == 0) { result.add((22) + nullstrb); }
            if (valuej3i21.size() == 0) { result.add((22) + nullstrc); }
            if (valuej1i22.size() == 0) { result.add((23) + nullstra); }
            if (valuej2i22.size() == 0) { result.add((23) + nullstrb); }
            if (valuej3i22.size() == 0) { result.add((23) + nullstrc); }
            if (valuej1i23.size() == 0) { result.add((24) + nullstra); }
            if (valuej2i23.size() == 0) { result.add((24) + nullstrb); }
            if (valuej3i23.size() == 0) { result.add((24) + nullstrc); }
            if (valuej1i24.size() == 0) { result.add((25) + nullstra); }
            if (valuej2i24.size() == 0) { result.add((25) + nullstrb); }
            if (valuej3i24.size() == 0) { result.add((25) + nullstrc); }
            if (valuej1i25.size() == 0) { result.add((26) + nullstra); }
            if (valuej2i25.size() == 0) { result.add((26) + nullstrb); }
            if (valuej3i25.size() == 0) { result.add((26) + nullstrc); }
            if (valuej1i26.size() == 0) { result.add((27) + nullstra); }
            if (valuej2i26.size() == 0) { result.add((27) + nullstrb); }
            if (valuej3i26.size() == 0) { result.add((27) + nullstrc); }
            if (valuej1i27.size() == 0) { result.add((28) + nullstra); }
            if (valuej2i27.size() == 0) { result.add((28) + nullstrb); }
            if (valuej3i27.size() == 0) { result.add((28) + nullstrc); }
            if (valuej1i28.size() == 0) { result.add((29) + nullstra); }
            if (valuej2i28.size() == 0) { result.add((29) + nullstrb); }
            if (valuej3i28.size() == 0) { result.add((29) + nullstrc); }
            if (valuej1i29.size() == 0) { result.add((30) + nullstra); }
            if (valuej2i29.size() == 0) { result.add((30) + nullstrb); }
            if (valuej3i29.size() == 0) { result.add((30) + nullstrc); }
            if (valuej1i30.size() == 0) { result.add((31) + nullstra); }
            if (valuej2i30.size() == 0) { result.add((31) + nullstrb); }
            if (valuej3i30.size() == 0) { result.add((31) + nullstrc); }
            if (valuej1i31.size() == 0) { result.add((32) + nullstra); }
            if (valuej2i31.size() == 0) { result.add((32) + nullstrb); }
            if (valuej3i31.size() == 0) { result.add((32) + nullstrc); }
            if (valuej1i32.size() == 0) { result.add((33) + nullstra); }
            if (valuej2i32.size() == 0) { result.add((33) + nullstrb); }
            if (valuej3i32.size() == 0) { result.add((33) + nullstrc); }
            if (valuej1i33.size() == 0) { result.add((34) + nullstra); }
            if (valuej2i33.size() == 0) { result.add((34) + nullstrb); }
            if (valuej3i33.size() == 0) { result.add((34) + nullstrc); }
            if (valuej1i34.size() == 0) { result.add((35) + nullstra); }
            if (valuej2i34.size() == 0) { result.add((35) + nullstrb); }
            if (valuej3i34.size() == 0) { result.add((35) + nullstrc); }
            if (valuej1i35.size() == 0) { result.add((36) + nullstra); }
            if (valuej2i35.size() == 0) { result.add((36) + nullstrb); }
            if (valuej3i35.size() == 0) { result.add((36) + nullstrc); }
            if (valuej1i36.size() == 0) { result.add((37) + nullstra); }
            if (valuej2i36.size() == 0) { result.add((37) + nullstrb); }
            if (valuej3i36.size() == 0) { result.add((37) + nullstrc); }
            if (valuej1i37.size() == 0) { result.add((38) + nullstra); }
            if (valuej2i37.size() == 0) { result.add((38) + nullstrb); }
            if (valuej3i37.size() == 0) { result.add((38) + nullstrc); }
            if (valuej1i38.size() == 0) { result.add((39) + nullstra); }
            if (valuej2i38.size() == 0) { result.add((39) + nullstrb); }
            if (valuej3i38.size() == 0) { result.add((39) + nullstrc); }
            if (valuej1i39.size() == 0) { result.add((40) + nullstra); }
            if (valuej2i39.size() == 0) { result.add((40) + nullstrb); }
            if (valuej3i39.size() == 0) { result.add((40) + nullstrc); }
            if (valuej1i40.size() == 0) { result.add((41) + nullstra); }
            if (valuej2i40.size() == 0) { result.add((41) + nullstrb); }
            if (valuej3i40.size() == 0) { result.add((41) + nullstrc); }
            if (valuej1i41.size() == 0) { result.add((42) + nullstra); }
            if (valuej2i41.size() == 0) { result.add((42) + nullstrb); }
            if (valuej3i41.size() == 0) { result.add((42) + nullstrc); }
            if (valuej1i42.size() == 0) { result.add((43) + nullstra); }
            if (valuej2i42.size() == 0) { result.add((43) + nullstrb); }
            if (valuej3i42.size() == 0) { result.add((43) + nullstrc); }
            if (valuej1i43.size() == 0) { result.add((44) + nullstra); }
            if (valuej2i43.size() == 0) { result.add((44) + nullstrb); }
            if (valuej3i43.size() == 0) { result.add((44) + nullstrc); }
            if (valuej1i44.size() == 0) { result.add((45) + nullstra); }
            if (valuej2i44.size() == 0) { result.add((45) + nullstrb); }
            if (valuej3i44.size() == 0) { result.add((45) + nullstrc); }
            if (valuej1i45.size() == 0) { result.add((46) + nullstra); }
            if (valuej2i45.size() == 0) { result.add((46) + nullstrb); }
            if (valuej3i45.size() == 0) { result.add((46) + nullstrc); }
            if (valuej1i46.size() == 0) { result.add((47) + nullstra); }
            if (valuej2i46.size() == 0) { result.add((47) + nullstrb); }
            if (valuej3i46.size() == 0) { result.add((47) + nullstrc); }
            if (valuej1i47.size() == 0) { result.add((48) + nullstra); }
            if (valuej2i47.size() == 0) { result.add((48) + nullstrb); }
            if (valuej3i47.size() == 0) { result.add((48) + nullstrc); }
            if (valuej1i48.size() == 0) { result.add((49) + nullstra); }
            if (valuej2i48.size() == 0) { result.add((49) + nullstrb); }
            if (valuej3i48.size() == 0) { result.add((49) + nullstrc); }
            if (valuej1i49.size() == 0) { result.add((50) + nullstra); }
            if (valuej2i49.size() == 0) { result.add((50) + nullstrb); }
            if (valuej3i49.size() == 0) { result.add((50) + nullstrc); }
            if (valuej1i50.size() == 0) { result.add((51) + nullstra); }
            if (valuej2i50.size() == 0) { result.add((51) + nullstrb); }
            if (valuej3i50.size() == 0) { result.add((51) + nullstrc); }

            if (valuej1i2.size() > 0) { result.add((3) + "," + state1 + "," + getMax(valuej1i2) + "," + getMin(valuej1i2) + "," + getAve(valuej1i2) + "," + get95p(valuej1i2)); }
            if (valuej2i2.size() > 0) { result.add((3) + "," + state2 + "," + getMax(valuej2i2) + "," + getMin(valuej2i2) + "," + getAve(valuej2i2) + "," + get95p(valuej2i2)); }
            if (valuej3i2.size() > 0) { result.add((3) + "," + state3 + "," + getMax(valuej3i2) + "," + getMin(valuej3i2) + "," + getAve(valuej3i2) + "," + get95p(valuej3i2)); }
            if (valuej1i3.size() > 0) { result.add((4) + "," + state1 + "," + getMax(valuej1i3) + "," + getMin(valuej1i3) + "," + getAve(valuej1i3) + "," + get95p(valuej1i3)); }
            if (valuej2i3.size() > 0) { result.add((4) + "," + state2 + "," + getMax(valuej2i3) + "," + getMin(valuej2i3) + "," + getAve(valuej2i3) + "," + get95p(valuej2i3)); }
            if (valuej3i3.size() > 0) { result.add((4) + "," + state3 + "," + getMax(valuej3i3) + "," + getMin(valuej3i3) + "," + getAve(valuej3i3) + "," + get95p(valuej3i3)); }
            if (valuej1i4.size() > 0) { result.add((5) + "," + state1 + "," + getMax(valuej1i4) + "," + getMin(valuej1i4) + "," + getAve(valuej1i4) + "," + get95p(valuej1i4)); }
            if (valuej2i4.size() > 0) { result.add((5) + "," + state2 + "," + getMax(valuej2i4) + "," + getMin(valuej2i4) + "," + getAve(valuej2i4) + "," + get95p(valuej2i4)); }
            if (valuej3i4.size() > 0) { result.add((5) + "," + state3 + "," + getMax(valuej3i4) + "," + getMin(valuej3i4) + "," + getAve(valuej3i4) + "," + get95p(valuej3i4)); }
            if (valuej1i5.size() > 0) { result.add((6) + "," + state1 + "," + getMax(valuej1i5) + "," + getMin(valuej1i5) + "," + getAve(valuej1i5) + "," + get95p(valuej1i5)); }
            if (valuej2i5.size() > 0) { result.add((6) + "," + state2 + "," + getMax(valuej2i5) + "," + getMin(valuej2i5) + "," + getAve(valuej2i5) + "," + get95p(valuej2i5)); }
            if (valuej3i5.size() > 0) { result.add((6) + "," + state3 + "," + getMax(valuej3i5) + "," + getMin(valuej3i5) + "," + getAve(valuej3i5) + "," + get95p(valuej3i5)); }
            if (valuej1i6.size() > 0) { result.add((7) + "," + state1 + "," + getMax(valuej1i6) + "," + getMin(valuej1i6) + "," + getAve(valuej1i6) + "," + get95p(valuej1i6)); }
            if (valuej2i6.size() > 0) { result.add((7) + "," + state2 + "," + getMax(valuej2i6) + "," + getMin(valuej2i6) + "," + getAve(valuej2i6) + "," + get95p(valuej2i6)); }
            if (valuej3i6.size() > 0) { result.add((7) + "," + state3 + "," + getMax(valuej3i6) + "," + getMin(valuej3i6) + "," + getAve(valuej3i6) + "," + get95p(valuej3i6)); }
            if (valuej1i7.size() > 0) { result.add((8) + "," + state1 + "," + getMax(valuej1i7) + "," + getMin(valuej1i7) + "," + getAve(valuej1i7) + "," + get95p(valuej1i7)); }
            if (valuej2i7.size() > 0) { result.add((8) + "," + state2 + "," + getMax(valuej2i7) + "," + getMin(valuej2i7) + "," + getAve(valuej2i7) + "," + get95p(valuej2i7)); }
            if (valuej3i7.size() > 0) { result.add((8) + "," + state3 + "," + getMax(valuej3i7) + "," + getMin(valuej3i7) + "," + getAve(valuej3i7) + "," + get95p(valuej3i7)); }
            if (valuej1i8.size() > 0) { result.add((9) + "," + state1 + "," + getMax(valuej1i8) + "," + getMin(valuej1i8) + "," + getAve(valuej1i8) + "," + get95p(valuej1i8)); }
            if (valuej2i8.size() > 0) { result.add((9) + "," + state2 + "," + getMax(valuej2i8) + "," + getMin(valuej2i8) + "," + getAve(valuej2i8) + "," + get95p(valuej2i8)); }
            if (valuej3i8.size() > 0) { result.add((9) + "," + state3 + "," + getMax(valuej3i8) + "," + getMin(valuej3i8) + "," + getAve(valuej3i8) + "," + get95p(valuej3i8)); }
            if (valuej1i9.size() > 0) { result.add((10) + "," + state1 + "," + getMax(valuej1i9) + "," + getMin(valuej1i9) + "," + getAve(valuej1i9) + "," + get95p(valuej1i9)); }
            if (valuej2i9.size() > 0) { result.add((10) + "," + state2 + "," + getMax(valuej2i9) + "," + getMin(valuej2i9) + "," + getAve(valuej2i9) + "," + get95p(valuej2i9)); }
            if (valuej3i9.size() > 0) { result.add((10) + "," + state3 + "," + getMax(valuej3i9) + "," + getMin(valuej3i9) + "," + getAve(valuej3i9) + "," + get95p(valuej3i9)); }
            if (valuej1i10.size() > 0) { result.add((11) + "," + state1 + "," + getMax(valuej1i10) + "," + getMin(valuej1i10) + "," + getAve(valuej1i10) + "," + get95p(valuej1i10)); }
            if (valuej2i10.size() > 0) { result.add((11) + "," + state2 + "," + getMax(valuej2i10) + "," + getMin(valuej2i10) + "," + getAve(valuej2i10) + "," + get95p(valuej2i10)); }
            if (valuej3i10.size() > 0) { result.add((11) + "," + state3 + "," + getMax(valuej3i10) + "," + getMin(valuej3i10) + "," + getAve(valuej3i10) + "," + get95p(valuej3i10)); }
            if (valuej1i11.size() > 0) { result.add((12) + "," + state1 + "," + getMax(valuej1i11) + "," + getMin(valuej1i11) + "," + getAve(valuej1i11) + "," + get95p(valuej1i11)); }
            if (valuej2i11.size() > 0) { result.add((12) + "," + state2 + "," + getMax(valuej2i11) + "," + getMin(valuej2i11) + "," + getAve(valuej2i11) + "," + get95p(valuej2i11)); }
            if (valuej3i11.size() > 0) { result.add((12) + "," + state3 + "," + getMax(valuej3i11) + "," + getMin(valuej3i11) + "," + getAve(valuej3i11) + "," + get95p(valuej3i11)); }
            if (valuej1i12.size() > 0) { result.add((13) + "," + state1 + "," + getMax(valuej1i12) + "," + getMin(valuej1i12) + "," + getAve(valuej1i12) + "," + get95p(valuej1i12)); }
            if (valuej2i12.size() > 0) { result.add((13) + "," + state2 + "," + getMax(valuej2i12) + "," + getMin(valuej2i12) + "," + getAve(valuej2i12) + "," + get95p(valuej2i12)); }
            if (valuej3i12.size() > 0) { result.add((13) + "," + state3 + "," + getMax(valuej3i12) + "," + getMin(valuej3i12) + "," + getAve(valuej3i12) + "," + get95p(valuej3i12)); }
            if (valuej1i13.size() > 0) { result.add((14) + "," + state1 + "," + getMax(valuej1i13) + "," + getMin(valuej1i13) + "," + getAve(valuej1i13) + "," + get95p(valuej1i13)); }
            if (valuej2i13.size() > 0) { result.add((14) + "," + state2 + "," + getMax(valuej2i13) + "," + getMin(valuej2i13) + "," + getAve(valuej2i13) + "," + get95p(valuej2i13)); }
            if (valuej3i13.size() > 0) { result.add((14) + "," + state3 + "," + getMax(valuej3i13) + "," + getMin(valuej3i13) + "," + getAve(valuej3i13) + "," + get95p(valuej3i13)); }
            if (valuej1i14.size() > 0) { result.add((15) + "," + state1 + "," + getMax(valuej1i14) + "," + getMin(valuej1i14) + "," + getAve(valuej1i14) + "," + get95p(valuej1i14)); }
            if (valuej2i14.size() > 0) { result.add((15) + "," + state2 + "," + getMax(valuej2i14) + "," + getMin(valuej2i14) + "," + getAve(valuej2i14) + "," + get95p(valuej2i14)); }
            if (valuej3i14.size() > 0) { result.add((15) + "," + state3 + "," + getMax(valuej3i14) + "," + getMin(valuej3i14) + "," + getAve(valuej3i14) + "," + get95p(valuej3i14)); }
            if (valuej1i15.size() > 0) { result.add((16) + "," + state1 + "," + getMax(valuej1i15) + "," + getMin(valuej1i15) + "," + getAve(valuej1i15) + "," + get95p(valuej1i15)); }
            if (valuej2i15.size() > 0) { result.add((16) + "," + state2 + "," + getMax(valuej2i15) + "," + getMin(valuej2i15) + "," + getAve(valuej2i15) + "," + get95p(valuej2i15)); }
            if (valuej3i15.size() > 0) { result.add((16) + "," + state3 + "," + getMax(valuej3i15) + "," + getMin(valuej3i15) + "," + getAve(valuej3i15) + "," + get95p(valuej3i15)); }
            if (valuej1i16.size() > 0) { result.add((17) + "," + state1 + "," + getMax(valuej1i16) + "," + getMin(valuej1i16) + "," + getAve(valuej1i16) + "," + get95p(valuej1i16)); }
            if (valuej2i16.size() > 0) { result.add((17) + "," + state2 + "," + getMax(valuej2i16) + "," + getMin(valuej2i16) + "," + getAve(valuej2i16) + "," + get95p(valuej2i16)); }
            if (valuej3i16.size() > 0) { result.add((17) + "," + state3 + "," + getMax(valuej3i16) + "," + getMin(valuej3i16) + "," + getAve(valuej3i16) + "," + get95p(valuej3i16)); }
            if (valuej1i17.size() > 0) { result.add((18) + "," + state1 + "," + getMax(valuej1i17) + "," + getMin(valuej1i17) + "," + getAve(valuej1i17) + "," + get95p(valuej1i17)); }
            if (valuej2i17.size() > 0) { result.add((18) + "," + state2 + "," + getMax(valuej2i17) + "," + getMin(valuej2i17) + "," + getAve(valuej2i17) + "," + get95p(valuej2i17)); }
            if (valuej3i17.size() > 0) { result.add((18) + "," + state3 + "," + getMax(valuej3i17) + "," + getMin(valuej3i17) + "," + getAve(valuej3i17) + "," + get95p(valuej3i17)); }
            if (valuej1i18.size() > 0) { result.add((19) + "," + state1 + "," + getMax(valuej1i18) + "," + getMin(valuej1i18) + "," + getAve(valuej1i18) + "," + get95p(valuej1i18)); }
            if (valuej2i18.size() > 0) { result.add((19) + "," + state2 + "," + getMax(valuej2i18) + "," + getMin(valuej2i18) + "," + getAve(valuej2i18) + "," + get95p(valuej2i18)); }
            if (valuej3i18.size() > 0) { result.add((19) + "," + state3 + "," + getMax(valuej3i18) + "," + getMin(valuej3i18) + "," + getAve(valuej3i18) + "," + get95p(valuej3i18)); }
            if (valuej1i19.size() > 0) { result.add((20) + "," + state1 + "," + getMax(valuej1i19) + "," + getMin(valuej1i19) + "," + getAve(valuej1i19) + "," + get95p(valuej1i19)); }
            if (valuej2i19.size() > 0) { result.add((20) + "," + state2 + "," + getMax(valuej2i19) + "," + getMin(valuej2i19) + "," + getAve(valuej2i19) + "," + get95p(valuej2i19)); }
            if (valuej3i19.size() > 0) { result.add((20) + "," + state3 + "," + getMax(valuej3i19) + "," + getMin(valuej3i19) + "," + getAve(valuej3i19) + "," + get95p(valuej3i19)); }
            if (valuej1i20.size() > 0) { result.add((21) + "," + state1 + "," + getMax(valuej1i20) + "," + getMin(valuej1i20) + "," + getAve(valuej1i20) + "," + get95p(valuej1i20)); }
            if (valuej2i20.size() > 0) { result.add((21) + "," + state2 + "," + getMax(valuej2i20) + "," + getMin(valuej2i20) + "," + getAve(valuej2i20) + "," + get95p(valuej2i20)); }
            if (valuej3i20.size() > 0) { result.add((21) + "," + state3 + "," + getMax(valuej3i20) + "," + getMin(valuej3i20) + "," + getAve(valuej3i20) + "," + get95p(valuej3i20)); }
            if (valuej1i21.size() > 0) { result.add((22) + "," + state1 + "," + getMax(valuej1i21) + "," + getMin(valuej1i21) + "," + getAve(valuej1i21) + "," + get95p(valuej1i21)); }
            if (valuej2i21.size() > 0) { result.add((22) + "," + state2 + "," + getMax(valuej2i21) + "," + getMin(valuej2i21) + "," + getAve(valuej2i21) + "," + get95p(valuej2i21)); }
            if (valuej3i21.size() > 0) { result.add((22) + "," + state3 + "," + getMax(valuej3i21) + "," + getMin(valuej3i21) + "," + getAve(valuej3i21) + "," + get95p(valuej3i21)); }
            if (valuej1i22.size() > 0) { result.add((23) + "," + state1 + "," + getMax(valuej1i22) + "," + getMin(valuej1i22) + "," + getAve(valuej1i22) + "," + get95p(valuej1i22)); }
            if (valuej2i22.size() > 0) { result.add((23) + "," + state2 + "," + getMax(valuej2i22) + "," + getMin(valuej2i22) + "," + getAve(valuej2i22) + "," + get95p(valuej2i22)); }
            if (valuej3i22.size() > 0) { result.add((23) + "," + state3 + "," + getMax(valuej3i22) + "," + getMin(valuej3i22) + "," + getAve(valuej3i22) + "," + get95p(valuej3i22)); }
            if (valuej1i23.size() > 0) { result.add((24) + "," + state1 + "," + getMax(valuej1i23) + "," + getMin(valuej1i23) + "," + getAve(valuej1i23) + "," + get95p(valuej1i23)); }
            if (valuej2i23.size() > 0) { result.add((24) + "," + state2 + "," + getMax(valuej2i23) + "," + getMin(valuej2i23) + "," + getAve(valuej2i23) + "," + get95p(valuej2i23)); }
            if (valuej3i23.size() > 0) { result.add((24) + "," + state3 + "," + getMax(valuej3i23) + "," + getMin(valuej3i23) + "," + getAve(valuej3i23) + "," + get95p(valuej3i23)); }
            if (valuej1i24.size() > 0) { result.add((25) + "," + state1 + "," + getMax(valuej1i24) + "," + getMin(valuej1i24) + "," + getAve(valuej1i24) + "," + get95p(valuej1i24)); }
            if (valuej2i24.size() > 0) { result.add((25) + "," + state2 + "," + getMax(valuej2i24) + "," + getMin(valuej2i24) + "," + getAve(valuej2i24) + "," + get95p(valuej2i24)); }
            if (valuej3i24.size() > 0) { result.add((25) + "," + state3 + "," + getMax(valuej3i24) + "," + getMin(valuej3i24) + "," + getAve(valuej3i24) + "," + get95p(valuej3i24)); }
            if (valuej1i25.size() > 0) { result.add((26) + "," + state1 + "," + getMax(valuej1i25) + "," + getMin(valuej1i25) + "," + getAve(valuej1i25) + "," + get95p(valuej1i25)); }
            if (valuej2i25.size() > 0) { result.add((26) + "," + state2 + "," + getMax(valuej2i25) + "," + getMin(valuej2i25) + "," + getAve(valuej2i25) + "," + get95p(valuej2i25)); }
            if (valuej3i25.size() > 0) { result.add((26) + "," + state3 + "," + getMax(valuej3i25) + "," + getMin(valuej3i25) + "," + getAve(valuej3i25) + "," + get95p(valuej3i25)); }
            if (valuej1i26.size() > 0) { result.add((27) + "," + state1 + "," + getMax(valuej1i26) + "," + getMin(valuej1i26) + "," + getAve(valuej1i26) + "," + get95p(valuej1i26)); }
            if (valuej2i26.size() > 0) { result.add((27) + "," + state2 + "," + getMax(valuej2i26) + "," + getMin(valuej2i26) + "," + getAve(valuej2i26) + "," + get95p(valuej2i26)); }
            if (valuej3i26.size() > 0) { result.add((27) + "," + state3 + "," + getMax(valuej3i26) + "," + getMin(valuej3i26) + "," + getAve(valuej3i26) + "," + get95p(valuej3i26)); }
            if (valuej1i27.size() > 0) { result.add((28) + "," + state1 + "," + getMax(valuej1i27) + "," + getMin(valuej1i27) + "," + getAve(valuej1i27) + "," + get95p(valuej1i27)); }
            if (valuej2i27.size() > 0) { result.add((28) + "," + state2 + "," + getMax(valuej2i27) + "," + getMin(valuej2i27) + "," + getAve(valuej2i27) + "," + get95p(valuej2i27)); }
            if (valuej3i27.size() > 0) { result.add((28) + "," + state3 + "," + getMax(valuej3i27) + "," + getMin(valuej3i27) + "," + getAve(valuej3i27) + "," + get95p(valuej3i27)); }
            if (valuej1i28.size() > 0) { result.add((29) + "," + state1 + "," + getMax(valuej1i28) + "," + getMin(valuej1i28) + "," + getAve(valuej1i28) + "," + get95p(valuej1i28)); }
            if (valuej2i28.size() > 0) { result.add((29) + "," + state2 + "," + getMax(valuej2i28) + "," + getMin(valuej2i28) + "," + getAve(valuej2i28) + "," + get95p(valuej2i28)); }
            if (valuej3i28.size() > 0) { result.add((29) + "," + state3 + "," + getMax(valuej3i28) + "," + getMin(valuej3i28) + "," + getAve(valuej3i28) + "," + get95p(valuej3i28)); }
            if (valuej1i29.size() > 0) { result.add((30) + "," + state1 + "," + getMax(valuej1i29) + "," + getMin(valuej1i29) + "," + getAve(valuej1i29) + "," + get95p(valuej1i29)); }
            if (valuej2i29.size() > 0) { result.add((30) + "," + state2 + "," + getMax(valuej2i29) + "," + getMin(valuej2i29) + "," + getAve(valuej2i29) + "," + get95p(valuej2i29)); }
            if (valuej3i29.size() > 0) { result.add((30) + "," + state3 + "," + getMax(valuej3i29) + "," + getMin(valuej3i29) + "," + getAve(valuej3i29) + "," + get95p(valuej3i29)); }
            if (valuej1i30.size() > 0) { result.add((31) + "," + state1 + "," + getMax(valuej1i30) + "," + getMin(valuej1i30) + "," + getAve(valuej1i30) + "," + get95p(valuej1i30)); }
            if (valuej2i30.size() > 0) { result.add((31) + "," + state2 + "," + getMax(valuej2i30) + "," + getMin(valuej2i30) + "," + getAve(valuej2i30) + "," + get95p(valuej2i30)); }
            if (valuej3i30.size() > 0) { result.add((31) + "," + state3 + "," + getMax(valuej3i30) + "," + getMin(valuej3i30) + "," + getAve(valuej3i30) + "," + get95p(valuej3i30)); }
            if (valuej1i31.size() > 0) { result.add((32) + "," + state1 + "," + getMax(valuej1i31) + "," + getMin(valuej1i31) + "," + getAve(valuej1i31) + "," + get95p(valuej1i31)); }
            if (valuej2i31.size() > 0) { result.add((32) + "," + state2 + "," + getMax(valuej2i31) + "," + getMin(valuej2i31) + "," + getAve(valuej2i31) + "," + get95p(valuej2i31)); }
            if (valuej3i31.size() > 0) { result.add((32) + "," + state3 + "," + getMax(valuej3i31) + "," + getMin(valuej3i31) + "," + getAve(valuej3i31) + "," + get95p(valuej3i31)); }
            if (valuej1i32.size() > 0) { result.add((33) + "," + state1 + "," + getMax(valuej1i32) + "," + getMin(valuej1i32) + "," + getAve(valuej1i32) + "," + get95p(valuej1i32)); }
            if (valuej2i32.size() > 0) { result.add((33) + "," + state2 + "," + getMax(valuej2i32) + "," + getMin(valuej2i32) + "," + getAve(valuej2i32) + "," + get95p(valuej2i32)); }
            if (valuej3i32.size() > 0) { result.add((33) + "," + state3 + "," + getMax(valuej3i32) + "," + getMin(valuej3i32) + "," + getAve(valuej3i32) + "," + get95p(valuej3i32)); }
            if (valuej1i33.size() > 0) { result.add((34) + "," + state1 + "," + getMax(valuej1i33) + "," + getMin(valuej1i33) + "," + getAve(valuej1i33) + "," + get95p(valuej1i33)); }
            if (valuej2i33.size() > 0) { result.add((34) + "," + state2 + "," + getMax(valuej2i33) + "," + getMin(valuej2i33) + "," + getAve(valuej2i33) + "," + get95p(valuej2i33)); }
            if (valuej3i33.size() > 0) { result.add((34) + "," + state3 + "," + getMax(valuej3i33) + "," + getMin(valuej3i33) + "," + getAve(valuej3i33) + "," + get95p(valuej3i33)); }
            if (valuej1i34.size() > 0) { result.add((35) + "," + state1 + "," + getMax(valuej1i34) + "," + getMin(valuej1i34) + "," + getAve(valuej1i34) + "," + get95p(valuej1i34)); }
            if (valuej2i34.size() > 0) { result.add((35) + "," + state2 + "," + getMax(valuej2i34) + "," + getMin(valuej2i34) + "," + getAve(valuej2i34) + "," + get95p(valuej2i34)); }
            if (valuej3i34.size() > 0) { result.add((35) + "," + state3 + "," + getMax(valuej3i34) + "," + getMin(valuej3i34) + "," + getAve(valuej3i34) + "," + get95p(valuej3i34)); }
            if (valuej1i35.size() > 0) { result.add((36) + "," + state1 + "," + getMax(valuej1i35) + "," + getMin(valuej1i35) + "," + getAve(valuej1i35) + "," + get95p(valuej1i35)); }
            if (valuej2i35.size() > 0) { result.add((36) + "," + state2 + "," + getMax(valuej2i35) + "," + getMin(valuej2i35) + "," + getAve(valuej2i35) + "," + get95p(valuej2i35)); }
            if (valuej3i35.size() > 0) { result.add((36) + "," + state3 + "," + getMax(valuej3i35) + "," + getMin(valuej3i35) + "," + getAve(valuej3i35) + "," + get95p(valuej3i35)); }
            if (valuej1i36.size() > 0) { result.add((37) + "," + state1 + "," + getMax(valuej1i36) + "," + getMin(valuej1i36) + "," + getAve(valuej1i36) + "," + get95p(valuej1i36)); }
            if (valuej2i36.size() > 0) { result.add((37) + "," + state2 + "," + getMax(valuej2i36) + "," + getMin(valuej2i36) + "," + getAve(valuej2i36) + "," + get95p(valuej2i36)); }
            if (valuej3i36.size() > 0) { result.add((37) + "," + state3 + "," + getMax(valuej3i36) + "," + getMin(valuej3i36) + "," + getAve(valuej3i36) + "," + get95p(valuej3i36)); }
            if (valuej1i37.size() > 0) { result.add((38) + "," + state1 + "," + getMax(valuej1i37) + "," + getMin(valuej1i37) + "," + getAve(valuej1i37) + "," + get95p(valuej1i37)); }
            if (valuej2i37.size() > 0) { result.add((38) + "," + state2 + "," + getMax(valuej2i37) + "," + getMin(valuej2i37) + "," + getAve(valuej2i37) + "," + get95p(valuej2i37)); }
            if (valuej3i37.size() > 0) { result.add((38) + "," + state3 + "," + getMax(valuej3i37) + "," + getMin(valuej3i37) + "," + getAve(valuej3i37) + "," + get95p(valuej3i37)); }
            if (valuej1i38.size() > 0) { result.add((39) + "," + state1 + "," + getMax(valuej1i38) + "," + getMin(valuej1i38) + "," + getAve(valuej1i38) + "," + get95p(valuej1i38)); }
            if (valuej2i38.size() > 0) { result.add((39) + "," + state2 + "," + getMax(valuej2i38) + "," + getMin(valuej2i38) + "," + getAve(valuej2i38) + "," + get95p(valuej2i38)); }
            if (valuej3i38.size() > 0) { result.add((39) + "," + state3 + "," + getMax(valuej3i38) + "," + getMin(valuej3i38) + "," + getAve(valuej3i38) + "," + get95p(valuej3i38)); }
            if (valuej1i39.size() > 0) { result.add((40) + "," + state1 + "," + getMax(valuej1i39) + "," + getMin(valuej1i39) + "," + getAve(valuej1i39) + "," + get95p(valuej1i39)); }
            if (valuej2i39.size() > 0) { result.add((40) + "," + state2 + "," + getMax(valuej2i39) + "," + getMin(valuej2i39) + "," + getAve(valuej2i39) + "," + get95p(valuej2i39)); }
            if (valuej3i39.size() > 0) { result.add((40) + "," + state3 + "," + getMax(valuej3i39) + "," + getMin(valuej3i39) + "," + getAve(valuej3i39) + "," + get95p(valuej3i39)); }
            if (valuej1i40.size() > 0) { result.add((41) + "," + state1 + "," + getMax(valuej1i40) + "," + getMin(valuej1i40) + "," + getAve(valuej1i40) + "," + get95p(valuej1i40)); }
            if (valuej2i40.size() > 0) { result.add((41) + "," + state2 + "," + getMax(valuej2i40) + "," + getMin(valuej2i40) + "," + getAve(valuej2i40) + "," + get95p(valuej2i40)); }
            if (valuej3i40.size() > 0) { result.add((41) + "," + state3 + "," + getMax(valuej3i40) + "," + getMin(valuej3i40) + "," + getAve(valuej3i40) + "," + get95p(valuej3i40)); }
            if (valuej1i41.size() > 0) { result.add((42) + "," + state1 + "," + getMax(valuej1i41) + "," + getMin(valuej1i41) + "," + getAve(valuej1i41) + "," + get95p(valuej1i41)); }
            if (valuej2i41.size() > 0) { result.add((42) + "," + state2 + "," + getMax(valuej2i41) + "," + getMin(valuej2i41) + "," + getAve(valuej2i41) + "," + get95p(valuej2i41)); }
            if (valuej3i41.size() > 0) { result.add((42) + "," + state3 + "," + getMax(valuej3i41) + "," + getMin(valuej3i41) + "," + getAve(valuej3i41) + "," + get95p(valuej3i41)); }
            if (valuej1i42.size() > 0) { result.add((43) + "," + state1 + "," + getMax(valuej1i42) + "," + getMin(valuej1i42) + "," + getAve(valuej1i42) + "," + get95p(valuej1i42)); }
            if (valuej2i42.size() > 0) { result.add((43) + "," + state2 + "," + getMax(valuej2i42) + "," + getMin(valuej2i42) + "," + getAve(valuej2i42) + "," + get95p(valuej2i42)); }
            if (valuej3i42.size() > 0) { result.add((43) + "," + state3 + "," + getMax(valuej3i42) + "," + getMin(valuej3i42) + "," + getAve(valuej3i42) + "," + get95p(valuej3i42)); }
            if (valuej1i43.size() > 0) { result.add((44) + "," + state1 + "," + getMax(valuej1i43) + "," + getMin(valuej1i43) + "," + getAve(valuej1i43) + "," + get95p(valuej1i43)); }
            if (valuej2i43.size() > 0) { result.add((44) + "," + state2 + "," + getMax(valuej2i43) + "," + getMin(valuej2i43) + "," + getAve(valuej2i43) + "," + get95p(valuej2i43)); }
            if (valuej3i43.size() > 0) { result.add((44) + "," + state3 + "," + getMax(valuej3i43) + "," + getMin(valuej3i43) + "," + getAve(valuej3i43) + "," + get95p(valuej3i43)); }
            if (valuej1i44.size() > 0) { result.add((45) + "," + state1 + "," + getMax(valuej1i44) + "," + getMin(valuej1i44) + "," + getAve(valuej1i44) + "," + get95p(valuej1i44)); }
            if (valuej2i44.size() > 0) { result.add((45) + "," + state2 + "," + getMax(valuej2i44) + "," + getMin(valuej2i44) + "," + getAve(valuej2i44) + "," + get95p(valuej2i44)); }
            if (valuej3i44.size() > 0) { result.add((45) + "," + state3 + "," + getMax(valuej3i44) + "," + getMin(valuej3i44) + "," + getAve(valuej3i44) + "," + get95p(valuej3i44)); }
            if (valuej1i45.size() > 0) { result.add((46) + "," + state1 + "," + getMax(valuej1i45) + "," + getMin(valuej1i45) + "," + getAve(valuej1i45) + "," + get95p(valuej1i45)); }
            if (valuej2i45.size() > 0) { result.add((46) + "," + state2 + "," + getMax(valuej2i45) + "," + getMin(valuej2i45) + "," + getAve(valuej2i45) + "," + get95p(valuej2i45)); }
            if (valuej3i45.size() > 0) { result.add((46) + "," + state3 + "," + getMax(valuej3i45) + "," + getMin(valuej3i45) + "," + getAve(valuej3i45) + "," + get95p(valuej3i45)); }
            if (valuej1i46.size() > 0) { result.add((47) + "," + state1 + "," + getMax(valuej1i46) + "," + getMin(valuej1i46) + "," + getAve(valuej1i46) + "," + get95p(valuej1i46)); }
            if (valuej2i46.size() > 0) { result.add((47) + "," + state2 + "," + getMax(valuej2i46) + "," + getMin(valuej2i46) + "," + getAve(valuej2i46) + "," + get95p(valuej2i46)); }
            if (valuej3i46.size() > 0) { result.add((47) + "," + state3 + "," + getMax(valuej3i46) + "," + getMin(valuej3i46) + "," + getAve(valuej3i46) + "," + get95p(valuej3i46)); }
            if (valuej1i47.size() > 0) { result.add((48) + "," + state1 + "," + getMax(valuej1i47) + "," + getMin(valuej1i47) + "," + getAve(valuej1i47) + "," + get95p(valuej1i47)); }
            if (valuej2i47.size() > 0) { result.add((48) + "," + state2 + "," + getMax(valuej2i47) + "," + getMin(valuej2i47) + "," + getAve(valuej2i47) + "," + get95p(valuej2i47)); }
            if (valuej3i47.size() > 0) { result.add((48) + "," + state3 + "," + getMax(valuej3i47) + "," + getMin(valuej3i47) + "," + getAve(valuej3i47) + "," + get95p(valuej3i47)); }
            if (valuej1i48.size() > 0) { result.add((49) + "," + state1 + "," + getMax(valuej1i48) + "," + getMin(valuej1i48) + "," + getAve(valuej1i48) + "," + get95p(valuej1i48)); }
            if (valuej2i48.size() > 0) { result.add((49) + "," + state2 + "," + getMax(valuej2i48) + "," + getMin(valuej2i48) + "," + getAve(valuej2i48) + "," + get95p(valuej2i48)); }
            if (valuej3i48.size() > 0) { result.add((49) + "," + state3 + "," + getMax(valuej3i48) + "," + getMin(valuej3i48) + "," + getAve(valuej3i48) + "," + get95p(valuej3i48)); }
            if (valuej1i49.size() > 0) { result.add((50) + "," + state1 + "," + getMax(valuej1i49) + "," + getMin(valuej1i49) + "," + getAve(valuej1i49) + "," + get95p(valuej1i49)); }
            if (valuej2i49.size() > 0) { result.add((50) + "," + state2 + "," + getMax(valuej2i49) + "," + getMin(valuej2i49) + "," + getAve(valuej2i49) + "," + get95p(valuej2i49)); }
            if (valuej3i49.size() > 0) { result.add((50) + "," + state3 + "," + getMax(valuej3i49) + "," + getMin(valuej3i49) + "," + getAve(valuej3i49) + "," + get95p(valuej3i49)); }
            if (valuej1i50.size() > 0) { result.add((51) + "," + state1 + "," + getMax(valuej1i50) + "," + getMin(valuej1i50) + "," + getAve(valuej1i50) + "," + get95p(valuej1i50)); }
            if (valuej2i50.size() > 0) { result.add((51) + "," + state2 + "," + getMax(valuej2i50) + "," + getMin(valuej2i50) + "," + getAve(valuej2i50) + "," + get95p(valuej2i50)); }
            if (valuej3i50.size() > 0) { result.add((51) + "," + state3 + "," + getMax(valuej3i50) + "," + getMin(valuej3i50) + "," + getAve(valuej3i50) + "," + get95p(valuej3i50)); }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHVthreshold() {

        List result = new ArrayList<String>();
        try {
            for (int i = 0; i < 49; i++) {
                String sql = "FROM DevicesThreshold WHERE name = '" + "电压总谐波含有率限值" + (i + 2) + "' AND level=1";

                DevicesThreshold dtobj = (DevicesThreshold)hbsessionDao.getFirst(sql);

                if(dtobj != null){
                    Double value = dtobj.getCellval();
                    result.add((i + 3) + "," + state1 + "," +  value);
                    result.add((i + 3) + "," + state2 + "," +  value);
                    result.add((i + 3) + "," + state3 + "," +  value);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHCthreshold() {

        List result = new ArrayList<String>();

        try {
            for (int i = 0; i < 49; i++) {
                String sql = "FROM DevicesThreshold WHERE name = '" + "电流总谐波有效值限值" + (i + 2) + "' AND level=1";

                DevicesThreshold dtobj = (DevicesThreshold)hbsessionDao.getFirst(sql);

               if(dtobj != null){
                   Double value = dtobj.getCellval();
                   result.add((i + 3) + "," + state1 + "," +  value);
                   result.add((i + 3) + "," + state2 + "," +  value);
                   result.add((i + 3) + "," + state3 + "," +  value);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getVCfundBydt(String did, String time) {

        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        int u1_passnum = 0;
        int u2_passnum = 0;
        int u3_passnum = 0;
        int i1_passnum = 0;
        int i2_passnum = 0;
        int i3_passnum =0;
        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> u1 = new ArrayList<>();
            List<Double> u2 = new ArrayList<>();
            List<Double> u3 = new ArrayList<>();
            List<Double> i1 = new ArrayList<>();
            List<Double> i2 = new ArrayList<>();
            List<Double> i3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null){
                for(int ppidx = 0; ppidx <pplist.size(); ppidx++){
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double du1 = obj.getU1();
                    double du2 = obj.getU2();
                    double du3 = obj.getU3();
                    double di1 = obj.getI1();
                    double di2 = obj.getI2();
                    double di3 = obj.getI3();

                    if (du1 < 220) {
                        u1_passnum += 1;
                    }
                    if (du2 < 220) {
                        u2_passnum += 1;
                    }
                    if (du3 < 220) {
                        u3_passnum += 1;
                    }
                    if (di1 < 50) {
                        i1_passnum += 1;
                    }
                    if (di2 < 50) {
                        i2_passnum += 1;
                    }
                    if (di3 < 50) {
                        i3_passnum += 1;
                    }
                    u1.add(du1);
                    u2.add(du2);
                    u3.add(du3);
                    i1.add(di1);
                    i2.add(di2);
                    i3.add(di3);
                }
            }

            if (u1.size() == 0) { result.add("u1," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (u2.size() == 0) { result.add("u2," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (u3.size() == 0) { result.add("u1," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (i1.size() == 0) { result.add("i1," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (i2.size() == 0) { result.add("i2," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (i3.size()== 0) { result.add("i3," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }

            if (u1.size() > 0) {
                double u1_max = getMax(u1);
                double u1_min = getMin(u1);
                double u1_ave = getAve(u1);
                double u1_pro = get95p(u1);
                double temp_u1_rate = 100.0 * u1_passnum / u1.size();
                double u1_rate = Double.parseDouble(df.format(temp_u1_rate));
                if (u1_pro <= 220) {
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "合格" + "," + u1.size() + "," + u1_rate);
                } else {
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "不合格" + "," + u1.size() + "," + u1_rate);
                }
            }
            if (u2.size() > 0) {
                double u2_max = getMax(u2);
                double u2_min = getMin(u2);
                double u2_ave = getAve(u2);
                double u2_pro = get95p(u2);
                double temp_u2_rate = 100.0 * u2_passnum / u2.size();
                double u2_rate = Double.parseDouble(df.format(temp_u2_rate));
                if (u2_pro <= 220) {
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "合格" + "," + u2.size() + "," + u2_rate);
                } else {
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "不合格" + "," + u2.size() + "," + u2_rate);
                }
            }
            if (u3.size() > 0) {
                double u3_max = getMax(u3);
                double u3_min = getMin(u3);
                double u3_ave = getAve(u3);
                double u3_pro = get95p(u3);
                double temp_u3_rate = 100.0 * u3_passnum / u3.size();
                double u3_rate = Double.parseDouble(df.format(temp_u3_rate));
                if(u3_pro <= 220) {
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "合格" + "," + u3.size() + "," + u3_rate);
                } else {
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "不合格" + "," + u3.size() + "," + u3_rate);
                }
            }
            if (i1.size() > 0) {
                double i1_max = getMax(i1);
                double i1_min = getMin(i1);
                double i1_ave = getAve(i1);
                double i1_pro = get95p(i1);
                double temp_i1_rate = 100.0 * i1_passnum / i1.size();
                double i1_rate = Double.parseDouble(df.format(temp_i1_rate));
                if (i1_pro <= 50) {
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "合格" + "," + i1.size() + "," + i1_rate);
                } else {
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "不合格" + "," + i1.size() + "," + i1_rate);
                }
            }
            if (i2.size() > 0) {
                double i2_max = getMax(i2);
                double i2_min = getMin(i2);
                double i2_ave = getAve(i2);
                double i2_pro = get95p(i2);
                double temp_i2_rate = 100.0 * i2_passnum / i2.size();
                double i2_rate = Double.parseDouble(df.format(temp_i2_rate));
                if(i2_pro <= 50) {
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "合格" + "," + i2.size() + "," + i2_rate);
                } else {
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "不合格" + "," + i2.size() + "," + i2_rate);
                }
            }
            if (i3.size()>0) {
                double i3_max = getMax(i3);
                double i3_min = getMin(i3);
                double i3_ave = getAve(i3);
                double i3_pro = get95p(i3);
                double temp_i3_rate = 100.0 * i3_passnum / i3.size();
                double i3_rate = Double.parseDouble(df.format(temp_i3_rate));
                if (i3_pro <= 50) {
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "合格" + "," + i3.size() + "," + i3_rate);
                } else {
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "不合格" + "," + i3.size() + "," + i3_rate);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getVCfundBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        int u1_passnum = 0;
        int u2_passnum = 0;
        int u3_passnum = 0;
        int i1_passnum = 0;
        int i2_passnum = 0;
        int i3_passnum =0;

        try {
            List<Double> u1 = new ArrayList<>();
            List<Double> u2 = new ArrayList<>();
            List<Double> u3 = new ArrayList<>();
            List<Double> i1 = new ArrayList<>();
            List<Double> i2 = new ArrayList<>();
            List<Double> i3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for(int ppidx = 0; ppidx <pplist.size(); ppidx++){
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double du1 = obj.getU1();
                    double du2 = obj.getU2();
                    double du3 = obj.getU3();
                    double di1 = obj.getI1();
                    double di2 = obj.getI2();
                    double di3 = obj.getI3();

                    if (du1 < 220) {
                        u1_passnum += 1;
                    }
                    if (du2 < 220) {
                        u2_passnum += 1;
                    }
                    if (du3 < 220) {
                        u3_passnum += 1;
                    }
                    if (di1 < 50) {
                        i1_passnum += 1;
                    }
                    if (di2 < 50) {
                        i2_passnum += 1;
                    }
                    if (di3 < 50) {
                        i3_passnum += 1;
                    }
                    u1.add(du1);
                    u2.add(du2);
                    u3.add(du3);
                    i1.add(di1);
                    i2.add(di2);
                    i3.add(di3);
                }
            }

            if (u1.size() == 0) { result.add("u1," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (u2.size() == 0) { result.add("u2," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (u3.size() == 0) { result.add("u1," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (i1.size() == 0) { result.add("i1," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (i2.size() == 0) { result.add("i2," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }
            if (i3.size()== 0) { result.add("i3," + null + "," + null + "," + null + "," + null + "," + "null" + "," + null + "," + null); }

            if (u1.size() > 0) {
                double u1_max = getMax(u1);
                double u1_min = getMin(u1);
                double u1_ave = getAve(u1);
                double u1_pro = get95p(u1);
                double temp_u1_rate = 100.0 * u1_passnum / u1.size();
                double u1_rate = Double.parseDouble(df.format(temp_u1_rate));
                if (u1_pro <= 220) {
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "合格" + "," + u1.size() + "," + u1_rate);
                } else {
                    result.add("u1," + u1_max + "," + u1_min + "," + u1_ave + "," + u1_pro + "," + "不合格" + "," + u1.size() + "," + u1_rate);
                }
            }
            if (u2.size() > 0) {
                double u2_max = getMax(u2);
                double u2_min = getMin(u2);
                double u2_ave = getAve(u2);
                double u2_pro = get95p(u2);
                double temp_u2_rate = 100.0 * u2_passnum / u2.size();
                double u2_rate = Double.parseDouble(df.format(temp_u2_rate));
                if (u2_pro <= 220) {
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "合格" + "," + u2.size() + "," + u2_rate);
                } else {
                    result.add("u2," + u2_max + "," + u2_min + "," + u2_ave + "," + u2_pro + "," + "不合格" + "," + u2.size() + "," + u2_rate);
                }
            }
            if (u3.size() > 0) {
                double u3_max = getMax(u3);
                double u3_min = getMin(u3);
                double u3_ave = getAve(u3);
                double u3_pro = get95p(u3);
                double temp_u3_rate = 100.0 * u3_passnum / u3.size();
                double u3_rate = Double.parseDouble(df.format(temp_u3_rate));
                if(u3_pro <= 220) {
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "合格" + "," + u3.size() + "," + u3_rate);
                } else {
                    result.add("u3," + u3_max + "," + u3_min + "," + u3_ave + "," + u3_pro + "," + "不合格" + "," + u3.size() + "," + u3_rate);
                }
            }
            if (i1.size() > 0) {
                double i1_max = getMax(i1);
                double i1_min = getMin(i1);
                double i1_ave = getAve(i1);
                double i1_pro = get95p(i1);
                double temp_i1_rate = 100.0 * i1_passnum / i1.size();
                double i1_rate = Double.parseDouble(df.format(temp_i1_rate));
                if (i1_pro <= 50) {
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "合格" + "," + i1.size() + "," + i1_rate);
                } else {
                    result.add("i1," + i1_max + "," + i1_min + "," + i1_ave + "," + i1_pro + "," + "不合格" + "," + i1.size() + "," + i1_rate);
                }
            }
            if (i2.size() > 0) {
                double i2_max = getMax(i2);
                double i2_min = getMin(i2);
                double i2_ave = getAve(i2);
                double i2_pro = get95p(i2);
                double temp_i2_rate = 100.0 * i2_passnum / i2.size();
                double i2_rate = Double.parseDouble(df.format(temp_i2_rate));
                if(i2_pro <= 50) {
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "合格" + "," + i2.size() + "," + i2_rate);
                } else {
                    result.add("i2," + i2_max + "," + i2_min + "," + i2_ave + "," + i2_pro + "," + "不合格" + "," + i2.size() + "," + i2_rate);
                }
            }
            if (i3.size()>0) {
                double i3_max = getMax(i3);
                double i3_min = getMin(i3);
                double i3_ave = getAve(i3);
                double i3_pro = get95p(i3);
                double temp_i3_rate = 100.0 * i3_passnum / i3.size();
                double i3_rate = Double.parseDouble(df.format(temp_i3_rate));
                if (i3_pro <= 50) {
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "合格" + "," + i3.size() + "," + i3_rate);
                } else {
                    result.add("i3," + i3_max + "," + i3_min + "," + i3_ave + "," + i3_pro + "," + "不合格" + "," + i3.size() + "," + i3_rate);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHVrateBydt(String did, String time) {

        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
//            for (int i = 0; i < 49; i++) {
//
//                //读取电压总谐波含有率第i+2次
//                String sql0 = "SELECT ep.cellval as threshold FROM devices_threshold ep WHERE ep.name = '" + "电压总谐波含有率限值" + (i + 2) + "' AND ep.level = 2";
////                ps = db.getPs(sql0);
////                rs = ps.executeQuery();
//                String sthreshold = "";
//                Double threshold = 0.00;
//
//                while (rs.next()) {
//                    sthreshold = rs.getString("threshold");
//                    if(sthreshold != null) {
//                        threshold = Double.parseDouble(sthreshold);
//
//                        //分别读取A.B.C次的值与阈值比较
//
////                        for (int j = 0; j < 3; j++) {
//                            char state1 = (char) (97 + 0);
//                            char state2 = (char) (97 + 1);
//                            char state3 = (char) (97 + 2);
//
////                            int temp = j + 1;
//                            int temp2 = i + 2;
//                            String xbname1 = "U1xb_" + temp2;
//                            String xbname2 = "U2xb_" + temp2;
//                            String xbname3 = "U3xb_" + temp2;
//
//                            // String sql = "SELECT " + xbname + " as value FROM powerxb_monitor ep WHERE ep.time LIKE'" + time + "%'";
//                            String sql = "SELECT " + xbname1 + " as value1, " + xbname2 + " as value2, " + xbname3 + " as value3 FROM powerxb_monitor ep WHERE ep.time >'" + stime + "' AND ep.time <'" + etime + "'";
//                            int sum = 0;
//                            int pass_num1 = 0;
//                            int pass_num2 = 0;
//                            int pass_num3 = 0;
//
//                            ps = db.getPs(sql);
//                            rs = ps.executeQuery();
//                            while (rs.next()) {
//                                String svalue1 = rs.getString("value1");
//                                String svalue2 = rs.getString("value2");
//                                String svalue3 = rs.getString("value3");
//                                Double dvalue1 = Double.parseDouble(svalue1);
//                                Double dvalue2 = Double.parseDouble(svalue2);
//                                Double dvalue3 = Double.parseDouble(svalue3);
//
//                                if (dvalue1 < threshold) {
//                                    pass_num1 += 1;
//                                }
//                                if (dvalue2 < threshold) {
//                                    pass_num2 += 1;
//                                }
//                                if (dvalue3 < threshold) {
//                                    pass_num3 += 1;
//                                }
//                                sum += 1;
//                            }
//                            if (sum == 0) {
//                                result.add((i + 3) + "," + state1 + "," + sum + ",-");
//                                result.add((i + 3) + "," + state2 + "," + sum + ",-");
//                                result.add((i + 3) + "," + state3 + "," + sum + ",-");
//                            } else {
//                                double temp_pass_rate1 = pass_num1 * 100.0 / sum;
//                                double temp_pass_rate2 = pass_num2 * 100.0 / sum;
//                                double temp_pass_rate3 = pass_num3 * 100.0 / sum;
//                                double pass_rate1 = Double.parseDouble(df.format(temp_pass_rate1));
//                                double pass_rate2 = Double.parseDouble(df.format(temp_pass_rate2));
//                                double pass_rate3 = Double.parseDouble(df.format(temp_pass_rate3));
//                                result.add((i + 3) + "," + state1 + "," + sum + "," + pass_rate1);
//                                result.add((i + 3) + "," + state2 + "," + sum + "," + pass_rate2);
//                                result.add((i + 3) + "," + state3 + "," + sum + "," + pass_rate3);
//                            }
////                        }
//                    }
//                }
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    //2019/9/17 : cjy speed up select time
    public List getHVrateBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);

        try {
//            for (int i = 0; i < 49; i++) {
//
//                //读取电压总谐波含有率第i+2次
//                String sql0 = "SELECT ep.cellval as threshold FROM devices_threshold ep WHERE ep.name = '" + "电压总谐波含有率限值" + (i + 2) + "' AND ep.level = 2";
//                ps = db.getPs(sql0);
//                rs = ps.executeQuery();
//                String sthreshold = "";
//                Double threshold = 0.00;
//
//                while (rs.next()) {
//                    sthreshold = rs.getString("threshold");
//                    if(sthreshold != null) {
//                        threshold = Double.parseDouble(sthreshold);
//
//                        //分别读取A.B.C次的值与阈值比较
//
////                        for (int j = 0; j < 3; j++) {
////                            char state = (char) (97 + j);
//                            char state1 = (char) (97 + 0);
//                            char state2 = (char) (97 + 1);
//                            char state3 = (char) (97 + 2);
//
////                            int temp = j + 1;
//                            int temp2 = i + 2;
//                            String xbname1 = "U1xb_" + temp2;
//                            String xbname2 = "U2xb_" + temp2;
//                            String xbname3 = "U3xb_" + temp2;
//
//
//                            String sql = "SELECT " + xbname1 + " as value1, " + xbname2 + " as value2, " + xbname3 + " as value3 FROM powerxb_monitor ep WHERE  ep.time>'" + stime + "' and ep.time<'" + etime + "'";
//                                int sum = 0;
//                                int pass_num1 = 0;
//                                int pass_num2 = 0;
//                                int pass_num3 = 0;
//
//                                ps = db.getPs(sql);
//                                rs = ps.executeQuery();
//                                while (rs.next()) {
//                                    String svalue1 = rs.getString("value1");
//                                    String svalue2 = rs.getString("value2");
//                                    String svalue3 = rs.getString("value3");
//                                    Double dvalue1 = Double.parseDouble(svalue1);
//                                    Double dvalue2 = Double.parseDouble(svalue2);
//                                    Double dvalue3 = Double.parseDouble(svalue3);
//
//                                    if (dvalue1 < threshold) {
//                                        pass_num1 += 1;
//                                    }
//                                    if (dvalue2 < threshold) {
//                                        pass_num2 += 1;
//                                    }
//                                    if (dvalue3 < threshold) {
//                                        pass_num3 += 1;
//                                    }
//                                    sum += 1;
//                                }
//                                if (sum == 0) {
//                                    result.add((i + 3) + "," + state1 + "," + sum + ",-");
//                                    result.add((i + 3) + "," + state2 + "," + sum + ",-");
//                                    result.add((i + 3) + "," + state3 + "," + sum + ",-");
//                                } else {
//                                    double temp_pass_rate1 = pass_num1 * 100.0 / sum;
//                                    double temp_pass_rate2 = pass_num2 * 100.0 / sum;
//                                    double temp_pass_rate3 = pass_num3 * 100.0 / sum;
//                                    double pass_rate1 = Double.parseDouble(df.format(temp_pass_rate1));
//                                    double pass_rate2 = Double.parseDouble(df.format(temp_pass_rate2));
//                                    double pass_rate3 = Double.parseDouble(df.format(temp_pass_rate3));
//                                    result.add((i + 3) + "," + state1 + "," + sum + "," + pass_rate1);
//                                    result.add((i + 3) + "," + state2 + "," + sum + "," + pass_rate2);
//                                    result.add((i + 3) + "," + state3 + "," + sum + "," + pass_rate3);
//                                }
////                        }
//                    }
//                }
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    //2019/9/17 : cjy speed up select time
    public List getHCrateBydt(String did, String time) {

        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
//            for (int i = 0; i < 49; i++) {
//
//                //读取电流总谐波含有率第i+2次
//                String sql0 = "SELECT ep.cellval as threshold FROM devices_threshold ep WHERE ep.name = '" + "电流总谐波有效值限值" + (i + 2) + "' AND ep.level = 2";
//                ps = db.getPs(sql0);
//                rs = ps.executeQuery();
//                String sthreshold = "";
//                Double threshold = 0.00;
//
//                while (rs.next()) {
//                    sthreshold = rs.getString("threshold");
//                    if(sthreshold != null) {
//                        threshold = Double.parseDouble(sthreshold);
//
//                        //分别读取A.B.C次的值与阈值比较
//
////                        for (int j = 0; j < 3; j++) {
//                            char state1 = (char) (97 + 0);
//                            char state2 = (char) (97 + 1);
//                            char state3 = (char) (97 + 2);
//
//
////                             int temp = j + 1;
//                            int temp2 = i + 2;
//                            String xbname1 = "I1xb_" + temp2;
//                            String xbname2 = "I2xb_" + temp2;
//                            String xbname3 = "I3xb_" + temp2;
//
//                            // String sql = "SELECT " + xbname + " as value FROM powerxb_monitor ep WHERE ep.time LIKE'" + time + "%'";
//
//                            String sql = "SELECT " + xbname1 + " as value1, " + xbname2 + " as value2, " + xbname3 + " as value3 FROM powerxb_monitor ep WHERE ep.time >'" + stime + "' AND ep.time <'" + etime + "'";
//                            int sum = 0;
//                            int pass_num1 = 0;
//                            int pass_num2 = 0;
//                            int pass_num3 = 0;
//
//                            ps = db.getPs(sql);
//                            rs = ps.executeQuery();
//                            while (rs.next()) {
//                                String svalue1 = rs.getString("value1");
//                                String svalue2 = rs.getString("value2");
//                                String svalue3 = rs.getString("value3");
//                                Double dvalue1 = Double.parseDouble(svalue1);
//                                Double dvalue2 = Double.parseDouble(svalue2);
//                                Double dvalue3 = Double.parseDouble(svalue3);
//
//                                if (dvalue1 < threshold) {
//                                    pass_num1 += 1;
//                                }
//                                if (dvalue2 < threshold) {
//                                    pass_num2 += 1;
//                                }
//                                if (dvalue3 < threshold) {
//                                    pass_num3 += 1;
//                                }
//                                sum += 1;
//                            }
//                            if (sum == 0) {
//                                result.add((i + 3) + "," + state1 + "," + sum + ",-");
//                                result.add((i + 3) + "," + state2 + "," + sum + ",-");
//                                result.add((i + 3) + "," + state3 + "," + sum + ",-");
//                            } else {
//                                double temp_pass_rate1 = pass_num1 * 100.0 / sum;
//                                double temp_pass_rate2 = pass_num2 * 100.0 / sum;
//                                double temp_pass_rate3 = pass_num3 * 100.0 / sum;
//                                double pass_rate1 = Double.parseDouble(df.format(temp_pass_rate1));
//                                double pass_rate2 = Double.parseDouble(df.format(temp_pass_rate2));
//                                double pass_rate3 = Double.parseDouble(df.format(temp_pass_rate3));
//                                result.add((i + 3) + "," + state1 + "," + sum + "," + pass_rate1);
//                                result.add((i + 3) + "," + state2 + "," + sum + "," + pass_rate2);
//                                result.add((i + 3) + "," + state3 + "," + sum + "," + pass_rate3);
//                            }
////                        }
//                    }
//                }
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    //2019/9/17 : cjy speed up select time
    public List getHCrateBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);

        try {
//            for (int i = 0; i < 49; i++) {
//
//                //读取电流总谐波含有率第i+2次
//                String sql0 = "SELECT ep.cellval as threshold FROM devices_threshold ep WHERE ep.name = '" + "电流总谐波有效值限值" + (i + 2) + "' AND ep.level = 2";
//                ps = db.getPs(sql0);
//                rs = ps.executeQuery();
//                String sthreshold = "";
//                Double threshold = 0.00;
//
//                while (rs.next()) {
//                    sthreshold = rs.getString("threshold");
//                    if(sthreshold != null) {
//                        threshold = Double.parseDouble(sthreshold);
//
//                        //分别读取A.B.C次的值与阈值比较
//
////                        for (int j = 0; j < 3; j++) {
//                            char state1 = (char) (97 + 0);
//                            char state2 = (char) (97 + 1);
//                            char state3 = (char) (97 + 2);
//
////                            int temp = j + 1;
//                            int temp2 = i + 2;
//                            String xbname1 = "I1xb_" + temp2;
//                            String xbname2 = "I2xb_" + temp2;
//                            String xbname3 = "I3xb_" + temp2;
//
//                            String sql = "SELECT " + xbname1 + " as value1, " + xbname2 + " as value2, " + xbname3 + " as value3 FROM powerxb_monitor ep WHERE  ep.time>'" + stime + "' and ep.time<'" + etime + "'";
//                            int sum = 0;
//                            int pass_num1 = 0;
//                            int pass_num2 = 0;
//                            int pass_num3 = 0;
//
//                            ps = db.getPs(sql);
//                            rs = ps.executeQuery();
//                            while (rs.next()) {
//                                String svalue1 = rs.getString("value1");
//                                String svalue2 = rs.getString("value2");
//                                String svalue3 = rs.getString("value3");
//                                Double dvalue1 = Double.parseDouble(svalue1);
//                                Double dvalue2 = Double.parseDouble(svalue2);
//                                Double dvalue3 = Double.parseDouble(svalue3);
//
//                                if (dvalue1 < threshold) {
//                                    pass_num1 += 1;
//                                }
//                                if (dvalue2 < threshold) {
//                                    pass_num2 += 1;
//                                }
//                                if (dvalue3 < threshold) {
//                                    pass_num3 += 1;
//                                }
//                                sum += 1;
//                            }
//                            if (sum == 0) {
//                                result.add((i + 3) + "," + state1 + "," + sum + ",-");
//                                result.add((i + 3) + "," + state2 + "," + sum + ",-");
//                                result.add((i + 3) + "," + state3 + "," + sum + ",-");
//                            } else {
//                                double temp_pass_rate1 = pass_num1 * 100.0 / sum;
//                                double temp_pass_rate2 = pass_num2 * 100.0 / sum;
//                                double temp_pass_rate3 = pass_num3 * 100.0 / sum;
//                                double pass_rate1 = Double.parseDouble(df.format(temp_pass_rate1));
//                                double pass_rate2 = Double.parseDouble(df.format(temp_pass_rate2));
//                                double pass_rate3 = Double.parseDouble(df.format(temp_pass_rate3));
//                                result.add((i + 3) + "," + state1 + "," + sum + "," + pass_rate1);
//                                result.add((i + 3) + "," + state2 + "," + sum + "," + pass_rate2);
//                                result.add((i + 3) + "," + state3 + "," + sum + "," + pass_rate3);
//                            }
////                        }
//                    }
//                }
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHzBydt(String did, String time) {

        List result = new ArrayList<String>();
        int passnum = 0;

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> hz = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz = obj.getHz();
                    if (dhz <= 50) {
                        passnum += 1;
                    }
                    hz.add(dhz);
                }
            }
            if(hz.size() == 0) { result.add(null + "," + null + "," + null + "," + null + "," + hz.size() + "," + null); }

            if (hz.size() > 0) {
                double max = getMax(hz);
                double min = getMin(hz);
                double ave = getAve(hz);
                double pro = get95p(hz);
                double passRate = 100.0 * passnum / hz.size();
                result.add(max + "," + min + "," + ave + "," + pro + "," + hz.size() + "," + passRate);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHzBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();
        int passnum = 0;
        try {
            List<Double> hz = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz = obj.getHz();
                    if (dhz <= 50) {
                        passnum += 1;
                    }
                    hz.add(dhz);
                }
            }
            if(hz.size() == 0) { result.add(null + "," + null + "," + null + "," + null + "," + hz.size() + "," + null); }

            if (hz.size() > 0) {
                double max = getMax(hz);
                double min = getMin(hz);
                double ave = getAve(hz);
                double pro = get95p(hz);
                double passRate = 100.0 * passnum / hz.size();
                result.add(max + "," + min + "," + ave + "," + pro + "," + hz.size() + "," + passRate);
            }
        }  catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHzpcBydt(String did, String time) {

        List result = new ArrayList<String>();
        int passnum = 0;

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> hzpc = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz = obj.getIflSum();
                    if (dhz <= 50) {
                        passnum += 1;
                    }
                    hzpc.add(dhz);
                }
            }
            if(hzpc.size() == 0) { result.add(null + "," + null + "," + null + "," + null + "," + hzpc.size() + "," + null); }

            if (hzpc.size() > 0) {
                double max = getMax(hzpc);
                double min = getMin(hzpc);
                double ave = getAve(hzpc);
                double pro = get95p(hzpc);
                double passRate = 100.0 * passnum / hzpc.size();
                result.add(max + "," + min + "," + ave + "," + pro + "," + hzpc.size() + "," + passRate);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHzpcBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();
        int passnum = 0;
        try {
            List<Double> hzpc = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz = obj.getIflSum();
                    if (dhz <= 50) {
                        passnum += 1;
                    }
                    hzpc.add(dhz);
                }
            }
            if(hzpc.size() == 0) { result.add(null + "," + null + "," + null + "," + null + "," + hzpc.size() + "," + null); }

            if (hzpc.size() > 0) {
                double max = getMax(hzpc);
                double min = getMin(hzpc);
                double ave = getAve(hzpc);
                double pro = get95p(hzpc);
                double passRate = 100.0 * passnum / hzpc.size();
                result.add(max + "," + min + "," + ave + "," + pro + "," + hzpc.size() + "," + passRate);
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getHzpcthreshold(){

        List result = new ArrayList<String>();
        try {
            String sql1 = "FROM DevicesThreshold WHERE name = '频率上限值' AND level = '2'";
            String sql2 = "FROM DevicesThreshold WHERE name = '频率下限值' AND level = '2'";
            List<DevicesThreshold> pplist1 = hbsessionDao.search(sql1);
            List<DevicesThreshold> pplist2 = hbsessionDao.search(sql2);

            if(pplist1 != null) {
                for (int ppidx = 0; ppidx < pplist1.size(); ppidx++) {
                    DevicesThreshold obj = pplist1.get(ppidx);

                    double dhz = obj.getCellval();
                    result.add(dhz);
                }
            }

            if(pplist2 != null) {
                for (int ppidx = 0; ppidx < pplist2.size(); ppidx++) {
                    DevicesThreshold obj = pplist2.get(ppidx);

                    double dhz = obj.getFloorval();
                    result.add(dhz);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getsxdyBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> sxdy = new ArrayList<>();
            String sql = "FROM PowersxdyMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowersxdyMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowersxdyMonitor obj = pplist.get(ppidx);

                    double dhz = obj.getUunb();
                    sxdy.add(dhz);
                }
            }
            if(sxdy.size() == 0) { result.add(null + "," + null + "," + null + "," + null); }

            if (sxdy.size() > 0) {
                double max = getMax(sxdy);
                double min = getMin(sxdy);
                double ave = getAve(sxdy);
                double pro = get95p(sxdy);
                result.add(max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getsxdyBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            List<Double> sxdy = new ArrayList<>();
            String sql = "FROM PowersxdyMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowersxdyMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowersxdyMonitor obj = pplist.get(ppidx);

                    double dhz = obj.getUunb();
                    sxdy.add(dhz);
                }
            }
            if(sxdy.size() == 0) { result.add(null + "," + null + "," + null + "," + null); }

            if (sxdy.size() > 0) {
                double max = getMax(sxdy);
                double min = getMin(sxdy);
                double ave = getAve(sxdy);
                double pro = get95p(sxdy);
                result.add(max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getsxdythreshold() {

        List result = new ArrayList<String>();
        try {

            String sql = "FROM DevicesThreshold WHERE name = '三相电压负序不平衡度' AND level = '2'";
            List<DevicesThreshold> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    DevicesThreshold obj = pplist.get(ppidx);

                    double dhz = obj.getCellval();
                    result.add(dhz);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getDypcBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
                List<Double> dypc1 = new ArrayList<>();
                List<Double> dypc2 = new ArrayList<>();
                List<Double> dypc3 = new ArrayList<>();

                String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
                List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

                if(pplist != null) {
                    for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                        PowerparmMonitor obj = pplist.get(ppidx);

                        double dhz1 = obj.getIflU1();
                        double dhz2 = obj.getIflU2();
                        double dhz3 = obj.getIflU3();

                        dypc1.add(dhz1);
                        dypc2.add(dhz2);
                        dypc3.add(dhz3);
                    }
                }

                if(dypc1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
                if(dypc2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
                if(dypc3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

                if (dypc1.size() > 0) {
                    double max = getMax(dypc1);
                    double min = getMin(dypc1);
                    double ave = getAve(dypc1);
                    double pro = get95p(dypc1);
                    result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
                }

                if (dypc2.size() > 0) {
                    double max = getMax(dypc2);
                    double min = getMin(dypc2);
                    double ave = getAve(dypc2);
                    double pro = get95p(dypc2);
                    result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
                }

                if (dypc3.size() > 0) {
                    double max = getMax(dypc3);
                    double min = getMin(dypc3);
                    double ave = getAve(dypc3);
                    double pro = get95p(dypc3);
                    result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getDypcBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            List<Double> dypc1 = new ArrayList<>();
            List<Double> dypc2 = new ArrayList<>();
            List<Double> dypc3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getIflU1();
                    double dhz2 = obj.getIflU2();
                    double dhz3 = obj.getIflU3();

                    dypc1.add(dhz1);
                    dypc2.add(dhz2);
                    dypc3.add(dhz3);
                }
            }

            if(dypc1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(dypc2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(dypc3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (dypc1.size() > 0) {
                double max = getMax(dypc1);
                double min = getMin(dypc1);
                double ave = getAve(dypc1);
                double pro = get95p(dypc1);
                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (dypc2.size() > 0) {
                double max = getMax(dypc2);
                double min = getMin(dypc2);
                double ave = getAve(dypc2);
                double pro = get95p(dypc2);
                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (dypc3.size() > 0) {
                double max = getMax(dypc3);
                double min = getMin(dypc3);
                double ave = getAve(dypc3);
                double pro = get95p(dypc3);
                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getDypcthreshold() {

        List result = new ArrayList<String>();
        try {
            Double cellval = null, cfloorval = null;

            String sql1 = "FROM DevicesThreshold WHERE name = '电压偏差越上限' AND level = '2'";
            List<DevicesThreshold> pplist1 = hbsessionDao.search(sql1);

            String sql2 = "FROM DevicesThreshold WHERE name = '电压偏差越下限' AND level = '2'";
            List<DevicesThreshold> pplist2 = hbsessionDao.search(sql2);

            if(pplist1 != null) {
                for (int ppidx = 0; ppidx < pplist1.size(); ppidx++) {
                    DevicesThreshold obj = pplist1.get(ppidx);

                    cellval = obj.getCellval();
                }
            }
            if(pplist2 != null) {
                for (int ppidx = 0; ppidx < pplist2.size(); ppidx++) {
                    DevicesThreshold obj = pplist2.get(ppidx);

                    cfloorval = obj.getFloorval();
                }
            }

            if(cellval == null) { result.add(null + "-" + null); }

            if (cellval != null) {
                result.add(cfloorval + "-" + cellval);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getdsdysbBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getPstU1();
                    double dhz2 = obj.getPstU2();
                    double dhz3 = obj.getPstU3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getdsdysbBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
                List<Double> shortu1 = new ArrayList<>();
                List<Double> shortu2 = new ArrayList<>();
                List<Double> shortu3 = new ArrayList<>();

                String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
                List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

                if(pplist != null) {
                    for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                        PowerparmMonitor obj = pplist.get(ppidx);

                        double dhz1 = obj.getPstU1();
                        double dhz2 = obj.getPstU2();
                        double dhz3 = obj.getPstU3();

                        shortu1.add(dhz1);
                        shortu2.add(dhz2);
                        shortu3.add(dhz3);
                    }
                }
                if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
                if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
                if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

                if (shortu1.size() > 0) {
                    double max = getMax(shortu1);
                    double min = getMin(shortu1);
                    double ave = getAve(shortu1);
                    double pro = get95p(shortu1);

                    result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
                }

                if (shortu2.size() > 0) {
                    double max = getMax(shortu2);
                    double min = getMin(shortu2);
                    double ave = getAve(shortu2);
                    double pro = get95p(shortu2);

                    result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
                }
                if (shortu3.size() > 0) {
                    double max = getMax(shortu3);
                    double min = getMin(shortu3);
                    double ave = getAve(shortu3);
                    double pro = get95p(shortu3);

                    result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
                }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getdsdysbthreshold() {

        List result = new ArrayList<String>();
        try {

            String sql = "FROM DevicesThreshold WHERE name = '短时闪变' AND level = '2'";
            List<DevicesThreshold> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    DevicesThreshold obj = pplist.get(ppidx);

                    double dhz1 = obj.getCellval();
                    result.add(dhz1);
                }
            } else {
                result.add(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getcsdysbBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {

                List<Double> shortu1 = new ArrayList<>();
                List<Double> shortu2 = new ArrayList<>();
                List<Double> shortu3 = new ArrayList<>();

                String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
                List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

                if(pplist != null) {
                    for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                        PowerparmMonitor obj = pplist.get(ppidx);

                        double dhz1 = obj.getPltU1();
                        double dhz2 = obj.getPltU2();
                        double dhz3 = obj.getPltU3();

                        shortu1.add(dhz1);
                        shortu2.add(dhz2);
                        shortu3.add(dhz3);
                    }
                }
                if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
                if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
                if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

                if (shortu1.size() > 0) {
                    double max = getMax(shortu1);
                    double min = getMin(shortu1);
                    double ave = getAve(shortu1);
                    double pro = get95p(shortu1);

                    result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
                }
                if (shortu2.size() > 0) {
                    double max = getMax(shortu2);
                    double min = getMin(shortu2);
                    double ave = getAve(shortu2);
                    double pro = get95p(shortu2);

                    result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
                }
                if (shortu3.size() > 0) {
                    double max = getMax(shortu3);
                    double min = getMin(shortu3);
                    double ave = getAve(shortu3);
                    double pro = get95p(shortu3);

                    result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
                }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getcsdysbBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {

            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getPltU1();
                    double dhz2 = obj.getPltU2();
                    double dhz3 = obj.getPltU3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getcsdysbthreshold() {

        List result = new ArrayList<String>();
        try {
            String sql = "FROM DevicesThreshold WHERE name = '长时闪变' AND level = '2'";
            List<DevicesThreshold> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    DevicesThreshold obj = pplist.get(ppidx);

                    double dhz1 = obj.getCellval();
                    result.add(dhz1);
                }
            } else {
                result.add(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getActivePowerBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getP1();
                    double dhz2 = obj.getP2();
                    double dhz3 = obj.getP3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getActivePowerBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getP1();
                    double dhz2 = obj.getP2();
                    double dhz3 = obj.getP3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getReactivePowerBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getQ1();
                    double dhz2 = obj.getQ2();
                    double dhz3 = obj.getQ3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getReactivePowerBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getQ1();
                    double dhz2 = obj.getQ2();
                    double dhz3 = obj.getQ3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    //功率因数
    public List getPowerFactorBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getPf1();
                    double dhz2 = obj.getPf2();
                    double dhz3 = obj.getPf3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = new BigDecimal(getMax(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double min = new BigDecimal(getMin(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double ave = new BigDecimal(getAve(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double pro = new BigDecimal(get95p(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = new BigDecimal(getMax(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double min = new BigDecimal(getMin(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double ave = new BigDecimal(getAve(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double pro = new BigDecimal(get95p(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = new BigDecimal(getMax(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double min = new BigDecimal(getMin(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double ave = new BigDecimal(getAve(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double pro = new BigDecimal(get95p(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getPowerFactorBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerparmMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerparmMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerparmMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getPf1();
                    double dhz2 = obj.getPf2();
                    double dhz3 = obj.getPf3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = new BigDecimal(getMax(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double min = new BigDecimal(getMin(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double ave = new BigDecimal(getAve(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double pro = new BigDecimal(get95p(shortu1)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = new BigDecimal(getMax(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double min = new BigDecimal(getMin(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double ave = new BigDecimal(getAve(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double pro = new BigDecimal(get95p(shortu2)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = new BigDecimal(getMax(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double min = new BigDecimal(getMin(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double ave = new BigDecimal(getAve(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
                double pro = new BigDecimal(get95p(shortu3)).setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getthdUBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
                List<Double> shortu1 = new ArrayList<>();
                List<Double> shortu2 = new ArrayList<>();
                List<Double> shortu3 = new ArrayList<>();

                String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
                List<PowerxbMonitor> pplist = hbsessionDao.search(sql);

                if(pplist != null) {
                    for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                        PowerxbMonitor obj = pplist.get(ppidx);

                        double dhz1 = obj.getThdu1();
                        double dhz2 = obj.getThdu2();
                        double dhz3 = obj.getThdu3();

                        shortu1.add(dhz1);
                        shortu2.add(dhz2);
                        shortu3.add(dhz3);
                    }
                }
                if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
                if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
                if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

                if (shortu1.size() > 0) {
                    double max = getMax(shortu1);
                    double min = getMin(shortu1);
                    double ave = getAve(shortu1);
                    double pro = get95p(shortu1);

                    result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
                }

                if (shortu2.size() > 0) {
                    double max = getMax(shortu2);
                    double min = getMin(shortu2);
                    double ave = getAve(shortu2);
                    double pro = get95p(shortu2);

                    result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
                }
                if (shortu3.size() > 0) {
                    double max = getMax(shortu3);
                    double min = getMin(shortu3);
                    double ave = getAve(shortu3);
                    double pro = get95p(shortu3);

                    result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
                }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getthdUBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerxbMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerxbMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getThdu1();
                    double dhz2 = obj.getThdu2();
                    double dhz3 = obj.getThdu3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getthdIBydt(String did, String time) {

        List result = new ArrayList<String>();

        String stime = time + " 00:00:00";
        String etime = time + " 23:59:59";

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerxbMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerxbMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getThdi1();
                    double dhz2 = obj.getThdi2();
                    double dhz3 = obj.getThdi3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getthdIBydt2(String did, String stime, String etime) {

        List result = new ArrayList<String>();

        try {
            List<Double> shortu1 = new ArrayList<>();
            List<Double> shortu2 = new ArrayList<>();
            List<Double> shortu3 = new ArrayList<>();

            String sql = "FROM PowerxbMonitor WHERE did = '" + did + "' AND time >'" + stime + "' AND time <'" + etime + "'";
            List<PowerxbMonitor> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    PowerxbMonitor obj = pplist.get(ppidx);

                    double dhz1 = obj.getThdi1();
                    double dhz2 = obj.getThdi2();
                    double dhz3 = obj.getThdi3();

                    shortu1.add(dhz1);
                    shortu2.add(dhz2);
                    shortu3.add(dhz3);
                }
            }
            if(shortu1.size() == 0) { result.add((1) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu2.size() == 0) { result.add((2) + "," + null + "," + null + "," + null + "," + null); }
            if(shortu3.size() == 0) { result.add((3) + "," + null + "," + null + "," + null + "," + null); }

            if (shortu1.size() > 0) {
                double max = getMax(shortu1);
                double min = getMin(shortu1);
                double ave = getAve(shortu1);
                double pro = get95p(shortu1);

                result.add((1) + "," + max + "," + min + "," + ave + "," + pro);
            }

            if (shortu2.size() > 0) {
                double max = getMax(shortu2);
                double min = getMin(shortu2);
                double ave = getAve(shortu2);
                double pro = get95p(shortu2);

                result.add((2) + "," + max + "," + min + "," + ave + "," + pro);
            }
            if (shortu3.size() > 0) {
                double max = getMax(shortu3);
                double min = getMin(shortu3);
                double ave = getAve(shortu3);
                double pro = get95p(shortu3);

                result.add((3) + "," + max + "," + min + "," + ave + "," + pro);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    public List getpowerthreshold() {

        List result = new ArrayList<String>();
        try {
            String sql = "FROM DevicesThreshold WHERE name = '功率因数下限' AND level = '2'";
            List<DevicesThreshold> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    DevicesThreshold obj = pplist.get(ppidx);

                    double dhz1 = obj.getFloorval();
                    result.add(dhz1);
                }
            } else {
                result.add(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getthduthreshold() {

        List result = new ArrayList<String>();
        try {
            String sql = "FROM DevicesThreshold WHERE name = '电压总谐波含有率' AND level = '2'";
            List<DevicesThreshold> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    DevicesThreshold obj = pplist.get(ppidx);

                    double dhz1 = obj.getCellval();
                    result.add(dhz1);
                }
            } else {
                result.add(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getthdithreshold() {

        List result = new ArrayList<String>();
        try {
            String sql = "FROM DevicesThreshold WHERE name = '电流总谐波含有率' AND level = '2'";
            List<DevicesThreshold> pplist = hbsessionDao.search(sql);

            if(pplist != null) {
                for (int ppidx = 0; ppidx < pplist.size(); ppidx++) {
                    DevicesThreshold obj = pplist.get(ppidx);

                    double dhz1 = obj.getCellval();
                    result.add(dhz1);
                }
            } else {
                result.add(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // save 3 place after point .
    public double getMax(List<Double> value) {
        double d = Collections.max(value);
        return (double) Math.round(d * 100) / 100;
    }
    // save 3 place after point .
    public double getMin(List<Double> value) {
        double d = Collections.min(value);
        return (double) Math.round(d * 100) / 100;
    }
    // save 3 place after point .
    public double getAve(List<Double> value) {
        double sum = 0;
        DecimalFormat df = new DecimalFormat();
        df.setMinimumFractionDigits(3);
        for (double v:value) {
            sum += v;
        }
        double temp_ave = sum / (value.size());
        double ave = Double.parseDouble(df.format(temp_ave));
        return (double) Math.round(ave * 100) / 100;
    }

    public double get95p(List<Double> value) {
        int num = value.size();
        int threshold = (int) Math.floor(num * 0.95);
        Collections.sort(value);
        double pro = value.get(threshold);
        return (double) Math.round(pro * 100) / 100;
    }
}