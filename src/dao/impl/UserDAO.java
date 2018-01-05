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
    public UserEntity validateUser(String userEmail, String password, int permit) {
        String hql = "from UserEntity u where u.userEmail=? and u.userPassword=?";

        Session session = getSession();
        Query query = session.createQuery(hql);

        int index = 0;
        query.setParameter(index, userEmail);
        query.setParameter(++index, password);
//        query.setParameter(++index, permit);

        List users = query.list();
        if (users.size() != 0) {
            return (UserEntity) users.get(0);
        }
        session.close();
        return null;
    }

    @Override
    public UserEntity addUser(UserEntity userEntity) {
        saveEntity(userEntity);
        return null;
    }

    @Override
    public boolean updatePassword(UserEntity userEntity,String newPassword) {
        try{
            String hql="update UserEntity u set u.userPassword=? where u.userId=? and u.userPassword=?";
            Session session=getSession();
            Query query=session.createQuery(hql);
            query.setParameter(0,newPassword);
            query.setParameter(1,userEntity.getUserId());
            query.setParameter(2,userEntity.getUserPassword());

            Transaction tx=session.beginTransaction();
            query.executeUpdate();
            tx.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
