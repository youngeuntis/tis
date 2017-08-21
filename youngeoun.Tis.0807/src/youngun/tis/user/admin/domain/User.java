package youngun.tis.user.admin.domain;

public class User {
	private String userId;     //아이디
	private String userName;   //이름
	private int memberNum;     //
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String userId, String userName) {
		super();
		this.userId = userId;
		this.userName = userName;
	}
		
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + "]";
	}
}
