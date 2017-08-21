package youngun.tis.qna.service;

import java.util.List;

import youngun.tis.qna.domain.Page;
import youngun.tis.qna.domain.Post;

public interface PostService {
	List<Post> listPosts(Page page);
	boolean write(Post post);
	boolean updateBoard(Post post);
	boolean delBoard(int postNo);
}
