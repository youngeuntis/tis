package youngun.tis.user.admin.dao;

import youngun.tis.config.Configuration;
import youngun.tis.user.admin.dao.mapper.PageMapper;


public class PageDaoImpl implements PageDao {
	private PageMapper pageMapper;
	
	public PageDaoImpl(){
		this.pageMapper = Configuration.getMapper(PageMapper.class);
	}
	
	@Override
	public int getTotRowCnt() {
		return pageMapper.getTotRowCnt();
	}
	
	@Override
	public int getBlindRowCnt() {
		System.out.println("getBlindRow 하하하");
		return pageMapper.getBlindRowCnt();
	}
	
	@Override
	public int getFBlindRowCnt() {
		System.out.println("getFBlindRow F블라인드");
		return pageMapper.getFBlindRowCnt();
	}
	
	@Override
	public int getStepRowCnt() {
		System.out.println("getFBlindRow F블라인드");
		return pageMapper.getStepRowCnt();
	}


}
