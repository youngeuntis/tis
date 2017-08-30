package youngun.tis.user.admin.service;

import youngun.tis.user.admin.domain.User;

public interface FunctionService {
	int changeGrade();
	int saveBlackList(User user);
}
