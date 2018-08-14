package Util;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HBSessionDaoImpl implements HBSessionDao{
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction transaction;

    private void init() {
        //创建配置对象
        Configuration cfg = new Configuration().configure("/hibernate.cfg.xml");
        //Configuration cfg = new Configuration().configure();
        //创建服务注册对象
        StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                .applySettings(cfg.getProperties()).build();

        //创建会话工厂对象
        sessionFactory = cfg.buildSessionFactory(serviceRegistry);
        //会话对象
        session =sessionFactory.openSession();
        //开启事务
        transaction = session.beginTransaction();
    }

    @Override
    public Session getSession() {
        init();
        return session;
    }

    @Override
    public void closeSession() {
        transaction.commit();//提交事务
        session.close();// 关闭对话
        sessionFactory.close();// 关闭会话工厂
    }

    @Override
    public List search(String hql) {
        //查询不用事务管理
        Session session = null;
        session = getSession();
        List alist = null;
        alist = session.createQuery(hql).list();
        session.close();
        return alist;
    }

    @Override
    public List searchWithNum(String hql, int num) {
        //查询不用事务管理
        Session session = null;
        session = getSession();
        Query query = session.createQuery(hql);
        query.setMaxResults(num);
        List alist = query.list();
        session.close();
        return alist;
    }

    @Override
    public Object getFirst(String hql) {
        //查询不用事务管理
        Session session = null;
        session = getSession();
        List alist = null;
        Object aobject = null;
        alist = session.createQuery(hql).list();

        if(alist.size() == 0)
            return null;
        else{
            aobject = alist.get(0);
            session.close();
            return aobject;
        }
    }

    //使用HQL语句删除数据
    @Override
    public boolean delete(String hql, String id) {
        try {
            Session session = null;
            session = getSession();
            Query q = session.createQuery(hql);
            q.setString(0, id);
            q.executeUpdate();
            session.getTransaction().commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    //使用HQL语句插入数据
    @Override
    public boolean insert(Object obj) {
        try {
            Session session = null;
            session = getSession();
            session.save(obj);
            session.getTransaction().commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    //使用HQL语句更新数据
    public boolean update(Object obj, String hql) {
        try {
            Session session = null;
            session = getSession();
            Query q = session.createQuery(hql);
            q.executeUpdate();
            session.getTransaction().commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }


}
