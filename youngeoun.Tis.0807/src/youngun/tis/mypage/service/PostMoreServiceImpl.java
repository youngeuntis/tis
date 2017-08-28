package youngun.tis.mypage.service;

import java.util.List;

import youngun.tis.mypage.dao.PostMoreDao;
import youngun.tis.mypage.dao.PostMoreDaoImpl;
import youngun.tis.mypage.domain.Post;

public class PostMoreServiceImpl implements PostMoreService {
	private PostMoreDao postMoreDao;
	
	
	public PostMoreServiceImpl() {
		this.postMoreDao = new PostMoreDaoImpl();
	}

	@Override
	public List<Post> findContentQna(int member) {
		
		return postMoreDao.selectQna(member);
	}

	@Override
	public List<Post> findContentRev(int member) {
		
		return postMoreDao.selectRev(member);
	}

	@Override
	public List<Post> findContentTravel(int member) {
		
		return postMoreDao.selectTravel(member);
	}
	
}
