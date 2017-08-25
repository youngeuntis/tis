package youngun.tis.mypage.dao.mapper;

import java.util.List;

import youngun.tis.mypage.domain.Comment;

public interface CommentMoreMapper {
	List<Comment> selectComment(int memberNum);		//qna댓글
	List<Comment> selectRevComment(int memberNum);	//rev댓글
}
