package youngun.tis.mypage.domain;

public class Page {
	private int pageCnt;	//전체 페이지
	private int pageNum; 	//한 페이지의 출력될  수 
	
	public Page(int dataNum, int pageNum) {
		this.pageNum  = pageNum;
		if(dataNum%5==0){
			pageCnt = (dataNum/pageNum);
		}else{
			pageCnt = (dataNum/pageNum)+1;
		}
	}
	
	public int getPageCnt() {
		return pageCnt;
	}
	
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	
	public int getPageNum() {
		return pageNum;
	}
}
