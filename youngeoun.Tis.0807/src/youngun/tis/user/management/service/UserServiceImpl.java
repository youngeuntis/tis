package youngun.tis.user.management.service;

import youngun.tis.user.management.dao.UserDao;
import youngun.tis.user.management.dao.UserDaoImpl;
import youngun.tis.user.management.domain.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	private int check;
	
	private boolean flag=false; //성공여부
	
	public UserServiceImpl() {
		this.userDao = new UserDaoImpl();
	}

	@Override
	public User findUserAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean saveUser(User user) {
		check=userDao.insertUser(user);
		
		if(check!=1){
			flag=false;
		}else{
			flag=true;
		}
		return flag;
	}

	@Override
	public boolean modifyUser(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(String userId) {
		// TODO Auto-generated method stub
		return false;
	}
}
