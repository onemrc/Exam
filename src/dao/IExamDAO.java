package dao;

import vo.ExamEntity;

import java.util.List;

public interface IExamDAO {
    //新增考试信息
    boolean addExam(ExamEntity examEntity);

//    查询所有考试信息
    List queryAllExam(ExamEntity examEntity);
}
