package youngun.tis.common.dao.mapper;

import java.util.List;

import youngun.tis.common.domain.Search;

public interface SearchMapper {
	List<Search> selectContent(String content);
}
