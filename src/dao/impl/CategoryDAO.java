package dao.impl;

import dao.BaseDAO;
import dao.ICategoryDAO;
import org.hibernate.Session;
import org.hibernate.query.Query;
import vo.CategoryEntity;

import java.util.List;

public class CategoryDAO extends BaseDAO implements ICategoryDAO {
    @Override
    public boolean addCategory(CategoryEntity categoryEntity) {
        return saveEntity(categoryEntity);
    }

    @Override
    public List queryAllCategory(CategoryEntity categoryEntity) {
        return queryEntity(categoryEntity);
    }
}
