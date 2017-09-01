package youngun.tis.user.admin.service;

import java.util.List;

import youngun.tis.user.admin.domain.Page;
import youngun.tis.user.admin.domain.User;

public interface UserService {
	List<User> findUsers(Page page); //유저들
	List<User> blindUsers(Page page);
	List<User> FblindUsers(Page page);
	List<User> StepUsers(Page page);
	List<User> MainUsers(Page page);
	List<User> UntilJoinUsers(Page page);
	List<User> UntilVisitUsers(Page page);
	User findUser(String userId); //유저 한명
	
	List<User> findBlindUsers(); //제재 회원
	List<User> findUntilUsers(); //최근 회원
	List<User> findUntilJoinUser(); //최근 가입
	
	
}