package youngun.tis.review.service;

import java.util.List;

import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public interface PostService {
	List<Post> listPosts(Page page);
	boolean write(Post post);
	boolean updateBoard(Post post);
	boolean delBoard(int postNo);
}
