package youngun.tis.review.domain;

public class PageReview {
	private int pageAmount;		//카테고리별 페이지 수
	private final int CONTENT_PER_PAGE = 8; //한 페이지에 출력될 컨텐츠 수
	
	
	public int getPageAmount() {
		return pageAmount;
	}

	public void setPageAmount(int pageAmount) {
		this.pageAmount = pageAmount;
	}
	public int getCONTENT_PER_PAGE() {
		return CONTENT_PER_PAGE;
	}

	public PageReview(int dataAmount){
		if(dataAmount%8==0) pageAmount = (int)(dataAmount / CONTENT_PER_PAGE);
		else pageAmount = (int)(dataAmount / CONTENT_PER_PAGE) + 1;
	}
}
