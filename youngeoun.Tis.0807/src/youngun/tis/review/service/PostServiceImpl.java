package youngun.tis.review.service;

import java.util.List;

import youngun.tis.review.dao.PostDao;
import youngun.tis.review.dao.PostDaoImpl;
import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public class PostServiceImpl implements PostService {
	private PostDao postDao;
	
	public PostServiceImpl(){
		this.postDao = new PostDaoImpl();
	}
	
	@Override
	public List<Post> listPosts(Page page) {
		return postDao.getPosts(page);
	}
}