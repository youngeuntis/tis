package youngun.tis.mypage.service;

public interface PersonalService {
	void changeEmail(int memberNum,String email);
	void changePhone(int memberNum,String Phone);
	void changePw(int memberNum,String pw);
}
