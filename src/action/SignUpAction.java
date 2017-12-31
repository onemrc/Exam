package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.ISignUpService;
import vo.ExamEntity;
import vo.SignupEntity;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class SignUpAction extends ActionSupport{
    private ISignUpService signUpService;
    private SignupEntity signupEntity;

    public SignupEntity getSignupEntity() {
        return signupEntity;
    }

    public void setSignupEntity(SignupEntity signupEntity) {
        this.signupEntity = signupEntity;
    }

    public ISignUpService getSignUpService() {
        return signUpService;
    }

    public void setSignUpService(ISignUpService signUpService) {
        this.signUpService = signUpService;
    }

    /**
     * 发布报名信息
     */
    public String addSignUp(){
        if (signUpService.addSignUp(signupEntity))
            return SUCCESS;
        return ERROR;
    }

    /**
     * 显示所有可报名考试
     */
    public String showAllSignUp(){
        SignupEntity signupEntity=new SignupEntity();
        ExamEntity examEntity=new ExamEntity();
        List resultList=signUpService.queryAllSignUp(signupEntity,examEntity);
        HttpServletRequest request= ServletActionContext.getRequest();
        request.setAttribute("AllSignUp",resultList);
        return SUCCESS;
    }
}
