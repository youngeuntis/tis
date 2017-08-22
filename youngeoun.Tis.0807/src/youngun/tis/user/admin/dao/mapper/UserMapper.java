package youngun.tis.user.admin.dao.mapper;

import java.util.List;

import youngun.tis.user.admin.domain.User;

public interface UserMapper {
	List<User> getUsers();
	List<User> getblindUsers();
	List<User> getFblindUsers();
	List<User> getStepUsers();
	List<User> getMainUsers();
}
