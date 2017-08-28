package youngun.tis.common.service;

import java.util.List;

import youngun.tis.common.dao.SearchDao;
import youngun.tis.common.dao.SearchDaoImpl;
import youngun.tis.common.domain.Search;

public class SearchServiceImpl implements SearchService {
	private SearchDao searchDao;
	
	public SearchServiceImpl() {
		this.searchDao = new SearchDaoImpl();
	}


	@Override
	public List<Search> findAllContent(String content) {
		return searchDao.selectContent(content);
	}


	@Override
	public List<Search> findNewContent(String content) {
		return searchDao.selectNewContent(content);
	}

}
