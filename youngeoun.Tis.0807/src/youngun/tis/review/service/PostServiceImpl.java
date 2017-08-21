package youngun.tis.review.service;

import java.util.List;

import youngun.tis.review.dao.PostDao;
import youngun.tis.review.dao.PostDaoImpl;
import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public class PostServiceImpl implements PostService {
	private PostDao postDao;
	
	public PostServiceImpl(PostDao postDao){
		this.postDao = postDao;
	}
	
	@Override
	public List<Post> listPosts(Page page) {
		return postDao.getPosts(page);
	}
	
	@Override
	public boolean write(Post post) {
		return postDao.write(post)>0;
	}

	@Override
	public boolean updateBoard(Post post) {
		return postDao.updateBoard(post)>0;
	}

	@Override
	public boolean delBoard(int postNo) {
		return postDao.delBoard(postNo)>0;
	}
}