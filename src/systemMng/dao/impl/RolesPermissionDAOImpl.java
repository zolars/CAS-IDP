package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.BasicSetting;
import systemMng.dao.RolesPermissionDAO;

import java.util.ArrayList;
import java.util.List;

public class RolesPermissionDAOImpl implements RolesPermissionDAO {

    /**
     * 若无rid与pid的记录，需要新建
     * 更新pid的值
     */
    public Boolean allocPermission(String rid, String pid) {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        String hql = "update RolesPermission rp set rp.pid='" + pid + "' where rp.rid='" + rid + "'";
        rt = hbsessionDao.update(hql);

        /*RolesPermission rp = (RolesPermission) hbsessionDao.getFirst(
                "FROM RolesPermission where rid = '" + rid + "'");

        if (rp == null) {
            RolesPermission newrp = new RolesPermission();
            newrp.setPid(pid);
            newrp.setRid(rid);

            rt = hbsessionDao.insert(newrp);
        } else {
            String oldpid = rp.getPid();

            if (oldpid == null) {
                RolesPermission newrp1 = new RolesPermission();
                newrp1.setPid(pid);
                newrp1.setRid(rid);

                rt = hbsessionDao.insert(newrp1);
            } else {
                boolean hasridFlag = false;
                String oldpidstr[] = oldpid.split(",");
                for (int i = 0; i < oldpidstr.length; i++) {
                    String tmprid = oldpidstr[i];
                    if (rid.equals(tmprid)) {
                        hasridFlag = true;
                    }
                }

                if (hasridFlag) {
                    rt = true;
                } else {
                    String npid = oldpid + "," + pid;
                    String hql = "update RolesPermission newrp2 set newrp2.pid='" + npid + "' where newrp2.rid='" +
                    rid + "'";
                    rt = hbsessionDao.update(hql);
                }
            }
        }
*/
        return rt;
    }


    public List<Integer> getbasicsetting() {
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        List<Integer> list = new ArrayList<>();

        BasicSetting bs = (BasicSetting) hbsessionDao.getFirst("FROM BasicSetting");

        list.add(bs.getOnlineinterval());
        list.add(bs.getQstinterval());
        list.add(bs.getThansentinterval());
        list.add(bs.getUploadinterval());
        list.add(bs.getAssessinterval());
        list.add(bs.getAlarminterval());
        list.add(bs.getTempinterval());
        list.add(bs.getCtrlinterval());
        list.add(bs.getThresholdsaveinterval());
        list.add(bs.getDatainterval());

        return list;
    }

}
