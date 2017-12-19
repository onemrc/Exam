package service;

import vo.ExamineEntity;
import vo.StudentEntity;

import java.util.List;

public interface IExamineService {
    //    将注册学生id存到 examine表
    void addStuIdToExam(ExamineEntity examineEntity);

    List showExam(ExamineEntity examineEntity);

    List queryStuidByExam(ExamineEntity examineEntity);

    void setExamStatus(int examStatus,int stuId);
}
