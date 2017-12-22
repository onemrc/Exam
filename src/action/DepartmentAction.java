package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.IDepartmentService;
import service.IExamineService;
import vo.DepartmentEntity;
import vo.ExamineEntity;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class DepartmentAction extends ActionSupport {
    private IDepartmentService departmentService;
    private IExamineService examineService;
    private DepartmentEntity departmentEntity;
    private ExamineEntity examineEntity;

    /**
     * 新增组织部门人员信息
     */
    public String addDepartment() {
        if (departmentService.addDepartment(departmentEntity)) {
            Map<String, Object> map = ActionContext.getContext().getSession();
            map.put("departmentEntity", departmentEntity);

            addIdToExamine();
            return SUCCESS;
        }
        return ERROR;
    }

    /**
     * 查询出所有已审核的组织人员信息
     */
    public String queryAllRegDepart(){
        DepartmentEntity departmentEntity=new DepartmentEntity();
        ExamineEntity examineEntity=new ExamineEntity();
        List resultList=departmentService.queryAllRegDepart(departmentEntity,examineEntity);
        HttpServletRequest request= ServletActionContext.getRequest();
        request.setAttribute("AllRegDepart",resultList);
        return SUCCESS;
    }

    /**
     * 删除组织人员信息
     */
    public String removeDepart(){
        if (departmentService.removeDepart(departmentEntity))
            return SUCCESS;
        return ERROR;
    }

    //    将注册的组织部门id 存入Examine
    private void addIdToExamine() {
        Map<String, Object> session = ActionContext.getContext().getSession();
        DepartmentEntity departmentEntity = (DepartmentEntity) session.get("departmentEntity");
        int id = departmentService.findIdByDepartReg(departmentEntity);

        //存入exam
        ExamineEntity examineEntity = new ExamineEntity();
        examineEntity.setDepartId(id);
        examineService.addDepartIdToExam(examineEntity);
    }

    public IDepartmentService getDepartmentService() {
        return departmentService;
    }

    public void setDepartmentService(IDepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    public DepartmentEntity getDepartmentEntity() {
        return departmentEntity;
    }

    public void setDepartmentEntity(DepartmentEntity departmentEntity) {
        this.departmentEntity = departmentEntity;
    }

    public IExamineService getExamineService() {
        return examineService;
    }

    public void setExamineService(IExamineService examineService) {
        this.examineService = examineService;
    }

    public ExamineEntity getExamineEntity() {
        return examineEntity;
    }

    public void setExamineEntity(ExamineEntity examineEntity) {
        this.examineEntity = examineEntity;
    }
}
