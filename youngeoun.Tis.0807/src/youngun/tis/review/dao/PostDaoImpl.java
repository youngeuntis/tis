package youngun.tis.review.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.review.dao.mapper.PostMapper;
import youngun.tis.review.domain.Page;
import youngun.tis.review.domain.Post;

public class PostDaoImpl implements PostDao {
	private PostMapper postMapper;
	
	public PostDaoImpl(){
		this.postMapper = Configuration.getMapper(PostMapper.class);
	}
	
	@Override
	public List<Post> getPosts(Page page) {
		return postMapper.getPosts(page);
	}

}
