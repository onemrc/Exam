package dao.impl;

import dao.BaseDAO;
import dao.ISignUpDAO;
import org.hibernate.Session;
import org.hibernate.query.Query;
import vo.ExamEntity;
import vo.SignupEntity;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

public class SignUpDAO extends BaseDAO implements ISignUpDAO {

    @Override
    public boolean addSignUp(SignupEntity signupEntity) {
        return saveEntity(signupEntity);
    }

    @Override
    public List querySignUp(SignupEntity signupEntity, ExamEntity examEntity) {
        String hql="select sign.signUpId ,ex.examName,ex.examTime,sign.signUpPutTime,sign.signUpStartTime,sign.signUpEndTime,ex.examPlace from SignupEntity sign,ExamEntity ex where sign.examId=ex.examId";
        Session session=getSession();
        Query query=session.createQuery(hql);

        return query.getResultList();
    }

    @Override
    public List queryAllToBeSignUp(SignupEntity signupEntity, ExamEntity examEntity) {
        String hql="from SignupEntity sign,ExamEntity ex where sign.examId=ex.examId";
        Session session=getSession();
        Query query=session.createQuery(hql);
        return query.getResultList();
    }
}
