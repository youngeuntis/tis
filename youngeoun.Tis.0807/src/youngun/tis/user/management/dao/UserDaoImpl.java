package youngun.tis.user.management.dao;

import youngun.tis.config.Configuration;
import youngun.tis.user.management.dao.mapper.UserMapper;
import youngun.tis.user.management.domain.User;

public class UserDaoImpl implements UserDao {

	private UserMapper userMapper;
	
	public UserDaoImpl() {
		this.userMapper = Configuration.getMapper(UserMapper.class);
	}

	@Override
	public User selectUserAll() {
		return null;
	}

	@Override
	public int insertUser(User user) {
		return userMapper.insertUser(user);
	}

	@Override
	public boolean updateUser(String userId) {
		return false;
	}

	@Override
	public boolean deleteUser(String userId) {
		return false;
	}

}
