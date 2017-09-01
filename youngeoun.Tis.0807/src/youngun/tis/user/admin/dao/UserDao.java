

package youngun.tis.user.admin.dao;

import java.util.List;

import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public interface UserDao {
	List<User> getUsers(Page page);
	List<User> getMainSubUsers();
	List<User> getblindUsers(Page page);
	List<User> getFblindUsers(Page page);
	List<User> getStepUsers(Page page);
	List<User> getMainUsers(Page page);
	List<User> getUntilJoinUsers(Page page);
	List<User> getUntilVisitUsers(Page page);
	User getUser(String userId);
	
	List<User> getUntilUsers();     //최근 접속
	List<User> getSubBlindUser();   //제체
	List<User> getSubUntilJoinUsers(); //최근 가입
}
