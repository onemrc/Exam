package dao;

import vo.DepartmentEntity;

public interface IDepartmentDAO {

    //新增组织部门人员信息
    boolean addDepartment(DepartmentEntity departmentEntity);

    //通过组织部门人员注册时输入的姓名和工号查询 id
    int findIdByDepartReg(DepartmentEntity departmentEntity);


}
