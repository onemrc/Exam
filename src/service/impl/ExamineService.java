package service.impl;

import dao.IExamineDAO;
import service.IExamineService;
import vo.ExamineEntity;

import java.util.List;

public class ExamineService implements IExamineService {
    private IExamineDAO examineDAO;

    @Override
    public void addStuIdToExam(ExamineEntity examineEntity) {
        examineDAO.addStuIdToExam(examineEntity);
    }

    @Override
    public List showExam(ExamineEntity examineEntity) {
        return examineDAO.showExam(examineEntity);
    }

    @Override
    public List queryStuidByExam(ExamineEntity examineEntity) {
        return examineDAO.queryStuidByExam(examineEntity);
    }

    @Override
    public void setExamStatus(int examStatus,int stuId) {
        examineDAO.setExamStatus(examStatus,stuId);
    }

    public IExamineDAO getExamineDAO() {
        return examineDAO;
    }

    public void setExamineDAO(IExamineDAO examineDAO) {
        this.examineDAO = examineDAO;
    }
}
