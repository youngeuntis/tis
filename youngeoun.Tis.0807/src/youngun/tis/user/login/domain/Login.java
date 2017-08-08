package youngun.tis.user.login.domain;

public class Login {
	private int memberNum; 	      //회원 번호
	private String userName;      //회원 이름
	private String userId;	      //회원 아이디
	private String password;      //회원 비밀번호
	private boolean flag = false; // 
	
	public Login() {}
	
	public Login(String userName, String userId, String password) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.password = password;
	}
	
	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		return "Login [memberNum=" + memberNum + ", userName=" + userName + ", userId=" + userId + ", password="
				+ password + "]";
	}
}
