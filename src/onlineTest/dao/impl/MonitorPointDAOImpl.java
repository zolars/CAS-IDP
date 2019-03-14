package onlineTest.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.Computerroom;
import hibernatePOJO.Devices;
import onlineTest.dao.MonitorPointDAO;

import java.util.ArrayList;
import java.util.List;

public class MonitorPointDAOImpl implements MonitorPointDAO {


    public List getLocalAllMonitorPoint(String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Computerroom cp = new Computerroom();

        List<Devices> list = new ArrayList<>();

        cp = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom where rid = '" + computerroom + "'");

        String didset = cp.getDidset();

        if(didset != null) {
            if(!didset.equals("")) {
                String did[] = didset.split("，");

                for (int i = 0; i < did.length; i++) {
                    Devices dv = (Devices) hbsessionDao.getFirst(
                            "FROM Devices where did = '" + did[i] + "' and type='IDP'");
                    if(dv != null) {
                        list.add(dv);
                    }
                }
            }
        }
        return list;
    }

    public List getLocalAllMonitorPointEnv(String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Computerroom cp = new Computerroom();

        List<Devices> list = new ArrayList<>();

        cp = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom where rid = '" + computerroom + "'");

        String tempset = cp.getTempset();

        if(tempset != null) {
            if(!tempset.equals("")) {
                String did[] = tempset.split("，");

                for (int i = 0; i < did.length; i++) {
                    Devices dv = (Devices) hbsessionDao.getFirst(
                            "FROM Devices where did = '" + did[i] + "' and type='temp'");
                    if(dv != null) {
                        list.add(dv);
                    }
                }
            }
        }
        return list;
    }

    public List getLocalAllCtrlPoint(String computerroom) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Computerroom cp = new Computerroom();

        List<Devices> list = new ArrayList<>();

        cp = (Computerroom) hbsessionDao.getFirst(
                "FROM Computerroom where rid = '" + computerroom + "'");

        String cidset = cp.getCidset();

        if(cidset != null) {
            if(!cidset.equals("")) {
                String cid[] = cidset.split("，");

                for (int i = 0; i < cid.length; i++) {
                    Devices dv = (Devices) hbsessionDao.getFirst(
                            "FROM Devices where did = '" + cid[i] + "' and type='ctrl'");
                    if(dv != null) {
                        list.add(dv);
                    }
                }
            }
        }
        return list;
    }

}
