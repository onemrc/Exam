package service.impl;

import dao.IStudentDAO;
import service.IStudentService;
import vo.StudentEntity;

public class StudentService implements IStudentService {
    private IStudentDAO studentDAO;

    @Override
    public boolean addStudent(StudentEntity studentEntity) {
        return studentDAO.addStudent(studentEntity);
    }

    @Override
    public StudentEntity findStudentById(int stu_id) {
        return studentDAO.findStudentById(stu_id);
    }

    @Override
    public void findStuIdByRegister(StudentEntity studentEntity) {
        studentDAO.findStuIdByRegister(studentEntity);
    }

    public IStudentDAO getStudentDAO() {
        return studentDAO;
    }

    public void setStudentDAO(IStudentDAO studentDAO) {
        this.studentDAO = studentDAO;
    }
}
