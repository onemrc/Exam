package service.impl;

import dao.ISignUpDAO;
import service.ISignUpService;
import vo.ExamEntity;
import vo.SignupEntity;

import java.util.List;

public class SignUpService implements ISignUpService {
    private ISignUpDAO signUpDAO;

    public ISignUpDAO getSignUpDAO() {
        return signUpDAO;
    }

    public void setSignUpDAO(ISignUpDAO signUpDAO) {
        this.signUpDAO = signUpDAO;
    }

    @Override
    public boolean addSignUp(SignupEntity signupEntity) {
        return signUpDAO.addSignUp(signupEntity);
    }

    @Override
    public List queryAllSignUp(SignupEntity signupEntity, ExamEntity examEntity) {
        return signUpDAO.queryAllSignUp(signupEntity,examEntity);
    }
}
