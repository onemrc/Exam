package service.impl;

import dao.IExamDAO;
import service.IExamService;
import vo.ExamEntity;

import java.util.List;

public class ExamService implements IExamService {
    private IExamDAO examDAO;

    public IExamDAO getExamDAO() {
        return examDAO;
    }

    public void setExamDAO(IExamDAO examDAO) {
        this.examDAO = examDAO;
    }

    @Override
    public boolean addExam(ExamEntity examEntity) {
        return examDAO.addExam(examEntity);
    }

    @Override
    public List queryAllExamName(ExamEntity examEntity) {
        return examDAO.queryAllExam(examEntity);
    }
}
