package service;

import vo.DepartmentEntity;
import vo.ExamineEntity;

import java.util.List;

public interface IDepartmentService {
    //新增组织部门人员信息
    boolean addDepartment(DepartmentEntity departmentEntity);

    //通过组织部门人员注册时输入的姓名和工号查询 id
    int findIdByDepartReg(DepartmentEntity departmentEntity);

    //查询组织人员信息（已注册成功）
    List queryAllRegDepart(DepartmentEntity departmentEntity, ExamineEntity examineEntity);

    //删除组织人员信息
    boolean removeDepart(DepartmentEntity departmentEntity);

}
