package youngun.tis.mypage.dao.mapper;

import java.util.List;

import youngun.tis.mypage.domain.Post;

public interface PostMoreMapper {
	List<Post> selectQna(int member);
	List<Post> selectRev(int member);
	List<Post> selectTravel(int member);
}
