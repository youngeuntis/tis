package youngun.tis.user.admin.dao.mapper;

import java.util.List;
import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public interface UserMapper {
	List<User> getUsers(Page page);
	List<User> getUntilJoinUsers(Page page);  //최근 가입 회원
	List<User> getUntilVisitUsers(Page page); //최근 방문 회원
	List<User> getMainSubUsers();
	List<User> getblindUsers(Page page);
	List<User> getFblindUsers(Page page);
	List<User> getStepUsers(Page page);
	List<User> getMainUsers(Page page);
	User getUser(String userId);
	
	List<User> getSubBlindUser(); //최근 제재 회원
	List<User> getUntilUsers();   //방문회원
	List<User> getSubUntilJoinUsers(); //최근 가입
}
