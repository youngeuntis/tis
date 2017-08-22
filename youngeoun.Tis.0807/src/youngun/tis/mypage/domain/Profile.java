package youngun.tis.mypage.domain;

public class Profile {
	private String userId;		//회원아이디
	private String proflieImg;	//프로필사진
	private String nickName;	//닉네임
	
	public Profile(){}

	public Profile(String userId, String proflieImg, String nickName) {
		super();
		this.userId = userId;
		this.proflieImg = proflieImg;
		this.nickName = nickName;
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
		return "profile [userId=" + userId + ", proflieImg=" + proflieImg + ", nickName=" + nickName + "]";
	}
}
