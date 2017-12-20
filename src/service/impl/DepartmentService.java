package service.impl;

import dao.IDepartmentDAO;
import service.IDepartmentService;
import vo.DepartmentEntity;

public class DepartmentService implements IDepartmentService {
    private IDepartmentDAO departmentDAO;

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
