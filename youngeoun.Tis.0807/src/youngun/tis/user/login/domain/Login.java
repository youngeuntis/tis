package youngun.tis.user.login.domain;

public class Login {
	private int memberNum; 	      //회원 번호
	private String userName;      //회원 이름
	private String userId;	      //회원 아이디
	private String password;      //회원 비밀번호
	private String email;		  //회원 이메일
	private String PH;            //회원 휴대폰번호
	private String nickName;      //회원 닉네임
	private String profileImg;    //회원 프로필이미지
	private String gradeNum;      //회원 등급
	
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPH() {
		return PH;
	}

	public void setPH(String pH) {
		PH = pH;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getGradeNum() {
		return gradeNum;
	}

	public void setGradeNum(String gradeNum) {
		this.gradeNum = gradeNum;
	}

	@Override
	public String toString() {
		return "Login [memberNum=" + memberNum + ", userName=" + userName + ", userId=" + userId + ", password="
				+ password + ", email=" + email + ", PH=" + PH + ", nickName=" + nickName + ", profileImg=" + profileImg
				+ ", flag=" + flag + "]";
	}

}
