package youngun.tis.user.admin.domain;

public class Page {
	protected int currentPage;
	private int rowCnt;
	
	public Page(){
		this(0,0);
	}

	public Page(int currentPage, int rowCnt){
		this.currentPage = currentPage;
		this.rowCnt = rowCnt;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRowCnt() {
		return rowCnt;
	}

	public void setRowCnt(int rowCnt) {
		this.rowCnt = rowCnt;
	}
}
