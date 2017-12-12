package service;

import vo.ExamineEntity;

public interface IExamineService {
    //    将注册学生id存到 examine表
    void addStuIdToExam(ExamineEntity examineEntity);
}
