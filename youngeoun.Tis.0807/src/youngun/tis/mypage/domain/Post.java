package youngun.tis.mypage.domain;

public class Post {
	private int memberNum;			//회원번호
	private String qnaPostNum; 		//qna 게시물번호(pk)
	private String qnaPostTitle;	//qna 게시물제목
	private String revPostNum;		//review 게시물번호(pk)
	private String revPostTitle;	//review 게시물제목
	private String travPostNum;		//travel 게시물번호(pk)
	private String travPostTitle;	//travel 게시물제목
	
	public Post() {}

	public Post(int memberNum, String qnaPostNum, String qnaPostTitle, String revPostNum, String revPostTitle,
			String travPostNum, String travPostTitle) {
		super();
		this.memberNum = memberNum;
		this.qnaPostNum = qnaPostNum;
		this.qnaPostTitle = qnaPostTitle;
		this.revPostNum = revPostNum;
		this.revPostTitle = revPostTitle;
		this.travPostNum = travPostNum;
		this.travPostTitle = travPostTitle;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getQnaPostNum() {
		return qnaPostNum;
	}

	public void setQnaPostNum(String qnaPostNum) {
		this.qnaPostNum = qnaPostNum;
	}

	public String getQnaPostTitle() {
		return qnaPostTitle;
	}

	public void setQnaPostTitle(String qnaPostTitle) {
		this.qnaPostTitle = qnaPostTitle;
	}

	public String getRevPostNum() {
		return revPostNum;
	}

	public void setRevPostNum(String revPostNum) {
		this.revPostNum = revPostNum;
	}

	public String getRevPostTitle() {
		return revPostTitle;
	}

	public void setRevPostTitle(String revPostTitle) {
		this.revPostTitle = revPostTitle;
	}

	public String getTravPostNum() {
		return travPostNum;
	}

	public void setTravPostNum(String travPostNum) {
		this.travPostNum = travPostNum;
	}

	public String getTravPostTitle() {
		return travPostTitle;
	}

	public void setTravPostTitle(String travPostTitle) {
		this.travPostTitle = travPostTitle;
	}

	@Override
	public String toString() {
		return "post [memberNum=" + memberNum + ", qnaPostNum=" + qnaPostNum + ", qnaPostTitle=" + qnaPostTitle
				+ ", revPostNum=" + revPostNum + ", revPostTitle=" + revPostTitle + ", travPostNum=" + travPostNum
				+ ", travPostTitle=" + travPostTitle + "]";
	}

}
