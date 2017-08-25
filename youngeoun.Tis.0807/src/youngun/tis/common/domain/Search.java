package youngun.tis.common.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Search {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	private int writingNum;  //글번호
	private String searchContent; //검색 내용
	private String repDate;    //작성일
	private String title;      //글제목
	


	public Search() {
	}
	
	public Search(int writingNum, String searchContent) {
		super();
		this.writingNum = writingNum;
		this.searchContent = searchContent;
	}
	
	public int getWritingNum() {
		return writingNum;
	}
	public void setWritingNum(int writingNum) {
		this.writingNum = writingNum;
	}
	public String getSearchContent() {
		return searchContent;
	}
	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}
	public String getRepDate() {
		return repDate;
	}
	public void setRepDate(Date repDate) {
		this.repDate = sdf.format(repDate);
	}
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	@Override
	public String toString() {
		return "Search [writingNum=" + writingNum + ", searchContent=" + searchContent + ", repDate=" + repDate + "]";
	}
	
	
}
