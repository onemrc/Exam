package service;

import vo.ExamEntity;

import java.util.List;

public interface IExamService {
    //新增考试信息
    boolean addExam(ExamEntity examEntity);

    //    查询所有考试
    List queryAllExamName(ExamEntity examEntity);
}
