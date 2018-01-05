package dao;

import vo.ExamEntity;
import vo.SignupEntity;

import java.util.List;

public interface ISignUpDAO {

//    添加报名信息
    boolean addSignUp(SignupEntity signupEntity);

//    查询所有可报名考试
    List queryAllToBeSignUp(SignupEntity signupEntity, ExamEntity examEntity);

//    查询所有已发布报名信息
    List querySignUp(SignupEntity signupEntity,ExamEntity examEntity);
}
