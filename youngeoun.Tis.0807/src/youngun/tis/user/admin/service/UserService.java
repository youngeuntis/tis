package youngun.tis.user.admin.service;

import java.util.List;

import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public interface UserService {
	List<User> findUsers(Page page);
	List<User> blindUsers(Page page);
	List<User> FblindUsers();
	List<User> StepUsers();
	List<User> MainUsers();
}