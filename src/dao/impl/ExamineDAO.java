package dao.impl;

import dao.BaseDAO;
import dao.IExamineDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import vo.DepartmentEntity;
import vo.ExamineEntity;
import vo.StudentEntity;

import java.util.List;

public class ExamineDAO extends BaseDAO implements IExamineDAO {
    @Override
    public void addStuIdToExam(ExamineEntity examineEntity) {
      saveEntity(examineEntity);
    }

    @Override
    public List queryAllStuToBeAudited(ExamineEntity examineEntity, StudentEntity studentEntity) {
        String hql = "select stu from StudentEntity stu,ExamineEntity ex where stu.stuId=ex.stuId and ex.exStatus=0";
        Session session = getSession();
        Query query = session.createQuery(hql);
        return query.getResultList();
    }

    @Override
    public List queryStuidByExam(ExamineEntity examineEntity) {
        String hql = "select stuId from ExamineEntity ex where ex.exStatus=0";
        Session session = getSession();
        Query query = session.createQuery(hql);
        return query.getResultList();
    }

    @Override
    public void setExamStatus(int examStatus, int stuId) {
        Session session = getSession();
        Transaction tx = session.beginTransaction();
        try {
            String hql = "update ExamineEntity ex set ex.exStatus=? where ex.stuId=?";
            Query query = session.createQuery(hql);
            query.setParameter(0, examStatus);
            query.setParameter(1, stuId);
            query.executeUpdate();
            tx.commit();
        } catch (Exception e) {
            System.out.print("…Û∫À ß∞‹");
            e.printStackTrace();
        }
    }

    @Override
    public List queryAllDepartToBeAudited(DepartmentEntity departmentEntity, ExamineEntity examineEntity) {
        return null;
    }

    @Override
    public void addDepartIdToExam(ExamineEntity examineEntity) {
        saveEntity(examineEntity);
    }
}
