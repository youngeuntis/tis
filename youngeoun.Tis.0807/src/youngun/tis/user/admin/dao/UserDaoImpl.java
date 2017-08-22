package youngun.tis.user.admin.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.user.admin.dao.mapper.UserMapper;
import youngun.tis.user.admin.domain.User;

public class UserDaoImpl implements UserDao {
	private UserMapper userMapper;
	
	public UserDaoImpl() {
		this.userMapper = Configuration.getMapper(UserMapper.class);
	}
	
	public List<User> getUsers(){
		return userMapper.getUsers();
	}
	
	public List<User> getblindUsers(){
		return userMapper.getblindUsers();
	}
	
	public List<User> getFblindUsers(){
		return userMapper.getFblindUsers();
	}
	
	public List<User> getStepUsers(){
		return userMapper.getStepUsers();
	}
}
