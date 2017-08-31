package youngun.tis.mypage.domain;

public class Personal {
	private int memberNum;		//회원 번호
	private String userId;		//회원 아이디
	private String userPh;		//회원 핸드폰번호
	private String userEmail;	//회원 이메일
	private String userPw;		//회원 비밀번호
	
	public Personal() {}
	
	//이메일 수정
	public Personal(int memberNum, String userEmail) {
		this.memberNum = memberNum;
		this.userEmail = userEmail;
	}
	
	public Personal(int memberNum, String userId, String userPh, String userEmail, String userPw) {
		super();
		this.memberNum = memberNum;
		this.userId = userId;
		this.userPh = userPh;
		this.userEmail = userEmail;
		this.userPw = userPw;
	}

	public int getmemberNum() {
		return memberNum;
	}

	public void setmemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPh() {
		return userPh;
	}

	public void setUserPh(String userPh) {
		this.userPh = userPh;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	@Override
	public String toString() {
		return "Personal [memberNum=" + memberNum + ", userId=" + userId + ", userPh=" + userPh + ", userEmail=" + userEmail
				+ ", userPw=" + userPw + "]";
	}
}
