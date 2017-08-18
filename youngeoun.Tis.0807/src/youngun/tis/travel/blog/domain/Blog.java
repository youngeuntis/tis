package youngun.tis.travel.blog.domain;

import java.sql.Date;

public class Blog {
	int blogNum;
	String memberNum;
	String blogTitle;
	String blogContent;
	String continentCode;
	String nationCode;
	String img;
	int hits;
	Date blogDate;
	String areaCode;
	String blogVideo;
	
	
	public Blog(){}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getBlogVideo() {
		return blogVideo;
	}

	public void setBlogVideo(String blogVideo) {
		this.blogVideo = blogVideo;
	}

	
	public Date getBlogDate() {
		return blogDate;
	}

	public void setBlogDate(Date blogDate) {
		this.blogDate = blogDate;
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getBlogNum() {
		return blogNum;
	}

	public void setBlogNum(int blogNum) {
		this.blogNum = blogNum;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}
	@Override
	public String toString() {
	
		return String.format("%d %s", blogNum, blogTitle);
	}
}
