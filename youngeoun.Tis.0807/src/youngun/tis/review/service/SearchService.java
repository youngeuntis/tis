package youngun.tis.review.service;

import java.util.List;
import java.util.regex.Matcher;

import youngun.tis.review.dao.ReviewDao;
import youngun.tis.review.dao.ReviewDaoImpl;
import youngun.tis.review.domain.Review;
import youngun.tis.review.domain.Country;
import youngun.tis.review.mapper.ReviewMapper;
import youngun.tis.travel.blog.domain.Blog;

public class SearchService {

	private ReviewDao reviewDao;
	
	public SearchService(){}
	public SearchService(ReviewDao reviewDao){
		this.reviewDao = reviewDao;
	}
	
	public String transferCode(List<Country> countries, String nationName){
		String nationCode = "";
		for(Country nation : countries){
			if(nation.getCountryName().equals(nationName)){
					nationCode = "%"+nation.getNationalCode()+"%";
			}
		}
		return nationCode;
	}
	
	public Review searchReview(List<Review> reviews, String reviewNum){
		Review selectReview = null;
		for(int i=0; i < reviews.size(); i++){
  			
  			if(reviews.get(i).getReviewNum()==Integer.parseInt(reviewNum)){
  					selectReview = reviews.get(i);
  			}
  		}
		return selectReview;
	}
	public void writeReview(Review review,String title, String content,String continent, String country,Matcher m){
		review.setContinentCode(continent);
		review.setNationCode(country);
		review.setReviewTitle(title);
		review.setReviewContent(content);
		String strImg = "";
		int repeat =0;
		while(m.find()){
			if(repeat>=1) strImg += ","+ m.group();
			else strImg = m.group();
			repeat++;
		}
		review.setReviewImg(strImg);
		
		
		
	}
	public void modifyReview(Review review){
		reviewDao.updateInfo(review);
	}
	
	public void eleminateReview(Review review){
		reviewDao.deleteReview(review);
	}
	
}
