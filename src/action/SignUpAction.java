package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.IExamService;
import service.ISignUpService;
import vo.ExamEntity;
import vo.SignupEntity;
import vo.util.TempSignUpInfo;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

public class SignUpAction extends ActionSupport{
    private  ISignUpService signUpService;
    private SignupEntity signupEntity;

    private IExamService examService;

    public IExamService getExamService() {
        return examService;
    }

    public void setExamService(IExamService examService) {
        this.examService = examService;
    }

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
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
        signupEntity.setSignUpPutTime(df.format(new Date()));//获取当前日期
        if (signUpService.addSignUp(signupEntity)){
            //更改相应考试的状态
            if (examService.updateExamStatus(signupEntity.getExamId()))
            return SUCCESS;
        }

        return ERROR;
    }

//    /**
//     * 显示所有可报名考试
//     */
//    public String showAllToBeSignUp(){
//        SignupEntity signupEntity=new SignupEntity();
//        ExamEntity examEntity=new ExamEntity();
//        List resultList=signUpService.queryAllToBeSignUp(signupEntity,examEntity);
//        HttpServletRequest request= ServletActionContext.getRequest();
//        request.setAttribute("AllSignUp",resultList);
//        return SUCCESS;
//    }

    /**
     * 显示所有已发布报名信息
     */
    public String showAllSignUp(){
        SignupEntity signupEntity=new SignupEntity();
        ExamEntity examEntity=new ExamEntity();
        List resultList=signUpService.querySignUp(signupEntity,examEntity);
        HttpServletRequest request=ServletActionContext.getRequest();
//        request.setAttribute("SignUp",resultList);

        //将结果集存进一个临时实体类中
        if (resultList.size()>0){
            List list=new LinkedList();
            TempSignUpInfo tempSignUpInfo;
            for (int i=0;i<resultList.size();i++){
                tempSignUpInfo=new TempSignUpInfo();
                Object[] objects=(Object[])resultList.get(i);
                int signUpId=(int)objects[0];
                String examName=(String)objects[1];
                String examTime=(String)objects[2];
                String signUpPutTime=(String)objects[3];
                String signUpStartTime=(String)objects[4];
                String signUpEndTime=(String)objects[5];
                String examPlace=(String)objects[6];

                // 重新封装在一个javabean里面
                tempSignUpInfo.setSignUpId(signUpId);
                tempSignUpInfo.setExamName(examName);
                tempSignUpInfo.setExamTime(examTime);
                tempSignUpInfo.setSignUpPutTime(signUpPutTime);
                tempSignUpInfo.setSignUpStartTime(signUpStartTime);
                tempSignUpInfo.setSignUpEndTime(signUpEndTime);
                tempSignUpInfo.setExamPlace(examPlace);

                list.add(tempSignUpInfo);//最后封装在list中
            }
            request.setAttribute("SignUp",list);
        }

        return SUCCESS;
    }

}
