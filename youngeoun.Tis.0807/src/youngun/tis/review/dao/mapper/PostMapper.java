package youngun.tis.review.dao.mapper;

import java.util.List;

import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public interface PostMapper {
	List<Post> getPosts(Page page);
	String getContent(int postNo);
	String getTitle(int postNo);
	int write(Post post);
	int updateBoard(Post post);
	int updateCnt(int postNo);
	int delBoard(int postNo);
}
