package youngun.tis.mypage.domain;

public class Wishlist {
	private int memberNum;	//회원아이디
	private String WishInfoNum;	//찜목록 게시물번호
	private String WishTitle;	//찜목록 제목
	private String WishImg;		//찜목록 이미지
	
	
	public Wishlist() {}
	
	public Wishlist(int memberNum, String wishInfoNum, String wishTitle, String wishImg) {
		super();
		this.memberNum = memberNum;
		WishInfoNum = wishInfoNum;
		WishTitle = wishTitle;
		WishImg = wishImg;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getWishInfoNum() {
		return WishInfoNum;
	}
	public void setWishInfoNum(String wishInfoNum) {
		WishInfoNum = wishInfoNum;
	}
	public String getWishTitle() {
		return WishTitle;
	}
	public void setWishTitle(String wishTitle) {
		WishTitle = wishTitle;
	}
	public String getWishImg() {
		return WishImg;
	}
	public void setWishImg(String wishImg) {
		WishImg = wishImg;
	}
	
	@Override
	public String toString() {
		return "Wishlist [memberNum=" + memberNum + ", WishInfoNum=" + WishInfoNum + ", WishTitle=" + WishTitle
				+ ", WishImg=" + WishImg + "]";
	}

}