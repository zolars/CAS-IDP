package Util;

import java.util.List;
import org.hibernate.Session;

public interface HBSessionDao {

    public Session getSession();
    public void closeSession();
    public List search(String hql);
    public List searchWithNum(String hql, int num);
    public Object getFirst(String hql);

}
