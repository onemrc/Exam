package dao.impl;

import dao.BaseDAO;
import dao.IExamDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import vo.ExamEntity;

import java.util.List;

public class ExamDAO extends BaseDAO implements IExamDAO {
    @Override
    public List queryAllExam(ExamEntity examEntity) {
        String hql="from ExamEntity ex where ex.examStatus=0";
        Session session=getSession();
        Query query=session.createQuery(hql);
        return query.getResultList();
    }

    @Override
    public boolean addExam(ExamEntity examEntity) {
        if (saveEntity(examEntity))
            return true;
        return false;
    }

    @Override
    public boolean removeExam(ExamEntity examEntity) {
        try{
            String hql="delete from ExamEntity ex where ex.examId="+examEntity.getExamId();
            Session session = getSession();
            Transaction tx = session.beginTransaction();
            Query query = session.createQuery(hql);
            query.executeUpdate();
            tx.commit();
            return true;
        }catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List queryOneExam(ExamEntity examEntity) {
        String hql="from ExamEntity ex where ex.examId="+examEntity.getExamId();
        Session session=getSession();
        Query query=session.createQuery(hql);
        return query.getResultList();
    }

    @Override
    public boolean updateExamStatus(int examId) {
        try{
            String hql="update ExamEntity ex set ex.examStatus=1 where ex.examId="+examId;
            Session session=getSession();
            Transaction tx = session.beginTransaction();
            Query query=session.createQuery(hql);
            query.executeUpdate();
            tx.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
