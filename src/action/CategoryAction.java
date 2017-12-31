package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.ICategoryService;
import vo.CategoryEntity;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class CategoryAction extends ActionSupport {
    private ICategoryService categoryService;
    private CategoryEntity categoryEntity;

    public CategoryEntity getCategoryEntity() {
        return categoryEntity;
    }

    public void setCategoryEntity(CategoryEntity categoryEntity) {
        this.categoryEntity = categoryEntity;
    }

    public ICategoryService getCategoryService() {
        return categoryService;
    }

    public void setCategoryService(ICategoryService categoryService) {
        this.categoryService = categoryService;
    }

    /**
     * 新增考试类别
     */
    public String addCategory(){
        if (categoryService.addCategory(categoryEntity))
            return SUCCESS;
        return ERROR;
    }

    /**
     * 查询全部考试类别
     */
    public String queryAllCategory(){
        CategoryEntity categoryEntity=new CategoryEntity();
        List resultList=categoryService.queryAllCategory(categoryEntity);
        HttpServletRequest request= ServletActionContext.getRequest();
        request.setAttribute("AllCategory",resultList);
        if (resultList.size()==0)
            return ERROR;
        return SUCCESS;
    }
}
