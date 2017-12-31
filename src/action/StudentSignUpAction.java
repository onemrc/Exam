package action;

import com.opensymphony.xwork2.ActionSupport;
import service.IStudentSignUpService;
import vo.StudentsignupEntity;

public class StudentSignUpAction extends ActionSupport{
    private StudentsignupEntity studentsignupEntity;
    private IStudentSignUpService studentSignUpService;

    public StudentsignupEntity getStudentsignupEntity() {
        return studentsignupEntity;
    }

    public void setStudentsignupEntity(StudentsignupEntity studentsignupEntity) {
        this.studentsignupEntity = studentsignupEntity;
    }

    public IStudentSignUpService getStudentSignUpService() {
        return studentSignUpService;
    }

    public void setStudentSignUpService(IStudentSignUpService studentSignUpService) {
        this.studentSignUpService = studentSignUpService;
    }

    /**
     * 学生选择考试报名
     *
     * 需要接收SignUp_id、stu_id
     */
    public String selectSignUp(){
        if (studentSignUpService.insertStudentSignUp(studentsignupEntity))
            return SUCCESS;
        return ERROR;
    }
}
