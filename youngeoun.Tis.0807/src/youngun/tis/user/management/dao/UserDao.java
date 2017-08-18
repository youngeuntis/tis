package youngun.tis.user.management.dao;

import youngun.tis.user.management.domain.User;

public interface UserDao {
	User selectUserAll();
	User selectUserId(String userId); //아이디 중복확인
	int insertUser(User user); //회원가입
	boolean updateUser(String userId);
	boolean deleteUser(String userId);
}
