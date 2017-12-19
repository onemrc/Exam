package dao;

import vo.ExamineEntity;
import vo.StudentEntity;

import java.util.List;

public interface IStudentDAO {
    //    添加学生信息
    boolean addStudent(StudentEntity studentEntity);

//    保存学生信息

    //    添加学生审核信息
    ExamineEntity addStudentToExamine(ExamineEntity examineEntity);

    //      通过学生id,查询是否存在
    StudentEntity findStudentById(int stu_id);


    //    通过学生注册时输入的身份证号查询学生id
    void findStuIdByRegister(StudentEntity studentEntity);

//    显示学生信息
    List showStu(StudentEntity studentEntity);
}
