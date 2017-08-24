package youngun.tis.mypage.service;

import java.util.List;

import youngun.tis.mypage.domain.Comment;

public interface CommentMoreService {
	List<Comment> findCommentMore(int memberNum); 	//qna댓글
	List<Comment> findRevCommentMore(int memberNum);//rev댓글
}
