package Util;

import java.util.List;

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
        //System.out.println("ttttttttt0");
        //创建配置对象
        Configuration cfg = new Configuration().configure();
        //System.out.println("ttttttttt1");
        //创建服务注册对象
        StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                .applySettings(cfg.getProperties()).build();

        //创建会话工厂对象
        sessionFactory = cfg.buildSessionFactory(serviceRegistry);
        //System.out.println("ttttttttt1");
        //会话对象
        session =sessionFactory.openSession();
        //开启事务
        transaction = session.beginTransaction();
    }

    @Override
    public Session getSession() {
        init();
        //System.out.println("ttttttttt2");
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
        //System.out.println("ttttttttt1");
        session = getSession();
        List alist = null;
        //System.out.println("ttttttttt3");
        alist = session.createQuery(hql).list();
        // System.out.println("ttttttttt3");
        session.close();
        return alist;
    }

    @Override
    public Object getFirst(String hql) {
        //查询不用事务管理
        Session session = null;
        //System.out.println("ttttttttt1");
        session = getSession();
        //System.out.println("ttttttttt2");
        List alist = null;
        Object aobject = null;
        alist = session.createQuery(hql).list();
        aobject = alist.get(0);
        //System.out.println("ttttttttt3");
        session.close();
        return aobject;
    }




}
