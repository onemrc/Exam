package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class BaseDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    protected Session getSession() {
        return sessionFactory.openSession();
    }

    /*
    保存单一实体类信息
     */
    protected boolean saveEntity(Object object) {
        Session session = getSession();

        Transaction tx = session.beginTransaction();//开启事务
        try {
            session.save(object);
            tx.commit();    //提交事务
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /*
    查询某实体类全部信息
     */
    public List queryEntity(Object object){
        String hql="from "+object.getClass().getName();
        Session session=getSession();
        Query query=session.createQuery(hql);
        return query.getResultList();
    }

}
