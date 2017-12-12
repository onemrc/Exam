package service.impl;

import dao.IUserDAO;
import service.IUserService;
import vo.UserEntity;

public class UserService implements IUserService {
    private IUserDAO userDAO;

    @Override
    public UserEntity addUser(UserEntity userEntity) {
        return userDAO.addUser(userEntity);
    }

    @Override
    public UserEntity validateUser(String username, String password, int permit) {
        return userDAO.validateUser(username, password, permit);
    }


    public IUserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(IUserDAO userDAO) {
        this.userDAO = userDAO;
    }
}
