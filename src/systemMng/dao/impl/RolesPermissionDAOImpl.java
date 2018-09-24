package systemMng.dao.impl;

import Util.HBSessionDaoImpl;
import hibernatePOJO.RolesPermission;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import systemMng.dao.RolesPermissionDAO;

public class RolesPermissionDAOImpl implements RolesPermissionDAO {

    private Session session;
    private Transaction transaction;
    private Query query;
    private Object object;

    /**
     * 先根据rid查询pid，再在pid后追加新的权限pid
     * 0.若无rid与pid的记录，需要新建
     * 1.pid为空
     * 2.pid非空
     *   2.1 判断新的pid是否已存在老的pid中，若是，不操作
     *   2.2 若不存在，追加
     */
    public Boolean allocPermission(String rid, String pid){
        HBSessionDaoImpl hbsessionDao = new HBSessionDaoImpl();
        Boolean rt = false;

        RolesPermission rp = (RolesPermission)hbsessionDao.getFirst(
                "FROM RolesPermission where rid = '" + rid + "'");

        if(rp == null){
            RolesPermission newrp = new RolesPermission();
            newrp.setPid(pid);
            newrp.setRid(rid);

            rt = hbsessionDao.insert(newrp);
        }
        else{
            String oldpid = rp.getPid();

            if(oldpid == null){
                RolesPermission newrp1 = new RolesPermission();
                newrp1.setPid(pid);
                newrp1.setRid(rid);

                rt = hbsessionDao.insert(newrp1);
            }
            else{
                boolean hasridFlag = false;
                String oldpidstr[] = oldpid.split(",");
                for(int i = 0; i < oldpidstr.length; i++){
                    String tmprid = oldpidstr[i];
                    if(rid.equals(tmprid))
                        hasridFlag = true;
                }

                if(hasridFlag)
                    rt = true;
                else
                {
                    String npid = oldpid+","+pid;
                    String hql = "update RolesPermission newrp2 set newrp2.pid='" + npid +"' where newrp2.rid='" + rid + "'";
                    rt = hbsessionDao.update(hql);
                }
            }
        }

        return rt;
    }


}
