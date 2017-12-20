package dao;


import vo.DepartmentEntity;
import vo.ExamineEntity;
import vo.StudentEntity;

import java.util.List;

public interface IExamineDAO {
    //    将注册学生id传到 examine表
    void addStuIdToExam(ExamineEntity examineEntity);

    //    查询出所有待审核的学生信息
    List queryAllStuToBeAudited(ExamineEntity examineEntity, StudentEntity studentEntity);

    //    查询未审核的学生id
    List queryStuidByExam(ExamineEntity examineEntity);

    //  审核学生信息操作
    void setStuExStatus(int examStatus, int stuId);

    //    查询所有待审核组织部门人员信息
    List queryAllDepartToBeAudited(DepartmentEntity departmentEntity, ExamineEntity examineEntity);

    //将注册组织部门id存到examine表
    void addDepartIdToExam(ExamineEntity examineEntity);

    //审核组织部门人员信息操作
    void setDepartExStatus(int examStatus,int departId);

}
