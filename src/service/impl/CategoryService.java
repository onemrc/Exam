package service.impl;

import dao.ICategoryDAO;
import service.ICategoryService;
import vo.CategoryEntity;

import java.util.List;

public class CategoryService implements ICategoryService {
    private ICategoryDAO categoryDAO;

    public ICategoryDAO getCategoryDAO() {
        return categoryDAO;
    }

    public void setCategoryDAO(ICategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }

    @Override
    public List queryAllCategory(CategoryEntity categoryEntity) {
        return categoryDAO.queryAllCategory(categoryEntity);
    }

    @Override
    public boolean addCategory(CategoryEntity categoryEntity) {
        return categoryDAO.addCategory(categoryEntity);
    }
}
