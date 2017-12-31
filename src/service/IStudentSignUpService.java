package service;

import vo.StudentsignupEntity;

public interface IStudentSignUpService {
    //    学生选择考试报名
    boolean insertStudentSignUp(StudentsignupEntity studentsignupEntity);
}
