package youngun.tis.mypage.domain;

public class Profile {
	private int memberNum;		//회원번호
	private String userId;		//회원아이디
	private String proflieImg;	//프로필사진
	private String nickName;	//닉네임
	
	public Profile(){}

	public Profile(int memberNum, String userId, String proflieImg, String nickName) {
		super();
		this.memberNum = memberNum;
		this.userId = userId;
		this.proflieImg = proflieImg;
		this.nickName = nickName;
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

	public String getProflieImg() {
		return proflieImg;
	}

	public void setProflieImg(String proflieImg) {
		this.proflieImg = proflieImg;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Override
	public String toString() {
		return "Profile [memberNum=" + memberNum + ", userId=" + userId + ", proflieImg=" + proflieImg + ", nickName="
				+ nickName + "]";
	}

}
