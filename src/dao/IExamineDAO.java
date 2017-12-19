package dao;


import vo.ExamineEntity;

import java.util.List;

public interface IExamineDAO {
    //    将注册学生id传到 examine表
    void addStuIdToExam(ExamineEntity examineEntity);

//    查询出所有待审核的注册信息
    List showExam(ExamineEntity examineEntity);

//    查询未审核的学生id
    List queryStuidByExam(ExamineEntity examineEntity);

//  审核操作
    void setExamStatus(int examStatus,int stuId);
}
