package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.IExamineService;
import service.IUserService;
import vo.DepartmentEntity;
import vo.ExamineEntity;
import vo.StudentEntity;
import vo.UserEntity;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class ExamAction extends ActionSupport {
    private ExamineEntity examineEntity;
    private IExamineService examineService;
    private UserEntity userEntity;
    private IUserService userService;

    private int ex_status;//审核结果
    private int stuId;//被审核学生的id



    /**
    审核学生信息
     */
    public String setExStatus() {
        try {
            examineService.setExamStatus(ex_status, stuId);
            if (ex_status == 1) {
//                将该学生信息添加到用户表
                userEntity.setUserPassword("123");
                userEntity.setUserPermit(1);
                userService.addUser(userEntity);
            }
            return SUCCESS;
        } catch (Exception e) {
            return ERROR;
        }
    }

    /**
     * 查询出所有待审核学生信息
     */
    public String queryAllStuToBeAudited(){
        StudentEntity studentEntity=new StudentEntity();
        ExamineEntity examineEntity=new ExamineEntity();
        List result=examineService.queryAllStuToBeAudited(examineEntity,studentEntity);
        HttpServletRequest request= ServletActionContext.getRequest();
        request.setAttribute("AllStuToBeAuditedList",result);
        return SUCCESS;
    }

    /**
     * 查询出所有待审核组织部门人员信息
     */
    public String queryAllDepartToBeAudited(){
        DepartmentEntity departmentEntity=new DepartmentEntity();
        ExamineEntity examineEntity=new ExamineEntity();
        List result=examineService.queryAllDepartToBeAudited(departmentEntity,examineEntity);
        HttpServletRequest request=ServletActionContext.getRequest();
        request.setAttribute("AllDepartToBeAudited",result);
        return SUCCESS;
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


    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }
}
