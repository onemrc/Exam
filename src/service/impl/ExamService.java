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

    @Override
    public boolean removeExam(ExamEntity examEntity) {
        return examDAO.removeExam(examEntity);
    }

    @Override
    public boolean updateExamStatus(int examId) {
        return examDAO.updateExamStatus(examId);
    }

    @Override
    public List queryOneExam(ExamEntity examEntity) {
        return examDAO.queryOneExam(examEntity);
    }
}
