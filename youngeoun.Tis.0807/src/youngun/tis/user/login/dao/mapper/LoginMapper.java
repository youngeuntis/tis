package youngun.tis.user.login.dao.mapper;

import youngun.tis.user.login.domain.Login;

public interface LoginMapper {
	Login getUser(String userId);
	int updateUserUntilVisit(String userId);
	Login getUserPw(String userEmail);
}
