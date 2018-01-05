package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.IUserService;
import vo.StudentEntity;
import vo.UserEntity;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class UserAction extends ActionSupport {
    private UserEntity userEntity;      //接收登录界面输入的用户信息.
    private StudentEntity studentEntity;    //接受管理员审核通过的学生信息


    private IUserService userService;

    private String newPassword;//新密码（修改密码使用）

    //    用户登陆
    public String login() {
        UserEntity u = userService.validateUser(userEntity.getUserEmail(), userEntity.getUserPassword(), userEntity.getUserPermit());
        if (u != null) {
            Map<String, Object> session = ActionContext.getContext().getSession();

//            保存此次会话信息
            session.put("user", u);
//            HttpServletRequest request= ServletActionContext.getRequest();
//            request.setAttribute("user",u);
            if (u.getUserPermit()==0){
                return SUCCESS;
            }else if (u.getUserPermit()==1){
                return "stu_success";
            }else if (u.getUserPermit()==2){
                return "depart_success";
            }


        }
        return ERROR;
    }

    //用户注销
    public String loginout(){
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.remove("user");
        return SUCCESS;
    }

    /**
     *修改密码
     */
    public String updatePassword(){
        if (userService.updatePassword(userEntity,newPassword))
            return SUCCESS;
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

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
}
