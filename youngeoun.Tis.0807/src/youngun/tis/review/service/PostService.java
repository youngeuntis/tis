package youngun.tis.review.service;

import java.util.List;

import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public interface PostService {
	List<Post> listPosts(Page page);
}
