package action;

import com.opensymphony.xwork2.ActionSupport;
import service.IExamineService;
import service.IUserService;
import vo.ExamineEntity;
import vo.UserEntity;

import java.util.List;

public class ExamAction extends ActionSupport {
    private ExamineEntity examineEntity;
    private IExamineService examineService;
    private UserEntity userEntity;
    private IUserService userService;

    private int ex_status;
    private int stuId;
    private String userName;
    private String userEmail;

    public List showExam(ExamineEntity examineEntity){
        return examineService.showExam(examineEntity);
    }

    public String setExStatus(){
        try{
            examineService.setExamStatus(ex_status,stuId);
            if (ex_status==1){
//                将该学生信息添加到用户表
            UserEntity userEntity=new UserEntity();
            userEntity.setUserName(userName);
            userEntity.setUserEmail(userEmail);
            userEntity.setUserPassword("123");
            userEntity.setUserPermit(1);
            userService.addUser(userEntity);
            }
            return SUCCESS;
        }catch (Exception e){
            return ERROR;
        }
    }

    public ExamineEntity getExamineEntity() {
        return examineEntity;
    }

    public void setExamineEntity(ExamineEntity examineEntity) {
        this.examineEntity = examineEntity;
    }

    public IExamineService getExamineService() {
        return examineService;
    }

    public void setExamineService(IExamineService examineService) {
        this.examineService = examineService;
    }

    public int getEx_status() {
        return ex_status;
    }

    public void setEx_status(int ex_status) {
        this.ex_status = ex_status;
    }

    public int getStuId() {
        return stuId;
    }

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }
}
