package youngun.tis.mypage.domain;

public class Comment {
	private int memberNum; 			//회원번호
	private String qnaReplyNum; 	//qna 댓글번호(pk)
	private String qnaReplyCont;	//qna 댓글내용
	private String revReplyNum;		//review 댓글번호
	private String revReplyCont;	//review 댓글내용
	
	public Comment() {}

	public Comment(int memberNum, String qnaReplyNum, String qnaReplyCont, String revReplyNum, String revReplyCont) {
		super();
		this.memberNum = memberNum;
		this.qnaReplyNum = qnaReplyNum;
		this.qnaReplyCont = qnaReplyCont;
		this.revReplyNum = revReplyNum;
		this.revReplyCont = revReplyCont;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getQnaReplyNum() {
		return qnaReplyNum;
	}

	public void setQnaReplyNum(String qnaReplyNum) {
		this.qnaReplyNum = qnaReplyNum;
	}

	public String getQnaReplyCont() {
		return qnaReplyCont;
	}

	public void setQnaReplyCont(String qnaReplyCont) {
		this.qnaReplyCont = qnaReplyCont;
	}

	public String getRevReplyNum() {
		return revReplyNum;
	}

	public void setRevReplyNum(String revReplyNum) {
		this.revReplyNum = revReplyNum;
	}

	public String getRevReplyCont() {
		return revReplyCont;
	}

	public void setRevReplyCont(String revReplyCont) {
		this.revReplyCont = revReplyCont;
	}

	@Override
	public String toString() {
		return "Comment [memberNum=" + memberNum + ", qnaReplyNum=" + qnaReplyNum + ", qnaReplyCont=" + qnaReplyCont
				+ ", revReplyNum=" + revReplyNum + ", revReplyCont=" + revReplyCont + "]";
	}
	
}
