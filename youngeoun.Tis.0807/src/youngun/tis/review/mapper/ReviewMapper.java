package youngun.tis.review.mapper;

import java.util.List;

import youngun.tis.review.domain.Review;


public interface ReviewMapper {
	public int insertReview(Review review);
	public int insertInfo(Review review);
	public List<Review> getReviewList(String country);
	public List<Review> getReviewListNoPara();
	public List<Review> getReviewListContinent(String continent);
	public int updateInfo(Review review);
	public int updateHits(Review review);
	public int deleteReview(Review review);
}
