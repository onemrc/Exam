package service;

import vo.ExamEntity;
import vo.SignupEntity;

import java.util.List;

public interface ISignUpService {

    //    添加报名信息
    boolean addSignUp(SignupEntity signupEntity);

    //    查询所有报名考试
    List queryAllSignUp(SignupEntity signupEntity, ExamEntity examEntity);
}
