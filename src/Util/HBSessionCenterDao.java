package Util;

import org.hibernate.Session;

import java.util.List;

public interface HBSessionCenterDao {

    public Session getSession();

    public List search(String hql);

    public List searchWithNum(String hql, int num);

    public Object getFirst(String hql);

    public boolean delete(String hql, String id);

    public boolean insert(Object obj);
}
