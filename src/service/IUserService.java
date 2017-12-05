package service;

import vo.UserEntity;

public interface IUserService {

//    验证用户信息
UserEntity validateUser(String username, String password, int permit);
}
