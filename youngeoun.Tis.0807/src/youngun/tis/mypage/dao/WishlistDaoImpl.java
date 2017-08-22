package youngun.tis.mypage.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.mypage.dao.mapper.WishlistMapper;
import youngun.tis.mypage.domain.Wishlist;

public class WishlistDaoImpl implements WishlistDao {
	private WishlistMapper wishlistMapper;
	
	
	public WishlistDaoImpl() {
		this.wishlistMapper = Configuration.getMapper(WishlistMapper.class);
	}


	@Override
	public List<Wishlist> selectWishlist(int memberNum) {
		return wishlistMapper.selectWishlist(memberNum);
	}

}
