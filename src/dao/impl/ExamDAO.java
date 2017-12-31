package dao.impl;

import dao.BaseDAO;
import dao.IExamDAO;
import vo.ExamEntity;

import java.util.List;

public class ExamDAO extends BaseDAO implements IExamDAO {
    @Override
    public List queryAllExam(ExamEntity examEntity) {
        return queryEntity(examEntity);
    }

    @Override
    public boolean addExam(ExamEntity examEntity) {
        if (saveEntity(examEntity))
            return true;
        return false;
    }
}
