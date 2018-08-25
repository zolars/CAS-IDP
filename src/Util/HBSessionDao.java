package Util;

import java.util.List;

import org.hibernate.Session;

public interface HBSessionDao {
   // public void init();

    public  Session getOnlineSession();

    //public void closeSession();

    public List search(String hql);

    public List searchWithNum(String hql, int num);

    public Object getFirst(String hql);

    public boolean delete(String hql, String id);

    public boolean insert(Object obj);
}
