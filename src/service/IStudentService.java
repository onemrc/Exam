package service;

import vo.StudentEntity;

import java.util.List;

public interface IStudentService {
    //    添加学生信息
    boolean addStudent(StudentEntity studentEntity);

    //    通过学生id,查询是否存在
    StudentEntity findStudentById(int stu_id);

    void findStuIdByRegister(StudentEntity studentEntity);

    List showStu(StudentEntity studentEntity);
}
