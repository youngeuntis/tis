package youngun.tis.user.admin.dao;

import java.util.List;

import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public interface UserDao {
	List<User> getUsers(Page page);
	List<User> getblindUsers(Page page);
	List<User> getFblindUsers();
	List<User> getStepUsers();
	List<User> getMainUsers();
	
}
