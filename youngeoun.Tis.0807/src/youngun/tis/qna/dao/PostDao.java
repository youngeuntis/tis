package youngun.tis.qna.dao;

import java.util.List;

import youngun.tis.qna.domain.Page;
import youngun.tis.qna.domain.Post;


public interface PostDao {
	List<Post> getPosts(Page page);
	Post getPost(int postNo);
	int write(Post post);
	int updateBoard(Post post);
	int delBoard(int postNo);
}
