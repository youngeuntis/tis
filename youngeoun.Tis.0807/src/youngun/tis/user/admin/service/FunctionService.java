package youngun.tis.user.admin.service;

import youngun.tis.user.admin.domain.User;

public interface FunctionService {
	int changeGrade();
	int clearGrade();
	int saveBlackList(User user);
}
