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
	public User findUser(String userId) {
		
		return userDao.getUser(userId);
	}
	
	//전채 제재회원
	@Override
	public List<User> blindUsers(Page page) {
		
		return userDao.getblindUsers(page);
	}
	
	@Override
	public List<User> FblindUsers(Page page){
		
		return userDao.getFblindUsers(page);
	}
	
	@Override
	public List<User> StepUsers(Page page){
		
		return userDao.getStepUsers(page);
	}
	
	@Override
	public List<User> MainUsers(Page page){
		
		return userDao.getMainUsers(page);
	}
	
	@Override
	public List<User> UntilJoinUsers(Page page){
		
		return userDao.getUntilJoinUsers(page);
	}
	
	@Override
	public List<User> UntilVisitUsers(Page page){
		
		return userDao.getUntilVisitUsers(page);
	}

	//제재회원
	@Override
	public List<User> findBlindUsers(){
		return userDao.getSubBlindUser();
	}
	
	//최근 방문회원 회원
	@Override
	public List<User> findUntilUsers() {
		return userDao.getUntilUsers();
	}

	@Override
	public List<User> findUntilJoinUser() {
		// TODO Auto-generated method stub
		return userDao.getSubUntilJoinUsers();
	}
}