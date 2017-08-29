package youngun.tis.qna.domain;

import java.sql.Date;

public class Post {
	private int postNo;
	private String title;
	private String content;
	private Date regDate;
	private int viewCnt;
	private String openCheck;
	private int userNum;
	

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getOpenCheck() {
		return openCheck;
	}

	public void setOpenCheck(String openCheck) {
		this.openCheck = openCheck;
	}

	public Post(){}
	
	public Post(String title, String content) {
		super();
		this.title = title;
		this.content = content;
	}
	
	public int getPostNo() {
		return postNo;
	}
	
	

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	 @Override
	public String toString() {
		
		return String.format("%d %s %s", postNo, title, content);
	}
	
}
