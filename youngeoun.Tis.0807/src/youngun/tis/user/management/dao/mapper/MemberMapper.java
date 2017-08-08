package youngun.tis.user.management.dao.mapper;

import youngun.tis.user.login.domain.Login;

public interface MemberMapper {
	Login getUser(String userId);
}
