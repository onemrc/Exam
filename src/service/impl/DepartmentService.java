package service.impl;

import dao.IDepartmentDAO;
import service.IDepartmentService;
import vo.DepartmentEntity;
import vo.ExamineEntity;

import java.util.List;

public class DepartmentService implements IDepartmentService {
    private IDepartmentDAO departmentDAO;

    @Override
    public boolean removeDepart(DepartmentEntity departmentEntity) {
        return departmentDAO.removeDepart(departmentEntity);
    }

    @Override
    public List queryAllRegDepart(DepartmentEntity departmentEntity, ExamineEntity examineEntity) {
        return departmentDAO.queryAllRegDepart(departmentEntity,examineEntity);
    }

    @Override
    public boolean addDepartment(DepartmentEntity departmentEntity) {
        return departmentDAO.addDepartment(departmentEntity);
    }

    @Override
    public int findIdByDepartReg(DepartmentEntity departmentEntity) {
        return departmentDAO.findIdByDepartReg(departmentEntity);
    }

    public IDepartmentDAO getDepartmentDAO() {
        return departmentDAO;
    }

    public void setDepartmentDAO(IDepartmentDAO departmentDAO) {
        this.departmentDAO = departmentDAO;
    }
}
