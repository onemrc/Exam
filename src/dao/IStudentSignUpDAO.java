package dao;

import vo.StudentsignupEntity;

import java.util.List;

public interface IStudentSignUpDAO {
//    学生选择考试报名
    boolean insertStudentSignUp(StudentsignupEntity studentsignupEntity);

//    查看某考试报名的学生
    List queryStuToSignUp(StudentsignupEntity studentsignupEntity);

//    学生端查看已报名考试
    List StuQuerySignUp(StudentsignupEntity studentsignupEntity);
}
