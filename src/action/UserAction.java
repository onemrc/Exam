package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import service.IUserService;
import vo.StudentEntity;
import vo.UserEntity;

import java.util.Map;

public class UserAction extends ActionSupport {
    private UserEntity userEntity;      //接收登录界面输入的用户信息.
    private StudentEntity studentEntity;    //接受管理员审核通过的学生信息


    private IUserService userService;

    //    用户登陆
    public String login() {
        UserEntity u = userService.validateUser(userEntity.getUserEmail(), userEntity.getUserPassword(), userEntity.getUserPermit());
        if (u != null) {
            Map<String, Object> session = ActionContext.getContext().getSession();

//            保存此次会话信息
            session.put("user", u);
            return SUCCESS;
        }
        return ERROR;
    }


    //    set、get
    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public StudentEntity getStudentEntity() {
        return studentEntity;
    }

    public void setStudentEntity(StudentEntity studentEntity) {
        this.studentEntity = studentEntity;
    }


    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }
}
