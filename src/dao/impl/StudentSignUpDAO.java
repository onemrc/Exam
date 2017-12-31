package dao.impl;

import dao.BaseDAO;
import dao.IStudentSignUpDAO;
import vo.StudentsignupEntity;

public class StudentSignUpDAO extends BaseDAO implements IStudentSignUpDAO {
    @Override
    public boolean insertStudentSignUp(StudentsignupEntity studentsignupEntity) {
        if (saveEntity(studentsignupEntity))
            return true;
        return false;
    }
}
