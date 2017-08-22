package youngun.tis.review.domain;

import java.sql.Date;

public class Review {
	int reviewNum;
	String memberNum;
	String continentCode;
	String nationCode;
	String areaCode;
	String reviewTitle;
	String reviewContent;
	Date reviewDate;
	String reviewImg;
	String reviewVideo;
	int reviewHits;
	
	public Review() {}
	
	
	public int getReviewNum() {
		return reviewNum;
	}
	
	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}
	
	public String getMemberNum() {
		return memberNum;
	}
	
	public void setMemberNum(String memberNum) {
		this.memberNum = memberNum;
	}
	
	public String getContinentCode() {
		return continentCode;
	}
	
	public void setContinentCode(String continentCode) {
		this.continentCode = continentCode;
	}
	
	public String getNationCode() {
		return nationCode;
	}
	
	public void setNationCode(String nationCode) {
		this.nationCode = nationCode;
	}
	
	public String getAreaCode() {
		return areaCode;
	}
	
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	
	public String getReviewTitle() {
		return reviewTitle;
	}
	
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	
	public String getReviewContent() {
		return reviewContent;
	}
	
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	
	public Date getReviewDate() {
		return reviewDate;
	}
	
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	
	public String getReviewImg() {
		return reviewImg;
	}
	
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	
	public String getReviewVideo() {
		return reviewVideo;
	}
	
	public void setReviewVideo(String reviewVideo) {
		this.reviewVideo = reviewVideo;
	}
	
	public int getreviewHits() {
		return reviewHits;
	}
	
	public void setreviewHits(int reviewHits) {
		this.reviewHits = reviewHits;
	}
	
	@Override
	public String toString() {
	
		return String.format("%d %s", reviewNum, reviewTitle);
	}
	
}
