package youngun.tis.qna.dao.mapper;

import java.util.List;

import youngun.tis.qna.domain.Reply;

public interface ReplyMapper {
	List<Reply> selectReplies(int postNo);
	int inputReply(Reply reply);
	int updateReply(int replyNo);
	int delReply(int replyNo);
}
