package service.impl;

import dao.IExamineDAO;
import service.IExamineService;
import vo.ExamineEntity;

public class ExamineService implements IExamineService {
    private IExamineDAO examineDAO;

    @Override
    public void addStuIdToExam(ExamineEntity examineEntity) {
        examineDAO.addStuIdToExam(examineEntity);
    }

    public IExamineDAO getExamineDAO() {
        return examineDAO;
    }

    public void setExamineDAO(IExamineDAO examineDAO) {
        this.examineDAO = examineDAO;
    }
}
