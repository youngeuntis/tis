package youngun.tis.user.admin.dao.mapper;

import java.util.List;
import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public interface UserMapper {
	List<User> getUsers(Page page);
	List<User> getUntilJoinUsers(Page page);
	List<User> getUntilVisitUsers(Page page);
	List<User> getMainSubUsers();
	List<User> getMainSubUsers2();
	List<User> getblindUsers(Page page);
	List<User> getFblindUsers(Page page);
	List<User> getStepUsers(Page page);
	List<User> getMainUsers(Page page);
}
