package youngun.tis.mypage.service;

import java.util.List;

import youngun.tis.mypage.dao.CommentMoreDao;
import youngun.tis.mypage.dao.CommentMoreDaoImpl;
import youngun.tis.mypage.domain.Comment;

public class CommentMoreServiceImpl implements CommentMoreService {
	private CommentMoreDao commentMoreDao;
	
	public CommentMoreServiceImpl() {
		this.commentMoreDao = new CommentMoreDaoImpl();
	}

	@Override //rev댓글
	public List<Comment> findRevCommentMore(int memberNum) {
		return commentMoreDao.selectRevComment(memberNum);
	}

	@Override //qna댓글
	public List<Comment> findCommentMore(int memberNum) {
		return commentMoreDao.selectComment(memberNum);
	}
}
