package youngun.tis.user.admin.service;

import java.util.List;

import youngun.tis.user.admin.dao.UserDao;
import youngun.tis.user.admin.dao.UserDaoImpl;
import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	
	public UserServiceImpl() {
		this.userDao = new UserDaoImpl();
			
	}

	@Override
	public List<User> findUsers(Page page) {
		
		return userDao.getUsers(page);
	}
	
	@Override
	public List<User> blindUsers(Page page) {
		
		return userDao.getblindUsers(page);
	}
	
	@Override
	public List<User> FblindUsers(){
		
		return userDao.getFblindUsers();
	}
	
	@Override
	public List<User> StepUsers(){
		
		return userDao.getStepUsers();
	}
	
	@Override
	public List<User> MainUsers(){
		
		return userDao.getMainUsers();
	}
}