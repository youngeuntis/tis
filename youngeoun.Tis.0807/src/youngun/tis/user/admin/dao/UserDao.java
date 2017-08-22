package youngun.tis.user.admin.dao;

import java.util.List;

import youngun.tis.user.admin.domain.User;

public interface UserDao {
	List<User> getUsers();
	List<User> getblindUsers();
	List<User> getFblindUsers();
	List<User> getStepUsers();
}
