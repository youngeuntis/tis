package youngun.tis.user.admin.dao.mapper;

import youngun.tis.user.admin.domain.User;

public interface FunctionMapper {
	int updateUser(User user);
	int insetBlackList(User user);
	
}
