package action;

import com.opensymphony.xwork2.ActionSupport;
import service.IStudentService;
import vo.StudentEntity;

public class StudentAction extends ActionSupport {
    private StudentEntity studentEntity;//学生注册递交的信息

    private IStudentService studentService;


    //    学生注册申请
    public String apply() {
//        保存学生信息
        boolean addResult = studentService.addStudent(studentEntity);
        if (addResult)
            return SUCCESS;
        return ERROR;
    }

//    getting、setting

    public StudentEntity getStudentEntity() {
        return studentEntity;
    }

    public void setStudentEntity(StudentEntity studentEntity) {
        this.studentEntity = studentEntity;
    }

    public IStudentService getStudentService() {
        return studentService;
    }

    public void setStudentService(IStudentService studentService) {
        this.studentService = studentService;
    }
}
