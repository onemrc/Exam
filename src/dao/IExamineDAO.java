package dao;


import vo.ExamineEntity;

public interface IExamineDAO {
    //    将注册学生id传到 examine表
    void addStuIdToExam(ExamineEntity examineEntity);
}
