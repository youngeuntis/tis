package youngun.tis.mypage.dao;

import youngun.tis.mypage.domain.Personal;

public interface PersonalDao {
	public int updateEmail(Personal personal);
	public int updatePw(Personal personal);
	public int updatePhone(Personal personal);
}
