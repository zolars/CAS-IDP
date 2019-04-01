package onlineTest.dao.impl;

import grabData.DataOnline;
import hibernatePOJO.PowerparmMonitor;
import hibernatePOJO.PowersxdyMonitor;
import hibernatePOJO.PowerxbMonitor;
import onlineTest.dao.*;

import java.util.ArrayList;
import java.util.List;

public class RMSDAOImpl implements RMSDAO {

    public List getCurrentRMSData(String did) {
        List<RMS> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);

        RMS rtobj = new RMS();
        rtobj.setU1(pp.getU1());
        rtobj.setU2(pp.getU2());
        rtobj.setU3(pp.getU3());
        rtobj.setI1(pp.getI1());
        rtobj.setI2(pp.getI2());
        rtobj.setI3(pp.getI3());
        rtobj.setTime(pp.getTime());

        crlist.add(rtobj);

        return crlist;

    }

    public List getCurrentTHDData(String did) {
        List<THD> crlist = new ArrayList<>();

        PowerxbMonitor pp = DataOnline.getXbMap().get(did);

        THD rtobj = new THD();
        rtobj.setU1(pp.getThdu1());
        rtobj.setU2(pp.getThdu2());
        rtobj.setU3(pp.getThdu3());
        rtobj.setI1(pp.getThdi1());
        rtobj.setI2(pp.getThdi2());
        rtobj.setI3(pp.getThdi3());
        rtobj.setTime(pp.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    //Hz
    public List getCurrentHzData(String did) {
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor pp = DataOnline.getParmMap().get(did);

        PowerparmMonitor rtobj = new PowerparmMonitor();
        rtobj.setHz(pp.getHz());
        rtobj.setTime(pp.getTime());
        crlist.add(rtobj);
        return crlist;
    }

    //Uunb
    public List getCurrentUnbData(String did) {
        List<Object> crlist = new ArrayList<>();
        PowersxdyMonitor pp = DataOnline.getSxdyMap().get(did);

        PowersxdyMonitor rtobj = new PowersxdyMonitor();
        rtobj.setUunb(pp.getUunb());
        rtobj.setTime(pp.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    //W
    public List getCurrentWData(String did) {
        List<Object> crlist = new ArrayList<>();
        PowerparmMonitor pp = DataOnline.getParmMap().get(did);
        PowerparmMonitor rtobj = new PowerparmMonitor();
        rtobj.setP1(pp.getP1());
        rtobj.setP2(pp.getP2());
        rtobj.setP3(pp.getP3());

        rtobj.setTime(pp.getTime());
        crlist.add(rtobj);

        return crlist;
    }

    //VA
    public List getCurrentVAData(String did) {
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);

        PowerparmMonitor rtobj = new PowerparmMonitor();
        rtobj.setS1(pp.getS1());
        rtobj.setS2(pp.getS2());
        rtobj.setS3(pp.getS3());

        rtobj.setTime(pp.getTime());

        crlist.add(rtobj);

        return crlist;
    }

    //Var
    public List getCurrentVarData(String did) {
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);

        PowerparmMonitor rtobj = new PowerparmMonitor();
        rtobj.setQ1(pp.getQ1());
        rtobj.setQ2(pp.getQ2());
        rtobj.setQ3(pp.getQ3());

        rtobj.setTime(pp.getTime());
        crlist.add(rtobj);

        return crlist;
    }

    //PF
    public List getCurrentPFData(String did) {
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);
        PowerparmMonitor rtobj = new PowerparmMonitor();
        rtobj.setPf1(pp.getPf1());
        rtobj.setPf2(pp.getPf2());
        rtobj.setPf3(pp.getPf3());

        rtobj.setTime(pp.getTime());

        crlist.add(rtobj);
        return crlist;
    }

    //DPF = P/S
    public List getCurrentDPFData(String did) {
        List<DPF> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);
        DPF rtobj = new DPF();
        rtobj.setDpf1(pp.getCosPhi1());
        rtobj.setDpf2(pp.getCosPhi2());
        rtobj.setDpf3(pp.getCosPhi3());

        crlist.add(rtobj);
        return crlist;
    }

    //Tan
    public List getCurrentTanData(String did) {
        List<Tan> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);

        Tan rtobj = new Tan();
        rtobj.setTan1(pp.getQ1()/pp.getP1());
        rtobj.setTan2(pp.getQ2()/pp.getP2());
        rtobj.setTan3(pp.getQ3()/pp.getP3());

        crlist.add(rtobj);

        return crlist;
    }

    //Pst
    public List getCurrentPstData(String did) {
        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);

        PowerparmMonitor rtobj = new PowerparmMonitor();
        rtobj.setPstU1(pp.getPstU1());
        rtobj.setPstU2(pp.getPstU2());
        rtobj.setPstU3(pp.getPstU3());

        rtobj.setTime(pp.getTime());
        crlist.add(rtobj);

        return crlist;
    }

    //Plt
    public List getCurrentPltData(String did) {

        List<Object> crlist = new ArrayList<>();

        PowerparmMonitor pp = DataOnline.getParmMap().get(did);
        PowerparmMonitor rtobj = new PowerparmMonitor();
        rtobj.setPltU1(pp.getPltU1());
        rtobj.setPltU2(pp.getPltU2());
        rtobj.setPltU3(pp.getPltU3());

        rtobj.setTime(pp.getTime());
        crlist.add(rtobj);

        return crlist;
    }

    //KONGTIAO WET TEM
    public List getCurrentTemWetData(String did) {
        List<KTtemWet> crlist = new ArrayList<>();

        //PowerparmMonitor pp = DataOnline.getParmMap().get(did);
        KTtemWet rtobj = new KTtemWet();
        rtobj.setTem(23.7);
        rtobj.setWet(45.3);

        crlist.add(rtobj);
        return crlist;
    }

}
