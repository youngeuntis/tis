package youngun.tis.review.dao;

import java.util.List;

import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public interface PostDao {
	List<Post> getPosts(Page page);
}
