package youngun.tis.user.management.dao.mapper;

import youngun.tis.user.management.domain.User;

public interface UserMapper {
	User selectUserAll();
	User selectUserId(String userId);   //아이디 중복확인
	int insertUser(User user);          //회원가입
	boolean updateUser(String userId);
	boolean deleteUser(String userId);
	User selectUserNum();                // 회원번호 마지막 찾기
	void createWriteSpace(int userNum); // 글작성 개수 공간생성
	void createReplSpace(int userNum);  // 댓글 개수 공간 
}
