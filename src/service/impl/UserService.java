package service.impl;

import dao.impl.UserDAO;
import service.IUserService;
import vo.UserEntity;

public class UserService implements IUserService {
    private UserDAO userDAO;

    @Override
    public UserEntity validateUser(String username, String password, int permit) {
        return userDAO.validateUser(username,password,permit);
    }



    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
}
