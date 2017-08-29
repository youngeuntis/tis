package youngun.tis.user.admin.service;

import youngun.tis.user.admin.dao.PageDao;
import youngun.tis.user.admin.dao.PageDaoImpl;
import youngun.tis.user.admin.domain.Page;


public class PageServiceImpl implements PageService {
	private PageDao pageDao;
	
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int totRowCnt;
	private int pageNumCnt;
	
	private Page page;
	
	
	public PageServiceImpl(int pageNumCnt, Page page, int number){
		this.pageDao = new PageDaoImpl();
		this.pageNumCnt = pageNumCnt;
		getTotRowCnt(number);
		this.page = page;
		init();
	}
	

	@Override
	public void getTotRowCnt(int number) {
		
		switch(number){
			case 1 : this.totRowCnt =  pageDao.getTotRowCnt(); break;
			case 2 : this.totRowCnt =  pageDao.getBlindRowCnt(); break;
		}
		System.out.println("getTotRowCnt : "+this.totRowCnt);

	}

	
	private void init(){
		endPage = (int)(Math.ceil(page.getCurrentPage()/(double)pageNumCnt)*pageNumCnt);
		startPage = (endPage-pageNumCnt)+1;
		int lastEndPage = (int)(Math.ceil(totRowCnt/(double)page.getRowCnt()));
		
		if(endPage > lastEndPage) endPage = lastEndPage;
		
		prev = startPage==1?false:true;
		next = endPage*page.getRowCnt() >= totRowCnt?false:true;
	}
	
	@Override
	public Page getPage() {
		return page;
	}

	
	@Override
	public boolean isPrev() {
		return prev;
	}

	@Override
	public boolean isNext() {
		return next;
	}

	@Override
	public int getStartPage() {
		return startPage;
	}

	@Override
	public int getEndPage() {
		return endPage;
	}
}