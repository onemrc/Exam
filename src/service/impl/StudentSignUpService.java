package service.impl;

import dao.IStudentSignUpDAO;
import service.IStudentSignUpService;
import vo.StudentsignupEntity;

import java.util.List;

public class StudentSignUpService implements IStudentSignUpService {
    private IStudentSignUpDAO studentSignUpDAO;

    public IStudentSignUpDAO getStudentSignUpDAO() {
        return studentSignUpDAO;
    }

    public void setStudentSignUpDAO(IStudentSignUpDAO studentSignUpDAO) {
        this.studentSignUpDAO = studentSignUpDAO;
    }

    @Override
    public boolean insertStudentSignUp(StudentsignupEntity studentsignupEntity) {
        return studentSignUpDAO.insertStudentSignUp(studentsignupEntity);
    }

    @Override
    public List queryStuToSignUp(StudentsignupEntity studentsignupEntity) {
        return studentSignUpDAO.queryStuToSignUp(studentsignupEntity);
    }

    @Override
    public List StuQuerySignUp(StudentsignupEntity studentsignupEntity) {
        return studentSignUpDAO.StuQuerySignUp(studentsignupEntity);
    }
}
