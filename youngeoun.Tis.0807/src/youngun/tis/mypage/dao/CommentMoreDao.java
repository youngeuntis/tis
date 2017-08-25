package youngun.tis.mypage.dao;

import java.util.List;

import youngun.tis.mypage.domain.Comment;

public interface CommentMoreDao {
	List<Comment> selectComment(int memberNum);		//qna댓글
	List<Comment> selectRevComment(int memberNum);	//rev댓글
}
