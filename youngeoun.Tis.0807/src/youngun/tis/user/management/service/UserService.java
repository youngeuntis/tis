package youngun.tis.user.management.service;

import youngun.tis.user.management.domain.User;

public interface UserService {
	User findUserAll();
	String findUserId(String userId);
	boolean saveUser(User user);
	boolean modifyUser(String userId);
	boolean deleteUser(String userId);
}
