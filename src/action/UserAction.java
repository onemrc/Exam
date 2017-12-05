package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import service.IUserService;
import vo.UserEntity;

import java.util.Map;

public class UserAction extends ActionSupport{
    private UserEntity userEntity;      //接收界面输入的用户信息
    private IUserService userService;

    public String login(){
        UserEntity u=userService.validateUser(userEntity.getUserName(),userEntity.getPassword(),userEntity.getPermit());
        if (u!=null){
            Map session= ActionContext.getContext().getSession();

//            保存此次会话信息
            session.put("user",u);
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

    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }
}
