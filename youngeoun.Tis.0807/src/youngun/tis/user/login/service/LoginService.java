package youngun.tis.user.login.service;

import youngun.tis.user.login.domain.Login;

public interface LoginService {
	Login findUserLogin(String userId);
	void changUserDate(String userId);
	Login findUserPw(String userEmail);
	
}