package youngun.tis.user.admin.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.user.admin.dao.mapper.UserMapper;
import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public class UserDaoImpl implements UserDao {
	private UserMapper userMapper;
	
	public UserDaoImpl() {
		this.userMapper = Configuration.getMapper(UserMapper.class);
	}
	
	public List<User> getUsers(Page page){
		return userMapper.getUsers(page);
	}	
	
	public List<User> getblindUsers(Page page){
		return userMapper.getblindUsers(page);
	}
	
	public List<User> getFblindUsers(Page page){
		return userMapper.getFblindUsers(page);
	}
	
	public List<User> getStepUsers(Page page){
		return userMapper.getStepUsers(page);
	}
	
	public List<User> getMainUsers(Page page){
		return userMapper.getMainUsers(page);
	}
	
	public List<User> getMainSubUsers(){
		return userMapper.getMainSubUsers();
	}
	public List<User> getMainSubUsers2(){
		return userMapper.getMainSubUsers2();
	}
	public List<User> getUntilJoinUsers(Page page){
		return userMapper.getUntilJoinUsers(page);
	}
	public List<User> getUntilVisitUsers(Page page){
		return userMapper.getUntilVisitUsers(page);
	}

	@Override
	public User getUser(String userId) {
		return userMapper.getUser(userId);
	}

}
