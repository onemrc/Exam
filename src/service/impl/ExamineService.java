package service.impl;

import dao.IExamineDAO;
import service.IExamineService;
import vo.DepartmentEntity;
import vo.ExamineEntity;
import vo.StudentEntity;

import java.util.List;

public class ExamineService implements IExamineService {
    private IExamineDAO examineDAO;

    @Override
    public void addStuIdToExam(ExamineEntity examineEntity) {
        examineDAO.addStuIdToExam(examineEntity);
    }

    @Override
    public List queryAllStuToBeAudited(ExamineEntity examineEntity, StudentEntity studentEntity) {
        return examineDAO.queryAllStuToBeAudited(examineEntity,studentEntity);
    }

    @Override
    public List queryAllDepartToBeAudited(DepartmentEntity departmentEntity, ExamineEntity examineEntity) {
        return examineDAO.queryAllDepartToBeAudited(departmentEntity,examineEntity);
    }

    @Override
    public List queryStuidByExam(ExamineEntity examineEntity) {
        return examineDAO.queryStuidByExam(examineEntity);
    }

    @Override
    public void setExamStatus(int examStatus, int stuId) {
        examineDAO.setExamStatus(examStatus, stuId);
    }

    @Override
    public void addDepartIdToExam(ExamineEntity examineEntity) {
        examineDAO.addDepartIdToExam(examineEntity);
    }

    public IExamineDAO getExamineDAO() {
        return examineDAO;
    }

    public void setExamineDAO(IExamineDAO examineDAO) {
        this.examineDAO = examineDAO;
    }
}
