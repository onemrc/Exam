package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

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


}
