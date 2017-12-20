package dao;

import vo.UserEntity;

public interface IUserDAO {

    //    用户登陆时，验证用户信息
    UserEntity validateUser(String userEmail, String password, int permit);

    UserEntity addUser(UserEntity userEntity);


}
