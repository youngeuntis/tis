package youngun.tis.user.login.dao;

import youngun.tis.user.login.domain.Login;

public interface LoginDao {
	Login getUser(String userId);
	int updateUserUntilVisit(String userId);
}
