package youngun.tis.review.dao;

import java.util.List;

import youngun.tis.review.domain.Review;

public interface ReviewDao {
	public int insertReview(Review review);
	public int insertInfo(Review review);
	public List<Review> getReviewList(String country);
	public List<Review> getReviewListNoPara();
	public List<Review> getReviewListContinent(String cotinent);
	public int updateInfo(Review review);
	public int updateHits(Review review);
	public int deleteReview(Review review);
}
