package youngun.tis.mypage.service;

import java.util.List;

import youngun.tis.mypage.domain.Post;

public interface PostMoreService {
	List<Post> findContentQna(int member);
	List<Post> findContentRev(int member);
	List<Post> findContentTravel(int member);
}
