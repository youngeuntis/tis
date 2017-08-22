package youngun.tis.mypage.dao;

import java.util.List;

import youngun.tis.mypage.domain.Wishlist;

public interface WishlistDao {
	List<Wishlist> selectWishlist(int memberNum);
}
