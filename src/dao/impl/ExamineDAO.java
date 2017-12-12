package dao.impl;

import dao.BaseDAO;
import dao.IExamineDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import vo.ExamineEntity;

public class ExamineDAO extends BaseDAO implements IExamineDAO {
    @Override
    public void addStuIdToExam(ExamineEntity examineEntity) {
        Session session = getSession();

        //¿ªÆôÊÂÎñ
        Transaction tx = session.beginTransaction();
        try {
            session.save(examineEntity);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
