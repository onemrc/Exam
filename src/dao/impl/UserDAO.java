package dao.impl;

import dao.BaseDAO;
import dao.IUserDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import vo.UserEntity;

import java.util.List;

public class UserDAO extends BaseDAO implements IUserDAO {
    @Override
    public UserEntity validateUser(String userName, String password, int permit) {
        String hql = "from UserEntity u where u.userName=? and u.password=? and u.permit=?";

        Session session = getSession();
        Query query = session.createQuery(hql);

        int index = 0;
        query.setParameter(index, userName);
        query.setParameter(++index, password);
        query.setParameter(++index, permit);

        List users = query.list();
        if (users.size() != 0) {
            return (UserEntity) users.get(0);
        }
        session.close();
        return null;
    }

    @Override
    public UserEntity addUser(UserEntity userEntity) {
        Session session = getSession();
        //开启事务
        Transaction tx = session.beginTransaction();

        session.save(userEntity);

        //提交事务
        tx.commit();
        session.close();
        return null;
    }
}
