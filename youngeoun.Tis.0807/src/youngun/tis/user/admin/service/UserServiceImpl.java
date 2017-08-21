package youngun.tis.user.admin.service;

import youngun.tis.user.admin.dao.UserDao;
import youngun.tis.user.admin.dao.UserDaoImpl;
import youngun.tis.user.admin.domain.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	
	public UserServiceImpl() {
		this.userDao = new UserDaoImpl();
			
	}

	@Override
	public User findUsers() {
		
		return userDao.getUsers();
	}
}
