package youngun.tis.user.management.dao;

import youngun.tis.user.management.domain.User;

public interface UserDao {
	User selectUserAll();
	int insertUser(User user);
	boolean updateUser(String userId);
	boolean deleteUser(String userId);
}
