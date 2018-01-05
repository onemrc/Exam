package dao;

import vo.ExamEntity;

import java.util.List;

public interface IExamDAO {
    //新增考试信息
    boolean addExam(ExamEntity examEntity);

//    查询所有考试信息
    List queryAllExam(ExamEntity examEntity);

//    删除考试信息
    boolean removeExam(ExamEntity examEntity);

//    查询某一考试信息
    List queryOneExam(ExamEntity examEntity);

    //更改考试状态为已发布
    boolean updateExamStatus(int examId);
}
