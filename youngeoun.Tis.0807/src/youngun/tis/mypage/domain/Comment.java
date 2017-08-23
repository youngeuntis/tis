package youngun.tis.mypage.domain;

public class Comment {
	private int memberNum; 			//회원번호
	private String qnaReplyNum; 	//댓글번호
	private String qnaReplyCont;	//댓글내용
	
	public Comment() {}

	public Comment(int memberNum, String qnaReplyNum, String qnaReplyCont) {
		super();
		this.memberNum = memberNum;
		this.qnaReplyNum = qnaReplyNum;
		this.qnaReplyCont = qnaReplyCont;
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

	@Override
	public String toString() {
		return "Comment [memberNum=" + memberNum + ", qnaReplyNum=" + qnaReplyNum + ", qnaReplyCont=" + qnaReplyCont
				+ "]";
	}
	
}
