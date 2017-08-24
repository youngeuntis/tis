package youngun.tis.common.dao;

import java.util.List;

import youngun.tis.common.domain.Search;

public interface SearchDao {
	List<Search> selectContent(String content);
}
