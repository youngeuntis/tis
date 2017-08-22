package youngun.tis.review.dao;

import java.util.List;

import youngun.tis.review.dao.mapper.PostMapper;
import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public class PostDaoImpl implements PostDao {
	private PostMapper postMapper;
	
public PostDaoImpl(){}
	
	public PostDaoImpl(PostMapper postMapper) {
		this.postMapper = postMapper;
	}
	
	@Override
	public List<Post> getPosts(Page page) {
		return postMapper.getPosts(page);
	}

	@Override
	public String getContent(int postNo) {
		return postMapper.getContent(postNo);
	}

	@Override
	public String getTitle(int postNo) {
		return postMapper.getTitle(postNo);
	}

	@Override
	public int write(Post post) {
		return postMapper.write(post);
	}

	@Override
	public int updateBoard(Post post) {
		return postMapper.updateBoard(post);
	}

	@Override
	public int delBoard(int postNo) {
		return postMapper.delBoard(postNo);
	}

}
