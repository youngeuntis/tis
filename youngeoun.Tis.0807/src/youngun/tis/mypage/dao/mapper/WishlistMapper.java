package youngun.tis.mypage.dao.mapper;

import java.util.List;

import youngun.tis.mypage.domain.Wishlist;

public interface WishlistMapper {
	List<Wishlist> selectWishlist(int memberNum);
}
