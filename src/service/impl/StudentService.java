package service.impl;

import dao.IStudentDAO;
import service.IStudentService;
import vo.ExamineEntity;
import vo.StudentEntity;

import java.util.List;

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


    @Override
    public ExamineEntity addStudentToExamine(ExamineEntity examineEntity) {
        return studentDAO.addStudentToExamine(examineEntity);
    }

    @Override
    public boolean removeStu(StudentEntity studentEntity) {
        return studentDAO.removeStu(studentEntity);
    }

    @Override
    public List showAllRegStu(StudentEntity studentEntity, ExamineEntity examineEntity) {
        return studentDAO.showAllRegStu(studentEntity, examineEntity);
    }

    public IStudentDAO getStudentDAO() {
        return studentDAO;
    }

    public void setStudentDAO(IStudentDAO studentDAO) {
        this.studentDAO = studentDAO;
    }
}
