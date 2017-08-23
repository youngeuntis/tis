package youngun.tis.mypage.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.mypage.dao.mapper.CommentMoreMapper;
import youngun.tis.mypage.domain.Comment;

public class CommentMoreDaoImpl implements CommentMoreDao {
	private CommentMoreMapper commentMoreMapper;
	
	public CommentMoreDaoImpl() {
		this.commentMoreMapper = Configuration.getMapper(CommentMoreMapper.class);
	}

	@Override
	public List<Comment> selectComment(int memberNum) {
		return commentMoreMapper.selectComment(memberNum);
	}

}
