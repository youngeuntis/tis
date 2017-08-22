package youngun.tis.mypage.service;

import java.util.List;

import youngun.tis.mypage.domain.Wishlist;

public interface WishlistService {
	List<Wishlist> findWishlist(int memberNum);
}
