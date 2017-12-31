package dao;

import vo.CategoryEntity;

import java.util.List;

public interface ICategoryDAO {
    //新增考试种类
    boolean addCategory(CategoryEntity categoryEntity);

    //查询所有考试类别
    List queryAllCategory(CategoryEntity categoryEntity);
}
