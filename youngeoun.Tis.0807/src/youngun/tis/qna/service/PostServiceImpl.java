package youngun.tis.qna.service;

import java.util.List;

import youngun.tis.qna.dao.PostDao;
import youngun.tis.qna.dao.PostDaoImpl;
import youngun.tis.qna.domain.Page;
import youngun.tis.qna.domain.Post;

public class PostServiceImpl implements PostService {
	private PostDao postDao;
	
	public PostServiceImpl(){
		
	}
	
	public PostServiceImpl(PostDao postDao){
		this.postDao = postDao;
	}
	@Override
	public List<Post> listPosts(Page page) {
		return postDao.getPosts(page);
	}

	@Override
	public Post findPost(int postNo) {
		return postDao.getPost(postNo);
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
