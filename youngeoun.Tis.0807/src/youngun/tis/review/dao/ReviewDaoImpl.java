package youngun.tis.review.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.review.domain.Review;
import youngun.tis.review.mapper.ReviewMapper;

public class ReviewDaoImpl implements ReviewDao {
	private ReviewMapper reviewMapper;
	
	public ReviewDaoImpl(){
		ReviewMapper reviewMapper = Configuration.getMapper(ReviewMapper.class);
		this.reviewMapper = reviewMapper;
		
	}
	
	@Override
	public int insertReview(Review review) {
		return reviewMapper.insertReview(review);
	}

	@Override
	public int insertInfo(Review review) {
		return reviewMapper.insertInfo(review);
	}

	@Override
	public List<Review> getReviewList(String country) {
		return reviewMapper.getReviewList(country);
	}

	@Override
	public List<Review> getReviewListNoPara() {
		return reviewMapper.getReviewListNoPara();
	}

	@Override
	public List<Review> getReviewListContinent(String continent) {
		return reviewMapper.getReviewListContinent(continent);
	}

	@Override
	public int updateInfo(Review review) {
		return reviewMapper.updateInfo(review);
	}

	@Override
	public int updateHits(Review review) {
		return reviewMapper.updateHits(review);
	}

	@Override
	public int deleteReview(Review review) {
		System.out.println("deletereview : " + review);
		return reviewMapper.deleteReview(review);
	}

}
