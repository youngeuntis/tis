package youngun.tis.qna.dao;

import youngun.tis.config.Configuration;
import youngun.tis.qna.dao.mapper.PageMapper;


public class PageDaoImpl implements PageDao {
	private PageMapper pageMapper;
	
	public PageDaoImpl(){
		this.pageMapper = Configuration.getMapper(PageMapper.class);
	}
	
	@Override
	public int getTotRowCnt() {
		return pageMapper.getTotRowCnt();
	}

}
