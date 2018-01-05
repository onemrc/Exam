package dao.impl;

import dao.BaseDAO;
import dao.IStudentSignUpDAO;
import org.hibernate.Session;
import org.hibernate.query.Query;
import vo.StudentsignupEntity;


import java.util.List;

public class StudentSignUpDAO extends BaseDAO implements IStudentSignUpDAO {
    @Override
    public boolean insertStudentSignUp(StudentsignupEntity studentsignupEntity) {
        if (saveEntity(studentsignupEntity))
            return true;
        return false;
    }

    @Override
    public List queryStuToSignUp(StudentsignupEntity studentsignupEntity) {
        String hql="select stu.stuId ,stu.stuName,stu.stuIdNum,sign.signUpPutTime from StudentsignupEntity stusg,StudentEntity stu ,SignupEntity sign where stusg.stuId=stu.stuId and stusg.signUpId="+studentsignupEntity.getSignUpId();
        Session session=getSession();
        Query query=session.createQuery(hql);

        return query.getResultList();
    }

    @Override
    public List StuQuerySignUp(StudentsignupEntity studentsignupEntity) {
        String hql="select stusign.signUpTime,ex.examName,ex.examPlace,ex.examTime from StudentsignupEntity  stusign,SignupEntity sign,ExamEntity ex where stusign.stuId=? and stusign.signUpId=sign.signUpId and sign.examId=ex.examId";
        Session session=getSession();
        Query query=session.createQuery(hql);
        query.setParameter(0,studentsignupEntity.getStuId());
        return query.getResultList();
    }
}
