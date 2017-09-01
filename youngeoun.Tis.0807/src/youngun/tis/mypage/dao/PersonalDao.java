package youngun.tis.mypage.dao;

import youngun.tis.mypage.domain.Personal;

public interface PersonalDao {
	public int updateEmail(Personal personal);
	Personal updatePw(Personal personal);
	Personal updatePhone(Personal personal);
}
