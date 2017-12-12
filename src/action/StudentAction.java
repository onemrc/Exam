package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import service.IExamineService;
import service.IStudentService;
import vo.ExamineEntity;
import vo.StudentEntity;

import java.util.Map;

public class StudentAction extends ActionSupport {
    private StudentEntity studentEntity;//学生注册递交的信息
//    private ExamineEntity examineEntity;

    private IStudentService studentService;
    private IExamineService examineService;


    //    学生注册申请
    public String apply() {
//        保存学生信息
        boolean addResult = studentService.addStudent(studentEntity);
        if (addResult) {
            studentService.findStuIdByRegister(studentEntity);
            addStuIdToExam();
//            examineEntity.setStuId(stu_id);
//            addStuIdToExam(examineEntity);
            return SUCCESS;
        }
        return ERROR;
    }

    //    将注册的学生id 存入Examine
    private void addStuIdToExam() {
        Map session = ActionContext.getContext().getSession();
        int stu_id = (int) session.get("stu_id");
        ExamineEntity examineEntity = new ExamineEntity();
        examineEntity.setStuId(stu_id);
        examineService.addStuIdToExam(examineEntity);
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

    public IExamineService getExamineService() {
        return examineService;
    }

    public void setExamineService(IExamineService examineService) {
        this.examineService = examineService;
    }


}
