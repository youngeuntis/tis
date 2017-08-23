package youngun.tis.travel.blog.domain;

import youngun.tis.user.login.domain.Login;

public class Wish {
	private int wishNum;
	private int infoNum;
	private int memberNum;
	
	
	
	public Wish(){}
	public Wish(Blog blog,Login login){
		this.infoNum = blog.getBlogNum();
		this.memberNum = login.getMemberNum(); 
	}

	public int getWishNum() {
		return wishNum;
	}

	public void setWishNum(int wishNum) {
		this.wishNum = wishNum;
	}

	public int getInfoNum() {
		return infoNum;
	}

	public void setInfoNum(int infoNum) {
		this.infoNum = infoNum;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}


	
	
}
