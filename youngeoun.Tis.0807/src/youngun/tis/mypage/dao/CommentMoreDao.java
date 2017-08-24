package youngun.tis.mypage.dao;

import java.util.List;

import youngun.tis.mypage.domain.Comment;

public interface CommentMoreDao {
	List<Comment> selectComment(int memberNum);
}
