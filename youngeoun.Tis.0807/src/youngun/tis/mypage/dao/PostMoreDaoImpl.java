package youngun.tis.mypage.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.mypage.dao.mapper.PostMoreMapper;
import youngun.tis.mypage.domain.Post;

public class PostMoreDaoImpl implements PostMoreDao {
	private PostMoreMapper postMoreMapper;
	
	
	public PostMoreDaoImpl() {
		this.postMoreMapper = Configuration.getMapper(PostMoreMapper.class);
	}

	@Override
	public List<Post> selectQna(int member) {
		
		return postMoreMapper.selectQna(member);
	}

	@Override
	public List<Post> selectRev(int member) {
		
		return postMoreMapper.selectRev(member);
	}

	@Override
	public List<Post> selectTravel(int member) {
	
		return postMoreMapper.selectTravel(member);
	}
	
}
