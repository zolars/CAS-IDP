package Util;

import java.util.List;

import org.hibernate.Session;

public interface HBSessionDao {

    public  Session getOnlineSession();

    public List search(String hql);

    public List searchWithNum(String hql, int num);

    public Object getFirst(String hql);

    public boolean delete(String hql, String id);

    public boolean insert(Object obj);
}
