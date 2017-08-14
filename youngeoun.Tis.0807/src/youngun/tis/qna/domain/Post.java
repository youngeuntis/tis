package youngun.tis.qna.domain;

import java.sql.Date;

public class Post {
	private int postNo;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private int viewCnt;
	private String qnaImg;
	
	public Post(){}
	
	public Post(String writer, String title, String content) {
		super();
		this.writer = writer;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
