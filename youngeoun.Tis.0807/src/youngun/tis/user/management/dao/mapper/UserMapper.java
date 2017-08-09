package youngun.tis.user.management.dao.mapper;

import youngun.tis.user.management.domain.User;

public interface UserMapper {
	User selectUserAll();
	int insertUser(User user);
	boolean updateUser(String userId);
	boolean deleteUser(String userId);
}
