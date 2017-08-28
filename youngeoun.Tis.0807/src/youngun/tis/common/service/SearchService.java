package youngun.tis.common.service;

import java.util.List;

import youngun.tis.common.domain.Search;

public interface SearchService {
	List<Search> findAllContent(String content);
	List<Search> findNewContent(String content);
}
