package youngun.tis.user.admin.dao;

import youngun.tis.config.Configuration;
import youngun.tis.user.admin.dao.mapper.UserMapper;
import youngun.tis.user.admin.domain.User;

public class UserDaoImpl implements UserDao {
	private UserMapper userMapper;
	
	public UserDaoImpl() {
		this.userMapper = Configuration.getMapper(UserMapper.class);
	}
	
	public User getUsers(){
		return userMapper.getUsers();
	}
}
