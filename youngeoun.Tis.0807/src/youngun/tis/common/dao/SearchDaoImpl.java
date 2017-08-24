package youngun.tis.common.dao;

import java.util.List;

import youngun.tis.common.dao.mapper.SearchMapper;
import youngun.tis.common.domain.Search;
import youngun.tis.config.Configuration;

public class SearchDaoImpl implements SearchDao {
	private SearchMapper searchMapper;
	
	public SearchDaoImpl() {
		this.searchMapper = Configuration.getMapper(SearchMapper.class);
	}

	@Override
	public List<Search> selectContent(String content) {
		System.out.println("serachDao : "+ content);
		return searchMapper.selectContent(content);
	}
}
