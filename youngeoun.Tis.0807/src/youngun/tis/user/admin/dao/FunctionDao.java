package youngun.tis.user.admin.dao;

import youngun.tis.user.admin.domain.User;

public interface FunctionDao {
	int updateUser(User user);
	int insetBlackList(User user);
}
