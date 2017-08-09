package youngun.tis.user.management.domain;

import youngun.tis.common.TextUtils;

public class User {
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
	
	public User() {}
	
	public User(String userName, String userId, String password, String birth, String phoneNum, String email,
			String nickName, String gender) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.password = password;
		this.birth = birth;
		this.phoneNum = phoneNum;
		this.email = email;
		this.nickName = nickName;
		this.gender = gender;
	}


	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getUserName() {
		if(TextUtils.isEmpty(userName)){
			flag = false;
		}
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserId() {
		if(TextUtils.isEmpty(userId)){
			flag = false;
		}
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		if(TextUtils.isEmpty(password)){
			flag = false;
		}
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
		if(TextUtils.isEmpty(gradeNum)){
			flag = false;
		}
		return gradeNum;
	}

	public void setGradeNum(String gradeNum) {
		this.gradeNum = gradeNum;
	}

	public String getBirth() {
		if(TextUtils.isEmpty(birth)){
			flag = false;
		}
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhoneNum() {
		if(TextUtils.isEmpty(phoneNum)){
			flag = false;
		}
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		if(TextUtils.isEmpty(email)){
			flag = false;
		}
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickName() {
		if(TextUtils.isEmpty(nickName)){
			flag = false;
		}
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getProfileImg() {
		if(TextUtils.isEmpty(profileImg)){
			flag = false;
		}
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getGender() {
		if(TextUtils.isEmpty(gender)){
			flag = false;
		}
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
