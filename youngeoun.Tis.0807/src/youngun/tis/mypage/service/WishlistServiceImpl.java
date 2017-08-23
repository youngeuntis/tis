package youngun.tis.mypage.service;

import java.util.List;

import youngun.tis.mypage.dao.WishlistDao;
import youngun.tis.mypage.dao.WishlistDaoImpl;
import youngun.tis.mypage.domain.Wishlist;

public class WishlistServiceImpl implements WishlistService {
	private WishlistDao wishlistDao;
	
	public WishlistServiceImpl() {
		this.wishlistDao = new WishlistDaoImpl();
	}

	@Override
	public List<Wishlist> findWishlist(int memberNum) {
		return wishlistDao.selectWishlist(memberNum);	
	}
}
