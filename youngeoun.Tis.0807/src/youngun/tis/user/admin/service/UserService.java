package youngun.tis.user.admin.service;

import java.util.List;

import youngun.tis.user.admin.domain.User;

public interface UserService {
	List<User> findUsers();
	List<User> blindUsers();
	List<User> FblindUsers();
	List<User> StepUsers();
	List<User> MainUsers();
}
