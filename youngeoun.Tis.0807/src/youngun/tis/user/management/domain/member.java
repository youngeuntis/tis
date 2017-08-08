package youngun.tis.user.management.domain;

public class member {
	private int memberNum; 	      //회원 번호
	private String userName;      //회원 이름
	private String userId;	      //회원 아이디
	private String password;      //회원 비밀번호
	private String gradeNum;      //등급
	private String birth;         //생일
	private String phoneNum;      //휴대폰
	private String email;	      //이메일
	private String nickName;      //닉네임
	private String profileImg;    //프로필 이미지
	private String gender;	      //성별

	private boolean flag = false; // 성공여부
	
	public member() {}
	
	public member(String userName, String userId, String password) {
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

	public String getGradeNum() {
		return gradeNum;
	}

	public void setGradeNum(String gradeNum) {
		this.gradeNum = gradeNum;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "member [memberNum=" + memberNum + ", userName=" + userName + ", userId=" + userId + ", password="
				+ password + ", gradeNum=" + gradeNum + ", birth=" + birth + ", phoneNum=" + phoneNum + ", email="
				+ email + ", nickName=" + nickName + ", profileImg=" + profileImg + ", gender=" + gender + ", flag="
				+ flag + "]";
	}
}
