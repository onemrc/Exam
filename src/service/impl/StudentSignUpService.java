package service.impl;

import dao.IStudentSignUpDAO;
import service.IStudentSignUpService;
import vo.StudentsignupEntity;

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
}
